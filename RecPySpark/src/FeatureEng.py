from pyspark import SparkContext, SparkConf
from pyspark.sql import SparkSession
import pyspark.sql.functions as F
from pyspark.sql.types import *
from collections import defaultdict
import pyspark.sql as sql
NUMBER_PRECISION = 2  # 数字精度

# 给评分数据添加标签
def addSampleLabel(ratingSamples):
    # 显示前5条评分数据
    ratingSamples.show(5, truncate=False)
    # 打印评分数据的Schema
    ratingSamples.printSchema()
    # 计算样本数量
    sampleCount = ratingSamples.count()
    # 计算每个评分的数量和百分比
    ratingSamples.groupBy('score').count().orderBy('score').withColumn('percentage',
                                                                         F.col('count') / sampleCount).show()
    # 添加标签列，评分>=3.5为1，否则为0
    ratingSamples = ratingSamples.withColumn('label', F.when(F.col('score') >= 3.5, 1).otherwise(0))
    return ratingSamples

# 提取产品特征
def addProductFeatures(productSamples, ratingSamplesWithLabel):
    samplesWithProducts1 = ratingSamplesWithLabel.join(productSamples, on=['productId'], how='left')
    # 提取产品的类别
    samplesWithProducts2 = samplesWithProducts1.withColumn('productCategory1', F.split(F.col('categories'), "\\|")[0]) \
                                               .withColumn('productCategory2', F.split(F.col('categories'), "\\|")[1]) \
                                               .withColumn('productCategory3', F.split(F.col('categories'), "\\|")[2])
    # 提供评分统计特征
    productRatingFeatures = samplesWithProducts2.groupBy('productId').agg(F.count(F.lit(1)).alias('productRatingCount'),
                                                                          F.format_number(F.avg(F.col('score')), NUMBER_PRECISION).alias('productAvgRating'),
                                                                          F.stddev(F.col('score')).alias('productRatingStddev')).fillna(0) \
        .withColumn('productRatingStddev', F.format_number(F.col('productRatingStddev'), NUMBER_PRECISION))
    
    samplesWithProducts3 = samplesWithProducts2.join(productRatingFeatures, on=['productId'], how='left')
    samplesWithProducts3.printSchema()  # 打印Schema
    samplesWithProducts3.show(5, truncate=False)  # 显示前5条数据
    return samplesWithProducts3

# 提取用户的兴趣分类
def extractCategories(categories_list):
    categories_dict = defaultdict(int)
    for categories in categories_list:
        for category in categories.split('|'):
            categories_dict[category] += 1
    sortedCategories = sorted(categories_dict.items(), key=lambda x: x[1], reverse=True)
    return [x[0] for x in sortedCategories]

# 提取用户的兴趣标签
def extractTags(tags_list):
    tags_dict = defaultdict(int)
    for tags in tags_list:
        for tag in tags.split('|'):
            tags_dict[tag] += 1
    sortedTags = sorted(tags_dict.items(), key=lambda x: x[1], reverse=True)
    return [x[0] for x in sortedTags]

# 添加用户特征
def addUserFeatures(samplesWithProductFeatures):
    extractCategoriesUdf = F.udf(extractCategories, ArrayType(StringType()))
    extractTagsUdf = F.udf(extractTags, ArrayType(StringType()))
    
    samplesWithUserFeatures = samplesWithProductFeatures \
        .withColumn('userPositiveHistory', 
                    F.collect_list(F.when(F.col('label') == 1, F.col('productId')).otherwise(F.lit(None))).over(
                        sql.Window.partitionBy("userId").orderBy(F.col("timestamp")).rowsBetween(-100, -1))) \
        .withColumn("userPositiveHistory", F.reverse(F.col("userPositiveHistory"))) \
        .withColumn('userRatedProduct1', F.col('userPositiveHistory')[0]) \
        .withColumn('userRatedProduct2', F.col('userPositiveHistory')[1]) \
        .withColumn('userRatedProduct3', F.col('userPositiveHistory')[2]) \
        .withColumn('userRatingCount', 
                    F.count(F.lit(1)).over(sql.Window.partitionBy('userId').orderBy('timestamp').rowsBetween(-100, -1))) \
        .withColumn('userAvgRating', F.format_number(
        F.avg(F.col("score")).over(sql.Window.partitionBy('userId').orderBy('timestamp').rowsBetween(-100, -1)),
        NUMBER_PRECISION)) \
        .withColumn("userRatingStddev", F.stddev(F.col("score")).over(
        sql.Window.partitionBy('userId').orderBy('timestamp').rowsBetween(-100, -1))) \
        .withColumn("userCategories", extractCategoriesUdf(
        F.collect_list(F.when(F.col('label') == 1, F.col('categories')).otherwise(F.lit(None))).over(
            sql.Window.partitionBy('userId').orderBy('timestamp').rowsBetween(-100, -1)))) \
        .withColumn("userTags", extractTagsUdf(
        F.collect_list(F.when(F.col('label') == 1, F.col('tags')).otherwise(F.lit(None))).over(
            sql.Window.partitionBy('userId').orderBy('timestamp').rowsBetween(-100, -1)))) \
        .withColumn("userRatingStddev", F.format_number(F.col("userRatingStddev"), NUMBER_PRECISION)) \
        .drop("categories", "userPositiveHistory") \
        .filter(F.col("userRatingCount") > 1) \
        .withColumn("userCategory1", F.col("userCategories")[0]) \
        .withColumn("userCategory2", F.col("userCategories")[1]) \
        .withColumn("userCategory3", F.col("userCategories")[2]) \
        .withColumn("userTag1", F.col("userTags")[0]) \
        .withColumn("userTag2", F.col("userTags")[1]) \
        .withColumn("userTag3", F.col("userTags")[2]) \
        .drop("userCategories", "userTags", "categoriesId", "amazonId", "imageUrl")
    
    samplesWithUserFeatures.printSchema()  # 打印Schema
    samplesWithUserFeatures.show(10)  # 显示前10条数据
    return samplesWithUserFeatures

# 保存训练集和测试集
def splitAndSaveTrainingTestSamples(samplesWithUserFeatures, file_path):
    # 抽样10%的数据
    smallSamples = samplesWithUserFeatures.sample(0.1)
    # 按8:2分割训练集和测试集
    training, test = smallSamples.randomSplit((0.8, 0.2))
    trainingSavePath = file_path + '/trainingSamples'
    testSavePath = file_path + '/testSamples'
    # 保存训练集
    training.repartition(1).write.option("header", "true").mode('overwrite') \
        .csv(trainingSavePath)
    # 保存测试集
    test.repartition(1).write.option("header", "true").mode('overwrite') \
        .csv(testSavePath)

if __name__ == '__main__':
    # 配置Spark
    conf = SparkConf().setAppName('featureEngineering').setMaster('local')
    spark = SparkSession.builder \
    .config("spark.driver.bindAddress", "127.0.0.1") \
    .config("spark.driver.host", "127.0.0.1") \
    .getOrCreate()

    file_path = 'file:///home/lyl/WorkSpace/src/'
    productResourcesPath = file_path + "/products.csv"
    ratingResourcesPath = file_path + "/ratings.csv"

    # 读取产品数据，使用^分隔符
    productSamples = spark.read.format('csv').option('header', 'false').option('delimiter', '^').load(productResourcesPath)
    # 读取评分数据
    ratingSamples = spark.read.format('csv').option('header', 'false').load(ratingResourcesPath)
    
    # 设置列名
    productSamples = productSamples.withColumnRenamed('_c0', 'productid') \
                                   .withColumnRenamed('_c1', 'name') \
                                   .withColumnRenamed('_c2', 'categoriesId') \
                                   .withColumnRenamed('_c3', 'amazonId') \
                                   .withColumnRenamed('_c4', 'imageUrl') \
                                   .withColumnRenamed('_c5', 'categories') \
                                   .withColumnRenamed('_c6', 'tags')
    
    ratingSamples = ratingSamples.withColumnRenamed('_c0', 'userId') \
                                 .withColumnRenamed('_c1', 'productId') \
                                 .withColumnRenamed('_c2', 'score') \
                                 .withColumnRenamed('_c3', 'timestamp')
    
    # 添加标签
    ratingSamplesWithLabel = addSampleLabel(ratingSamples)
    ratingSamplesWithLabel.show(10, truncate=False)  # 显示前10条带标签的评分数据

    # 添加产品特征
    samplesWithProductFeatures = addProductFeatures(productSamples, ratingSamplesWithLabel)
    
    # 添加用户特征
    samplesWithUserFeatures = addUserFeatures(samplesWithProductFeatures)
    
    # 保存样本为CSV格式
    splitAndSaveTrainingTestSamples(samplesWithUserFeatures, file_path + "/webroot/sampledata")
