import tensorflow as tf

"""
与 DeepFM 的区别：
    1. 在处理一阶特征和二阶特征时，将类别特征与密集特征分开处理
    2. 修改原始 FM 部分，使用完全交叉的 FM 部分
"""

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
        batch_size=12,
        label_name='label',
        na_value="0",
        num_epochs=1,
        ignore_errors=True)
    return dataset

# 分割为测试数据集和训练数据集
train_dataset = get_dataset(training_samples_file_path)
test_dataset = get_dataset(test_samples_file_path)

# 定义 Keras 模型的输入
inputs = {
    'movieAvgRating': tf.keras.layers.Input(name='movieAvgRating', shape=(), dtype='float32'),
    'movieRatingStddev': tf.keras.layers.Input(name='movieRatingStddev', shape=(), dtype='float32'),
    'movieRatingCount': tf.keras.layers.Input(name='movieRatingCount', shape=(), dtype='int32'),
    'userAvgRating': tf.keras.layers.Input(name='userAvgRating', shape=(), dtype='float32'),
    'userRatingStddev': tf.keras.layers.Input(name='userRatingStddev', shape=(), dtype='float32'),
    'userRatingCount': tf.keras.layers.Input(name='userRatingCount', shape=(), dtype='int32'),
    'releaseYear': tf.keras.layers.Input(name='releaseYear', shape=(), dtype='int32'),

    'productId': tf.keras.layers.Input(name='productId', shape=(), dtype='int32'),
    'userId': tf.keras.layers.Input(name='userId', shape=(), dtype='int32'),
    'userRatedMovie1': tf.keras.layers.Input(name='userRatedMovie1', shape=(), dtype='int32'),

    'userGenre1': tf.keras.layers.Input(name='userGenre1', shape=(), dtype='string'),
    'userGenre2': tf.keras.layers.Input(name='userGenre2', shape=(), dtype='string'),
    'userGenre3': tf.keras.layers.Input(name='userGenre3', shape=(), dtype='string'),
    'userGenre4': tf.keras.layers.Input(name='userGenre4', shape=(), dtype='string'),
    'userGenre5': tf.keras.layers.Input(name='userGenre5', shape=(), dtype='string'),
    'movieGenre1': tf.keras.layers.Input(name='movieGenre1', shape=(), dtype='string'),
    'movieGenre2': tf.keras.layers.Input(name='movieGenre2', shape=(), dtype='string'),
    'movieGenre3': tf.keras.layers.Input(name='movieGenre3', shape=(), dtype='string'),
}

# 电影ID嵌入特征
movie_col = tf.feature_column.categorical_column_with_identity(key='productId', num_buckets=1001)
movie_emb_col = tf.feature_column.embedding_column(movie_col, 10)
movie_ind_col = tf.feature_column.indicator_column(movie_col)  # 电影ID指示列

# 用户ID嵌入特征
user_col = tf.feature_column.categorical_column_with_identity(key='userId', num_buckets=30001)
user_emb_col = tf.feature_column.embedding_column(user_col, 10)
user_ind_col = tf.feature_column.indicator_column(user_col)  # 用户ID指示列

# 类型特征词汇表
genre_vocab = ['Film-Noir', 'Action', 'Adventure', 'Horror', 'Romance', 'War', 'Comedy', 'Western', 'Documentary',
               'Sci-Fi', 'Drama', 'Thriller',
               'Crime', 'Fantasy', 'Animation', 'IMAX', 'Mystery', 'Children', 'Musical']

# 用户类型嵌入特征
user_genre_col = tf.feature_column.categorical_column_with_vocabulary_list(key="userGenre1",
                                                                           vocabulary_list=genre_vocab)
user_genre_ind_col = tf.feature_column.indicator_column(user_genre_col)
user_genre_emb_col = tf.feature_column.embedding_column(user_genre_col, 10)

# 物品类型嵌入特征
item_genre_col = tf.feature_column.categorical_column_with_vocabulary_list(key="movieGenre1",
                                                                           vocabulary_list=genre_vocab)
item_genre_ind_col = tf.feature_column.indicator_column(item_genre_col)
item_genre_emb_col = tf.feature_column.embedding_column(item_genre_col, 10)

# FM 一阶类别特征
cat_columns = [movie_ind_col, user_ind_col, user_genre_ind_col, item_genre_ind_col]

# 深度模型特征
deep_columns = [tf.feature_column.numeric_column('releaseYear'),
                tf.feature_column.numeric_column('movieRatingCount'),
                tf.feature_column.numeric_column('movieAvgRating'),
                tf.feature_column.numeric_column('movieRatingStddev'),
                tf.feature_column.numeric_column('userRatingCount'),
                tf.feature_column.numeric_column('userAvgRating'),
                tf.feature_column.numeric_column('userRatingStddev')]

# 一阶类别特征
first_order_cat_feature = tf.keras.layers.DenseFeatures(cat_columns)(inputs)
first_order_cat_feature = tf.keras.layers.Dense(1, activation=None)(first_order_cat_feature)
# 一阶深度特征
first_order_deep_feature = tf.keras.layers.DenseFeatures(deep_columns)(inputs)
first_order_deep_feature = tf.keras.layers.Dense(1, activation=None)(first_order_deep_feature)
# 一阶特征
first_order_feature = tf.keras.layers.Add()([first_order_cat_feature, first_order_deep_feature])

# 二阶类别特征嵌入
second_order_cat_columns_emb = [tf.keras.layers.DenseFeatures([item_genre_emb_col])(inputs),
                                tf.keras.layers.DenseFeatures([movie_emb_col])(inputs),
                                tf.keras.layers.DenseFeatures([user_genre_emb_col])(inputs),
                                tf.keras.layers.DenseFeatures([user_emb_col])(inputs)
                                ]

second_order_cat_columns = []
for feature_emb in second_order_cat_columns_emb:
    feature = tf.keras.layers.Dense(64, activation=None)(feature_emb)
    feature = tf.keras.layers.Reshape((-1, 64))(feature)
    second_order_cat_columns.append(feature)

# 二阶深度特征
second_order_deep_columns = tf.keras.layers.DenseFeatures(deep_columns)(inputs)
second_order_deep_columns = tf.keras.layers.Dense(64, activation=None)(second_order_deep_columns)
second_order_deep_columns = tf.keras.layers.Reshape((-1, 64))(second_order_deep_columns)
second_order_fm_feature = tf.keras.layers.Concatenate(axis=1)(second_order_cat_columns + [second_order_deep_columns])

# 二阶深度特征
deep_feature = tf.keras.layers.Flatten()(second_order_fm_feature)
deep_feature = tf.keras.layers.Dense(32, activation='relu')(deep_feature)
deep_feature = tf.keras.layers.Dense(16, activation='relu')(deep_feature)

# 自定义 ReduceLayer 层，用于求和或求平均
class ReduceLayer(tf.keras.layers.Layer):
    def __init__(self, axis, op='sum', **kwargs):
        super().__init__()
        self.axis = axis
        self.op = op
        assert self.op in ['sum', 'mean']

    def build(self, input_shape):
        pass

    def call(self, input, **kwargs):
        if self.op == 'sum':
            return tf.reduce_sum(input, axis=self.axis)
        elif self.op == 'mean':
            return tf.reduce_mean(input, axis=self.axis)
        return tf.reduce_sum(input, axis=self.axis)

# 二阶特征求和
second_order_sum_feature = ReduceLayer(1)(second_order_fm_feature)
second_order_sum_square_feature = tf.keras.layers.multiply([second_order_sum_feature, second_order_sum_feature])
second_order_square_feature = tf.keras.layers.multiply([second_order_fm_feature, second_order_fm_feature])
second_order_square_sum_feature = ReduceLayer(1)(second_order_square_feature)
# 二阶 FM 特征
second_order_fm_feature = tf.keras.layers.subtract([second_order_sum_square_feature, second_order_square_sum_feature])

# 将所有特征拼接在一起
concatenated_outputs = tf.keras.layers.Concatenate(axis=1)([first_order_feature, second_order_fm_feature, deep_feature])
output_layer = tf.keras.layers.Dense(1, activation='sigmoid')(concatenated_outputs)

# 创建模型
model = tf.keras.Model(inputs, output_layer)
# 编译模型，设置损失函数、优化器和评估指标
model.compile(
    loss='binary_crossentropy',
    optimizer='adam',
    metrics=['accuracy', tf.keras.metrics.AUC(curve='ROC'), tf.keras.metrics.AUC(curve='PR')])

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