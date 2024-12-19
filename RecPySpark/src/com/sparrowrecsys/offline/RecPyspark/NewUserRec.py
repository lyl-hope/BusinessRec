from flask import Flask, request, jsonify
import random
import numpy as np
from pyspark.mllib.feature import Word2Vec
from pyspark.sql import SparkSession
from sklearn.metrics.pairwise import cosine_similarity
import networkx as nx
from multiprocessing import Pool

app = Flask(__name__)

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

def compute_batch_cosine_similarity(new_user_embedding, old_user_embeddings):
    old_embeddings_matrix = np.array(list(old_user_embeddings.values()))
    similarities = cosine_similarity(new_user_embedding, old_embeddings_matrix)
    similarities_dict = dict(zip(old_user_embeddings.keys(), similarities[0]))
    return similarities_dict

def compute_similarity_for_chunk(chunk, new_user_embedding):
    similarities = {}
    for user_id, old_embedding in chunk:
        similarity = compute_cosine_similarity(new_user_embedding, old_embedding)
        similarities[user_id] = similarity
    return similarities

def parallel_find_most_similar_users(new_user_embedding, old_user_embeddings, top_n=5):
    chunk_size = len(old_user_embeddings) // 4
    chunks = [list(old_user_embeddings.items())[i:i + chunk_size] for i in range(0, len(old_user_embeddings), chunk_size)]
    with Pool(processes=4) as pool:
        results = pool.starmap(compute_similarity_for_chunk, [(chunk, new_user_embedding) for chunk in chunks])
    all_similarities = {}
    for result in results:
        all_similarities.update(result)
    most_similar_users = sorted(all_similarities.items(), key=lambda x: x[1], reverse=True)[:top_n]
    return most_similar_users

def find_most_similar_users(new_user_embedding, old_user_embeddings, top_n=5, method="batch"):
    new_user_embedding = np.array(new_user_embedding).reshape(1, -1)
    if method == "batch":
        similarities_dict = compute_batch_cosine_similarity(new_user_embedding, old_user_embeddings)
    elif method == "parallel":
        return parallel_find_most_similar_users(new_user_embedding, old_user_embeddings, top_n)
    else:
        raise ValueError("Method must be either 'batch' or 'parallel'")
    most_similar_users = sorted(similarities_dict.items(), key=lambda x: x[1], reverse=True)[:top_n]
    return most_similar_users

@app.route('/recommend', methods=['POST'])
def recommend():
    data = request.json
    user_id = data['user_id']
    clicked_items = data['clicked_items']

    user_embeddings_file = 'src/main/resources/webroot/modeldata/userEmb.csv'
    old_user_embeddings = load_user_embeddings(user_embeddings_file)

    graph = create_graph(user_id, clicked_items)
    walk_length = 10
    num_walks = 5
    walks = random_walk(graph, walk_length, num_walks, user_id)

    model = train_graph_embeddings(walks)
    new_user_embedding = model.getVectors()[user_id]

    most_similar_users = find_most_similar_users(new_user_embedding, old_user_embeddings, top_n=1)
    return jsonify(most_similar_users)

if __name__ == '__main__':
    spark = SparkSession.builder \
        .config("spark.driver.bindAddress", "127.0.0.1") \
        .config("spark.driver.host", "127.0.0.1") \
        .getOrCreate()
    app.run(host='0.0.0.0', port=5000)