import tensorflow as tf

# 训练样本路径，请更改为你的本地路径
training_samples_file_path = tf.keras.utils.get_file("trainingSamples.csv",
                                                     "file:///Users/zhewang/Workspace/SparrowRecSys/src/main"
                                                     "/resources/webroot/sampledata/trainingSamples.csv")
# 测试样本路径，请更改为你的本地路径
test_samples_file_path = tf.keras.utils.get_file("testSamples.csv",
                                                 "file:///Users/zhewang/Workspace/SparrowRecSys/src/main"
                                                 "/resources/webroot/sampledata/testSamples.csv")


# 加载样本为 tf 数据集
def get_dataset(file_path):
    dataset = tf.data.experimental.make_csv_dataset(
        file_path,
        batch_size=12,  # 每个批次的样本数量
        label_name='label',  # 标签列的名称
        na_value="0",  # 缺失值填充为0
        num_epochs=1,  # 迭代次数
        ignore_errors=True)  # 忽略错误
    return dataset


# 分割为测试数据集和训练数据集
train_dataset = get_dataset(training_samples_file_path)
test_dataset = get_dataset(test_samples_file_path)

# 类型特征词汇表
genre_vocab = ['Film-Noir', 'Action', 'Adventure', 'Horror', 'Romance', 'War', 'Comedy', 'Western', 'Documentary',
               'Sci-Fi', 'Drama', 'Thriller',
               'Crime', 'Fantasy', 'Animation', 'IMAX', 'Mystery', 'Children', 'Musical']

GENRE_FEATURES = {
    'userGenre1': genre_vocab,
    'userGenre2': genre_vocab,
    'userGenre3': genre_vocab,
    'userGenre4': genre_vocab,
    'userGenre5': genre_vocab,
    'movieGenre1': genre_vocab,
    'movieGenre2': genre_vocab,
    'movieGenre3': genre_vocab
}

# 所有类别特征
categorical_columns = []
for feature, vocab in GENRE_FEATURES.items():
    # 创建类别特征列
    cat_col = tf.feature_column.categorical_column_with_vocabulary_list(
        key=feature, vocabulary_list=vocab)
    # 创建嵌入特征列
    emb_col = tf.feature_column.embedding_column(cat_col, 10)
    categorical_columns.append(emb_col)

# 电影ID嵌入特征
movie_col = tf.feature_column.categorical_column_with_identity(key='productId', num_buckets=1001)
movie_emb_col = tf.feature_column.embedding_column(movie_col, 10)
categorical_columns.append(movie_emb_col)

# 用户ID嵌入特征
user_col = tf.feature_column.categorical_column_with_identity(key='userId', num_buckets=30001)
user_emb_col = tf.feature_column.embedding_column(user_col, 10)
categorical_columns.append(user_emb_col)

# 所有数值特征
numerical_columns = [tf.feature_column.numeric_column('releaseYear'),
                     tf.feature_column.numeric_column('movieRatingCount'),
                     tf.feature_column.numeric_column('movieAvgRating'),
                     tf.feature_column.numeric_column('movieRatingStddev'),
                     tf.feature_column.numeric_column('userRatingCount'),
                     tf.feature_column.numeric_column('userAvgRating'),
                     tf.feature_column.numeric_column('userRatingStddev')]

# 嵌入 + MLP 模型架构
model = tf.keras.Sequential([
    tf.keras.layers.DenseFeatures(numerical_columns + categorical_columns),  # 特征层
    tf.keras.layers.Dense(128, activation='relu'),  # 全连接层，128个神经元，ReLU激活函数
    tf.keras.layers.Dense(128, activation='relu'),  # 全连接层，128个神经元，ReLU激活函数
    tf.keras.layers.Dense(1, activation='sigmoid'),  # 输出层，1个神经元，Sigmoid激活函数
])

# 编译模型，设置损失函数、优化器和评估指标
model.compile(
    loss='binary_crossentropy',  # 二元交叉熵损失函数
    optimizer='adam',  # Adam优化器
    metrics=['accuracy', tf.keras.metrics.AUC(curve='ROC'), tf.keras.metrics.AUC(curve='PR')])  # 评估指标：准确率、ROC AUC、PR AUC

# 训练模型
model.fit(train_dataset, epochs=5)

# 评估模型
test_loss, test_accuracy, test_roc_auc, test_pr_auc = model.evaluate(test_dataset)
print('\n\nTest Loss {}, Test Accuracy {}, Test ROC AUC {}, Test PR AUC {}'.format(test_loss, test_accuracy,
                                                                                   test_roc_auc, test_pr_auc))

# 打印一些预测结果
predictions = model.predict(test_dataset)
for prediction, goodRating in zip(predictions[:12], list(test_dataset)[0][1][:12]):
    print("Predicted good rating: {:.2%}".format(prediction[0]),
          " | Actual rating label: ",
          ("Good Rating" if bool(goodRating) else "Bad Rating"))