import os
from pyspark import SparkConf
from pyspark.sql import SparkSession
from pyspark.sql.functions import *
from pyspark.sql.types import *
from pyspark.ml.feature import BucketedRandomProjectionLSH
from pyspark.mllib.feature import Word2Vec
from pyspark.ml.linalg import Vectors
import random
from collections import defaultdict
import numpy as np
from pyspark.sql import functions as F


class UdfFunction:
    @staticmethod
    def sortF(product_list, timestamp_list):
        """
        Sort by time and return the corresponding product sequence.
        Example:
            Input: product_list: [1, 2, 3]
                   timestamp_list: [1112486027, 1212546032, 1012486033]
            Return: [3, 1, 2]
        """
        pairs = list(zip(product_list, timestamp_list))
        pairs = sorted(pairs, key=lambda x: x[1])  # Sort by timestamp
        return [x[0] for x in pairs]


def processItemSequence(spark, rawSampleDataPath):
    # Read the CSV file without header
    ratingSamples = spark.read.format("csv").option("header", "false").load(rawSampleDataPath)
    # Assign column names
    ratingSamples = ratingSamples.toDF("userId", "productId", "score", "timestamp")

    # Define a UDF for sorting
    sortUdf = udf(UdfFunction.sortF, ArrayType(StringType()))

    # Filter records with score >= 3.5 and group by user
    userSeq = ratingSamples \
        .where(F.col("score") >= 3.5) \
        .groupBy("userId") \
        .agg(sortUdf(F.collect_list("productId"), F.collect_list("timestamp")).alias('productIds')) \
        .withColumn("productIdStr", array_join(F.col("productIds"), " "))

    # Return RDD of product sequences
    return userSeq.select('productIdStr').rdd.map(lambda x: x[0].split(' '))


def embeddingLSH(spark, productEmbMap):
    productEmbSeq = [
        (key, Vectors.dense([np.float64(embedding) for embedding in embedding_list]))
        for key, embedding_list in productEmbMap.items()
    ]
    productEmbDF = spark.createDataFrame(productEmbSeq).toDF("productId", "emb")

    bucketProjectionLSH = BucketedRandomProjectionLSH(inputCol="emb", outputCol="bucketId", bucketLength=0.1,
                                                      numHashTables=3)
    bucketModel = bucketProjectionLSH.fit(productEmbDF)
    embBucketResult = bucketModel.transform(productEmbDF)
    print("productId, emb, bucketId schema:")
    embBucketResult.printSchema()
    print("productId, emb, bucketId data result:")
    embBucketResult.show(10, truncate=False)


def trainItem2vec(spark, samples, embLength, embOutputPath):
    word2vec = Word2Vec().setVectorSize(embLength).setWindowSize(5).setNumIterations(10)
    model = word2vec.fit(samples)
    with open(embOutputPath, 'w') as f:
        for product_id, vector in model.getVectors().items():
            vector_str = " ".join(map(str, vector))
            f.write(f"{product_id}:{vector_str}\n")
    embeddingLSH(spark, model.getVectors())
    return model


def generate_pair(x):
    """
    生成电影对
    例如：
    观看序列:['858', '50', '593', '457']
    返回:[['858', '50'],['50', '593'],['593', '457']]
    """
    pairSeq = []
    previousItem = ''
    for item in x:
        if not previousItem:
            previousItem = item
        else:
            pairSeq.append((previousItem, item))
            previousItem = item
    return pairSeq

def generateTransitionMatrix(samples):
    pairSamples = samples.flatMap(lambda x: generate_pair(x))
    pairCountMap = pairSamples.countByValue()
    pairTotalCount = 0
    transitionCountMatrix = defaultdict(dict)
    itemCountMap = defaultdict(int)
    for key, cnt in pairCountMap.items():
        key1, key2 = key
        transitionCountMatrix[key1][key2] = cnt
        itemCountMap[key1] += cnt
        pairTotalCount += cnt
    transitionMatrix = defaultdict(dict)
    itemDistribution = defaultdict(dict)
    for key1, transitionMap in transitionCountMatrix.items():
        for key2, cnt in transitionMap.items():
            transitionMatrix[key1][key2] = transitionCountMatrix[key1][key2] / itemCountMap[key1]
    for itemid, cnt in itemCountMap.items():
        itemDistribution[itemid] = cnt / pairTotalCount
    return transitionMatrix, itemDistribution


def randomWalk(transitionMatrix, itemDistribution, sampleCount, sampleLength):
    def oneRandomWalk():
        sample = []
    # 选择第一个元素
        randomDouble = random.random()
        firstItem = ""
        accumulateProb = 0.0
        for item, prob in itemDistribution.items():
            accumulateProb += prob
            if accumulateProb >= randomDouble:
                firstItem = item
                break
        sample.append(firstItem)
        curElement = firstItem
        i = 1
        while i < sampleLength:
            if (curElement not in itemDistribution) or (curElement not in transitionMatrix):
                break
            probDistribution = transitionMatrix[curElement]
            randomDouble = random.random()
            accumulateProb = 0.0
            for item, prob in probDistribution.items():
                accumulateProb += prob
                if accumulateProb >= randomDouble:
                    curElement = item
                    break
            sample.append(curElement)
            i += 1
        return sample

    return [oneRandomWalk() for _ in range(sampleCount)]


def graphEmb(spark, samples, embLength, embOutputFilename):
    transitionMatrix, itemDistribution = generateTransitionMatrix(samples)
    newSamples = randomWalk(transitionMatrix, itemDistribution, 20000, 10)
    rddSamples = spark.sparkContext.parallelize(newSamples)
    trainItem2vec(spark, rddSamples, embLength, embOutputFilename)


def generateUserEmb(spark, rawSampleDataPath, model, embLength, embOutputPath):
    ratingSamples = spark.read.format("csv").option("header", "false").load(rawSampleDataPath)
    ratingSamples = ratingSamples.toDF("userId", "productId", "score", "timestamp")

    vectors = [(key, list(value)) for key, value in model.getVectors().items()]
    schema = StructType([
        StructField("productId", StringType(), False),
        StructField("emb", ArrayType(FloatType()), False)
    ])
    vectorDF = spark.createDataFrame(vectors, schema=schema)
    userEmb = ratingSamples.join(vectorDF, on="productId", how="inner") \
        .select("userId", "emb") \
        .rdd.reduceByKey(lambda a, b: [a[i] + b[i] for i in range(len(a))]) \
        .collect()

    with open(embOutputPath, 'w') as f:
        for userId, emb in userEmb:
            emb_str = " ".join(map(str, emb))
            f.write(f"{userId}:{emb_str}\n")


if __name__ == '__main__':
    conf = SparkConf().setAppName('RecommendationModel').setMaster('local')
    spark = SparkSession.builder \
    .config("spark.driver.bindAddress", "127.0.0.1") \
    .config("spark.driver.host", "127.0.0.1") \
    .getOrCreate()

    file_path = 'file:///home/lyl/WorkSpace/src/'
    rawSampleDataPath = file_path + "/ratings.csv"
    embLength = 10

    samples = processItemSequence(spark, rawSampleDataPath)

    model = trainItem2vec(spark, samples, embLength, file_path[7:] + "modeldata/item2vecEmb.csv")
    graphEmb(spark, samples, embLength, file_path[7:] + "modeldata/graphEmb.csv")
    generateUserEmb(spark, rawSampleDataPath, model, embLength, file_path[7:] + "modeldata/userEmb.csv")
