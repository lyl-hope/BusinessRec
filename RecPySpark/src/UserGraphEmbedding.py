from pyspark.sql import SparkSession
from pyspark.sql.functions import col, collect_list
from pyspark.mllib.feature import Word2Vec
import random
import os

# 创建 SparkSession
spark = SparkSession.builder \
    .config("spark.driver.bindAddress", "127.0.0.1") \
    .config("spark.driver.host", "127.0.0.1") \
    .getOrCreate()

# 加载数据
ratings_file = "file:///home/lyl/WorkSpace/src/ratings.csv"
products_file = "file:///home/lyl/WorkSpace/src/products.csv"

# 加载 ratings.csv（以","分割）
ratings_df = spark.read.csv(ratings_file, header=False, inferSchema=True).toDF("userId", "productId", "score", "timestamp")

# 加载 products.csv（以"^"分割）
products_df = spark.read.csv(products_file, header=False, inferSchema=True, sep="^").toDF(
    "productId", "title", "categoriesId", "amazonId", "imageUrl", "categories", "tags")

# 构建用户-物品图
user_item_edges = ratings_df.select("userId", "productId")

# 生成转移矩阵的邻接表
def generate_adjacency_list(edges_df):
    adjacency_list = edges_df.groupBy("userId").agg(collect_list("productId").alias("neighbors"))
    return adjacency_list

adjacency_list = generate_adjacency_list(user_item_edges)

# 随机游走函数
def random_walk(adjacency_list, walk_length, num_walks):
    walks = []
    for row in adjacency_list.collect():
        user = row["userId"]
        neighbors = row["neighbors"]
        for _ in range(num_walks):
            walk = [str(user)]  # 用户ID作为字符串
            current = user
            for _ in range(walk_length - 1):
                if current in adjacency_list.columns:
                    current_neighbors = adjacency_list.filter(col("userId") == current).select("neighbors").first()[0]
                    if current_neighbors:
                        current = random.choice(current_neighbors)
                        walk.append(str(current))  # 物品ID作为字符串
            walks.append(walk)
    return walks

# 参数设置
walk_length = 10
num_walks = 5

# 执行随机游走
walks = random_walk(adjacency_list, walk_length, num_walks)

# 将游走结果转换为 RDD
walks_rdd = spark.sparkContext.parallelize(walks)

# 定义训练函数
def trainUser2Vec(spark, samples, embLength, embOutputPath):
    word2vec = Word2Vec().setVectorSize(embLength).setWindowSize(5).setNumIterations(10)
    model = word2vec.fit(samples)
    
    # 获取嵌入向量
    vectors = model.getVectors()
    
    # 打印一些示例
    synonyms = model.findSynonyms("158", 20)
    for synonym, cosineSimilarity in synonyms:
        print(synonym, cosineSimilarity)
    
    # 确保输出目录存在
    embOutputDir = '/'.join(embOutputPath.split('/')[:-1])
    if not os.path.exists(embOutputDir):
        os.makedirs(embOutputDir)
    #print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
    # 保存嵌入向量到文件
    cnt=0
    with open(embOutputPath, 'w') as f:
        for product_id in vectors:
            vector = " ".join([str(emb) for emb in vectors[product_id]])
            f.write(product_id + ":" + vector + "\n")
            cnt=cnt+1
            print(cnt)
    #print("BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB")
    # 可选：你可以调用额外的函数，比如 embeddingLSH(spark, vectors)，这里不包含
    return model

# 设置嵌入维度和输出路径
embLength = 10
embOutputPath = "/home/lyl/WorkSpace/src/modeldata/user_embeddings.csv"
# 获取不同的用户数量
#unique_users_count = ratings_df.select("userId").distinct().count()

# 输出不同用户的数量
#print(f"Number of unique users: {unique_users_count}")

# 调用训练函数
model = trainUser2Vec(spark, walks_rdd, embLength, embOutputPath)

# 结束 Spark 会话
spark.stop()
