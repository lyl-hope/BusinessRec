import random
import numpy as np
from pyspark.mllib.feature import Word2Vec
from pyspark.sql import SparkSession
from sklearn.metrics.pairwise import cosine_similarity

# 1. 加载随机游走生成的旧用户嵌入
def load_user_embeddings(embedding_file):
    embeddings = {}
    with open(embedding_file, 'r') as f:
        for line in f:
            parts = line.strip().split(":")
            user_id = parts[0]
            vector = np.array([float(x) for x in parts[1].split()])
            embeddings[user_id] = vector
    return embeddings

# 2. 创建新用户的图
def create_graph(new_user, clicked_items):
    import networkx as nx
    G = nx.Graph()
    # 新用户与其点击物品之间的边
    for item in clicked_items:
        G.add_edge(new_user, item)
    # 物品之间的连接，假设直接连接
    for i in range(len(clicked_items)):
        for j in range(i + 1, len(clicked_items)):
            G.add_edge(clicked_items[i], clicked_items[j])
    return G

# 3. 随机游走函数，生成新用户的游走序列
def random_walk(graph, walk_length, num_walks, start_node):
    walks = []
    for _ in range(num_walks):
        walk = [start_node]
        current_node = start_node
        for _ in range(walk_length - 1):
            neighbors = list(graph.neighbors(current_node))
            if neighbors:
                current_node = random.choice(neighbors)
                walk.append(current_node)
        walks.append(walk)
    return walks

# 4. 训练新用户的图嵌入
def train_graph_embeddings(walks, vector_size=10):
    # 训练 Word2Vec 模型
    word2vec = Word2Vec()
    word2vec.setVectorSize(vector_size)
    word2vec.setMinCount(0)
    model = word2vec.fit(spark.sparkContext.parallelize(walks))
    return model

# 5. 计算余弦相似度
def compute_cosine_similarity(embedding1, embedding2):
    return cosine_similarity([embedding1], [embedding2])[0][0]

# 6. 找出与新用户最相关的几个旧用户
from multiprocessing import Pool  # 用于多进程加速

def compute_cosine_similarity(v1, v2):
    """
    计算两个向量之间的余弦相似度
    """
    return cosine_similarity(v1.reshape(1, -1), v2.reshape(1, -1))[0][0]

def compute_batch_cosine_similarity(new_user_embedding, old_user_embeddings):
    """
    批量计算新用户与所有旧用户之间的余弦相似度
    """
    # 将 old_user_embeddings 转换为 numpy 数组
    old_embeddings_matrix = np.array(list(old_user_embeddings.values()))
    
    # 使用 sklearn 的 cosine_similarity 批量计算新用户嵌入与所有旧用户嵌入的余弦相似度
    similarities = cosine_similarity(new_user_embedding, old_embeddings_matrix)
    
    # 将结果转换为字典形式（user_id -> similarity）
    similarities_dict = dict(zip(old_user_embeddings.keys(), similarities[0]))
    
    return similarities_dict
def compute_similarity_for_chunk(chunk,new_user_embedding):
        similarities = {}
        for user_id, old_embedding in chunk:
            similarity = compute_cosine_similarity(new_user_embedding, old_embedding)
            similarities[user_id] = similarity
        return similarities
def parallel_find_most_similar_users(new_user_embedding, old_user_embeddings, top_n=5):
    """
    使用多进程加速计算最相似的用户
    """
    

    # 将 old_user_embeddings 分成几个块进行并行计算
    chunk_size = len(old_user_embeddings) // 4  # 将数据分成 4 个块
    chunks = [list(old_user_embeddings.items())[i:i + chunk_size] for i in range(0, len(old_user_embeddings), chunk_size)]

    # 使用多进程计算
    with Pool(processes=4) as pool:
        results = pool.starmap(compute_similarity_for_chunk, [(chunk, new_user_embedding) for chunk in chunks])

    # 合并结果
    all_similarities = {}
    for result in results:
        all_similarities.update(result)

    # 找到最相似的几个用户
    most_similar_users = sorted(all_similarities.items(), key=lambda x: x[1], reverse=True)[:top_n]
    return most_similar_users

def find_most_similar_users(new_user_embedding, old_user_embeddings, top_n=5, method="batch"):
    """
    计算新用户与旧用户之间最相似的用户
    
    Parameters:
    - new_user_embedding: 新用户的嵌入向量 (numpy array 或者列表)
    - old_user_embeddings: 旧用户的嵌入向量字典 {user_id: embedding}
    - top_n: 获取最相似的 top_n 个用户
    - method: 使用的计算方法，支持 "batch" 或 "parallel"（默认是 "batch"）
    
    Returns:
    - 返回最相似的 top_n 个用户
    """
    new_user_embedding=list(new_user_embedding)
    new_user_embedding=np.array(new_user_embedding)
    # 确保 new_user_embedding 是一个二维数组
    new_user_embedding = new_user_embedding.reshape(1, -1)
    # 选择计算方法
    if method == "batch":
        similarities_dict = compute_batch_cosine_similarity(new_user_embedding, old_user_embeddings)
    elif method == "parallel":
        return parallel_find_most_similar_users(new_user_embedding, old_user_embeddings, top_n)
    else:
        raise ValueError("Method must be either 'batch' or 'parallel'")
    
    # 找到最相似的 top_n 个用户
    most_similar_users = sorted(similarities_dict.items(), key=lambda x: x[1], reverse=True)[:top_n]
    return most_similar_users
# def find_most_similar_users(new_user_embedding, old_user_embeddings, top_n=5):
#     similarities = {}
#     for user_id, old_embedding in old_user_embeddings.items():
#         similarity = compute_cosine_similarity(new_user_embedding, old_embedding)
#         similarities[user_id] = similarity
    
#     # 找到最相关的几个旧用户
#     most_similar_users = sorted(similarities.items(), key=lambda x: x[1], reverse=True)[:top_n]
#     return most_similar_users

# 7. 主程序
def main():
    # 旧用户嵌入加载（假设已生成并存储在user_embeddings.csv中）
    user_embeddings_file = '/home/lyl/WorkSpace/src/modeldata/user_embeddings.csv'
    old_user_embeddings = load_user_embeddings(user_embeddings_file)

    # 新用户点击的物品
    new_user = 'new_user'
    clicked_items = ['13316', '57272','119166','186429']  # 新用户点击的物品

    # 创建新用户的图
    graph = create_graph(new_user, clicked_items)

    # 执行随机游走
    walk_length = 10
    num_walks = 5
    walks = random_walk(graph, walk_length, num_walks, new_user)

    # 训练图嵌入模型
    model = train_graph_embeddings(walks)

    # 获取新用户的嵌入
    new_user_embedding = model.getVectors()[new_user]
    print(f"New user embedding: {new_user_embedding}")

    # 找到与新用户最相关的旧用户（假设返回前5个最相关的旧用户）
    most_similar_users = find_most_similar_users(new_user_embedding, old_user_embeddings, top_n=5)
    print(f"Most similar users to new user: {most_similar_users}")

if __name__ == '__main__':
    # 初始化 SparkSession
    spark = SparkSession.builder \
    .config("spark.driver.bindAddress", "127.0.0.1") \
    .config("spark.driver.host", "127.0.0.1") \
    .getOrCreate()
    main()
