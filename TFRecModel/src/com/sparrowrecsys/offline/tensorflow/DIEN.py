'''
Author:
    zcxia23, 854695170@qq.com

Diff with DIN:
    1、GRU with attentional update gate (AUGRU) 
    2、auxiliary loss function with click or not click  movie(negetive sampleming)

Reference:
    [1] Zhou G ,  Mou N ,  Fan Y , et al. Deep Interest Evolution Network for Click-Through Rate Prediction[J].  2018.
'''
import pandas as pd
import tensorflow as tf
from tensorflow.python.ops import math_ops
import numpy as np
import random

# 训练样本路径，请更改为你的本地路径
training_samples_file_path = tf.keras.utils.get_file("trainingSamples.csv",
                                                     "file:///Users/zhewang/Workspace/SparrowRecSys/src/main"
                                                     "/resources/webroot/sampledata/trainingSamples.csv")
# 测试样本路径，请更改为你的本地路径
test_samples_file_path = tf.keras.utils.get_file("testSamples.csv",
                                                 "file:///Users/zhewang/Workspace/SparrowRecSys/src/main"
                                                 "/resources/webroot/sampledata/testSamples.csv")

# 获取包含负样本的训练数据集
def get_dataset_with_negtive_movie(path, batch_size, seed_num):
    # 读取CSV文件
    tmp_df = pd.read_csv(path)
    tmp_df.fillna(0, inplace=True)  # 填充缺失值
    random.seed(seed_num)
    # 生成负样本
    negtive_movie_df = tmp_df.loc[:, 'userRatedMovie2':'userRatedMovie5'].applymap(
        lambda x: random.sample(set(range(0, 1001)) - set([int(x)]), 1)[0])
    negtive_movie_df.columns = ['negtive_userRatedMovie2', 'negtive_userRatedMovie3', 'negtive_userRatedMovie4', 'negtive_userRatedMovie5']
    tmp_df = pd.concat([tmp_df, negtive_movie_df], axis=1)

    # 将所有对象类型的列转换为字符串
    for i in tmp_df.select_dtypes('O').columns:
        tmp_df[i] = tmp_df[i].astype('str')

    # 如果TensorFlow版本小于2.3.0，进行采样
    if tf.__version__ < '2.3.0':
        tmp_df = tmp_df.sample(n=batch_size * (len(tmp_df) // batch_size), random_state=seed_num)

    # 创建TensorFlow数据集
    dataset = tf.data.Dataset.from_tensor_slices((dict(tmp_df)))
    dataset = dataset.batch(batch_size)
    return dataset

# 获取训练和测试数据集
train_dataset = get_dataset_with_negtive_movie(training_samples_file_path, 12, seed_num=2020)
test_dataset = get_dataset_with_negtive_movie(test_samples_file_path, 12, seed_num=2021)

# 配置
RECENT_MOVIES = 5  # userRatedMovie{1-5}
EMBEDDING_SIZE = 10

# 定义Keras模型的输入
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
    'userRatedMovie2': tf.keras.layers.Input(name='userRatedMovie2', shape=(), dtype='int32'),
    'userRatedMovie3': tf.keras.layers.Input(name='userRatedMovie3', shape=(), dtype='int32'),
    'userRatedMovie4': tf.keras.layers.Input(name='userRatedMovie4', shape=(), dtype='int32'),
    'userRatedMovie5': tf.keras.layers.Input(name='userRatedMovie5', shape=(), dtype='int32'),

    'userGenre1': tf.keras.layers.Input(name='userGenre1', shape=(), dtype='string'),
    'userGenre2': tf.keras.layers.Input(name='userGenre2', shape=(), dtype='string'),
    'userGenre3': tf.keras.layers.Input(name='userGenre3', shape=(), dtype='string'),
    'userGenre4': tf.keras.layers.Input(name='userGenre4', shape=(), dtype='string'),
    'userGenre5': tf.keras.layers.Input(name='userGenre5', shape=(), dtype='string'),
    'movieGenre1': tf.keras.layers.Input(name='movieGenre1', shape=(), dtype='string'),
    'movieGenre2': tf.keras.layers.Input(name='movieGenre2', shape=(), dtype='string'),
    'movieGenre3': tf.keras.layers.Input(name='movieGenre3', shape=(), dtype='string'),

    'negtive_userRatedMovie2': tf.keras.layers.Input(name='negtive_userRatedMovie2', shape=(), dtype='int32'),
    'negtive_userRatedMovie3': tf.keras.layers.Input(name='negtive_userRatedMovie3', shape=(), dtype='int32'),
    'negtive_userRatedMovie4': tf.keras.layers.Input(name='negtive_userRatedMovie4', shape=(), dtype='int32'),
    'negtive_userRatedMovie5': tf.keras.layers.Input(name='negtive_userRatedMovie5', shape=(), dtype='int32'),

    'label': tf.keras.layers.Input(name='label', shape=(), dtype='int32')
}

# 用户ID嵌入特征
user_col = tf.feature_column.categorical_column_with_identity(key='userId', num_buckets=30001)
user_emb_col = tf.feature_column.embedding_column(user_col, EMBEDDING_SIZE)

# 类型特征词汇表
genre_vocab = ['Film-Noir', 'Action', 'Adventure', 'Horror', 'Romance', 'War', 'Comedy', 'Western', 'Documentary',
               'Sci-Fi', 'Drama', 'Thriller',
               'Crime', 'Fantasy', 'Animation', 'IMAX', 'Mystery', 'Children', 'Musical']
# 用户类型嵌入特征
user_genre_col = tf.feature_column.categorical_column_with_vocabulary_list(key="userGenre1",
                                                                           vocabulary_list=genre_vocab)
user_genre_emb_col = tf.feature_column.embedding_column(user_genre_col, EMBEDDING_SIZE)
# 物品类型嵌入特征
item_genre_col = tf.feature_column.categorical_column_with_vocabulary_list(key="movieGenre1",
                                                                           vocabulary_list=genre_vocab)
item_genre_emb_col = tf.feature_column.embedding_column(item_genre_col, EMBEDDING_SIZE)

# 候选电影特征
candidate_movie_col = [tf.feature_column.numeric_column(key='productId', default_value=0)]

# 用户行为特征
recent_rate_col = [
    tf.feature_column.numeric_column(key='userRatedMovie1', default_value=0),
    tf.feature_column.numeric_column(key='userRatedMovie2', default_value=0),
    tf.feature_column.numeric_column(key='userRatedMovie3', default_value=0),
    tf.feature_column.numeric_column(key='userRatedMovie4', default_value=0),
    tf.feature_column.numeric_column(key='userRatedMovie5', default_value=0),
]

# 负样本特征
negtive_movie_col = [
    tf.feature_column.numeric_column(key='negtive_userRatedMovie2', default_value=0),
    tf.feature_column.numeric_column(key='negtive_userRatedMovie3', default_value=0),
    tf.feature_column.numeric_column(key='negtive_userRatedMovie4', default_value=0),
    tf.feature_column.numeric_column(key='negtive_userRatedMovie5', default_value=0),
]

# 用户画像特征
user_profile = [
    user_emb_col,
    user_genre_emb_col,
    tf.feature_column.numeric_column('userRatingCount'),
    tf.feature_column.numeric_column('userAvgRating'),
    tf.feature_column.numeric_column('userRatingStddev'),
]

# 上下文特征
context_features = [
    item_genre_emb_col,
    tf.feature_column.numeric_column('releaseYear'),
    tf.feature_column.numeric_column('movieRatingCount'),
    tf.feature_column.numeric_column('movieAvgRating'),
    tf.feature_column.numeric_column('movieRatingStddev'),
]

# 标签特征
label = [tf.feature_column.numeric_column(key='label', default_value=0)]

# 构建特征层
candidate_layer = tf.keras.layers.DenseFeatures(candidate_movie_col)(inputs)
user_behaviors_layer = tf.keras.layers.DenseFeatures(recent_rate_col)(inputs)
negtive_movie_layer = tf.keras.layers.DenseFeatures(negtive_movie_col)(inputs)
user_profile_layer = tf.keras.layers.DenseFeatures(user_profile)(inputs)
context_features_layer = tf.keras.layers.DenseFeatures(context_features)(inputs)
y_true = tf.keras.layers.DenseFeatures(label)(inputs)

# 激活单元
movie_emb_layer = tf.keras.layers.Embedding(input_dim=1001, output_dim=EMBEDDING_SIZE, mask_zero=True)  # mask zero

user_behaviors_emb_layer = movie_emb_layer(user_behaviors_layer)
candidate_emb_layer = movie_emb_layer(candidate_layer)
negtive_movie_emb_layer = movie_emb_layer(negtive_movie_layer)

candidate_emb_layer = tf.squeeze(candidate_emb_layer, axis=1)

# GRU层
user_behaviors_hidden_state = tf.keras.layers.GRU(EMBEDDING_SIZE, return_sequences=True)(user_behaviors_emb_layer)

# 定义注意力层
class attention(tf.keras.layers.Layer):
    def __init__(self, embedding_size=EMBEDDING_SIZE, time_length=5):
        super().__init__()
        self.time_length = time_length
        self.embedding_size = embedding_size
        self.RepeatVector_time = tf.keras.layers.RepeatVector(self.time_length)
        self.RepeatVector_emb = tf.keras.layers.RepeatVector(self.embedding_size)
        self.Multiply = tf.keras.layers.Multiply()
        self.Dense32 = tf.keras.layers.Dense(32, activation='sigmoid')
        self.Dense1 = tf.keras.layers.Dense(1, activation='sigmoid')
        self.Flatten = tf.keras.layers.Flatten()
        self.Permute = tf.keras.layers.Permute((2, 1))

    def build(self, input_shape):
        pass

    def call(self, inputs):
        candidate_inputs, gru_hidden_state = inputs
        repeated_candidate_layer = self.RepeatVector_time(candidate_inputs)
        activation_product_layer = self.Multiply([gru_hidden_state, repeated_candidate_layer])
        activation_unit = self.Dense32(activation_product_layer)
        activation_unit = self.Dense1(activation_unit)
        Repeat_attention_s = tf.squeeze(activation_unit, axis=2)
        Repeat_attention_s = self.RepeatVector_emb(Repeat_attention_s)
        Repeat_attention_s = self.Permute(Repeat_attention_s)

        return Repeat_attention_s

# 计算注意力得分
attention_score = attention()([candidate_emb_layer, user_behaviors_hidden_state])

# 定义GRU门控参数层
class GRU_gate_parameter(tf.keras.layers.Layer):
    def __init__(self, embedding_size=EMBEDDING_SIZE):
        super().__init__()
        self.embedding_size = embedding_size
        self.Multiply = tf.keras.layers.Multiply()
        self.Dense_sigmoid = tf.keras.layers.Dense(self.embedding_size, activation='sigmoid')
        self.Dense_tanh = tf.keras.layers.Dense(self.embedding_size, activation='tanh')

    def build(self, input_shape):
        self.input_w = tf.keras.layers.Dense(self.embedding_size, activation=None, use_bias=True)
        self.hidden_w = tf.keras.layers.Dense(self.embedding_size, activation=None, use_bias=False)

    def call(self, inputs, Z_t_inputs=None):
        gru_inputs, hidden_inputs = inputs
        if Z_t_inputs is None:
            return self.Dense_sigmoid(self.input_w(gru_inputs) + self.hidden_w(hidden_inputs))
        else:
            return self.Dense_tanh(self.input_w(gru_inputs) + self.hidden_w(self.Multiply([hidden_inputs, Z_t_inputs])))

# 定义AUGRU层
class AUGRU(tf.keras.layers.Layer):
    def __init__(self, embedding_size=EMBEDDING_SIZE, time_length=5):
        super().__init__()
        self.time_length = time_length
        self.embedding_size = embedding_size
        self.Multiply = tf.keras.layers.Multiply()
        self.Add = tf.keras.layers.Add()

    def build(self, input_shape):
        self.R_t = GRU_gate_parameter()
        self.Z_t = GRU_gate_parameter()
        self.H_t_next = GRU_gate_parameter()

    def call(self, inputs):
        gru_hidden_state_inputs, attention_s = inputs
        initializer = tf.keras.initializers.GlorotUniform()
        AUGRU_hidden_state = tf.reshape(initializer(shape=(1, self.embedding_size)), shape=(-1, self.embedding_size))
        for t in range(self.time_length):
            r_t = self.R_t([gru_hidden_state_inputs[:, t, :], AUGRU_hidden_state])
            z_t = self.Z_t([gru_hidden_state_inputs[:, t, :], AUGRU_hidden_state])
            h_t_next = self.H_t_next([gru_hidden_state_inputs[:, t, :], AUGRU_hidden_state], z_t)
            Rt_attention = self.Multiply([attention_s[:, t, :], r_t])

            AUGRU_hidden_state = self.Add([self.Multiply([(1 - Rt_attention), AUGRU_hidden_state]),
                                           self.Multiply([Rt_attention, h_t_next])])

        return AUGRU_hidden_state

# 计算AUGRU嵌入
augru_emb = AUGRU()([user_behaviors_hidden_state, attention_score])

# 拼接所有特征
concat_layer = tf.keras.layers.concatenate([augru_emb, candidate_emb_layer, user_profile_layer, context_features_layer])

# 定义输出层
output_layer = tf.keras.layers.Dense(128)(concat_layer)
output_layer = tf.keras.layers.PReLU()(output_layer)
output_layer = tf.keras.layers.Dense(64)(output_layer)
output_layer = tf.keras.layers.PReLU()(output_layer)
y_pred = tf.keras.layers.Dense(1, activation='sigmoid')(output_layer)

# 定义辅助损失层
class auxiliary_loss_layer(tf.keras.layers.Layer):
    def __init__(self, time_length=5):
        super().__init__()
        self.time_len = time_length - 1
        self.Dense_sigmoid_positive32 = tf.keras.layers.Dense(32, activation='sigmoid')
        self.Dense_sigmoid_positive1 = tf.keras.layers.Dense(1, activation='sigmoid')
        self.Dense_sigmoid_negitive32 = tf.keras.layers.Dense(32, activation='sigmoid')
        self.Dense_sigmoid_negitive1 = tf.keras.layers.Dense(1, activation='sigmoid')
        self.Dot = tf.keras.layers.Dot(axes=(1, 1))
        self.auc = tf.keras.metrics.AUC()

    def build(self, input_shape):
        pass

    def call(self, inputs, alpha=0.5):
        negtive_movie_t1, postive_movie_t0, movie_hidden_state, y_true, y_pred = inputs
        positive_concat_layer = tf.keras.layers.concatenate([movie_hidden_state[:, 0:4, :], postive_movie_t0[:, 1:5, :]])
        positive_concat_layer = self.Dense_sigmoid_positive32(positive_concat_layer)
        positive_loss = self.Dense_sigmoid_positive1(positive_concat_layer)

        negtive_concat_layer = tf.keras.layers.concatenate([movie_hidden_state[:, 0:4, :], negtive_movie_t1[:, :, :]])
        negtive_concat_layer = self.Dense_sigmoid_negitive32(negtive_concat_layer)
        negtive_loss = self.Dense_sigmoid_negitive1(negtive_concat_layer)
        auxiliary_loss_values = positive_loss + negtive_loss

        final_loss = tf.keras.losses.binary_crossentropy(y_true, y_pred) - alpha * tf.reduce_mean(
            tf.reduce_sum(auxiliary_loss_values, axis=1))
        self.add_loss(final_loss, inputs=True)
        self.auc.update_state(y_true, y_pred)
        self.add_metric(self.auc.result(), aggregation="mean", name="auc_value")

        return final_loss

# 计算辅助损失
auxiliary_loss_value = auxiliary_loss_layer()(
    [negtive_movie_emb_layer, user_behaviors_emb_layer, user_behaviors_hidden_state, y_true, y_pred])

# 创建模型
model = tf.keras.Model(inputs=inputs, outputs=[y_pred, auxiliary_loss_value])

# 编译模型
model.compile(optimizer="adam")

# 训练模型
model.fit(train_dataset, epochs=5)

# 评估模型
test_loss, test_roc_auc = model.evaluate(test_dataset)
print('\n\nTest Loss {},  Test ROC AUC {},'.format(test_loss, test_roc_auc))

# 打印模型摘要
model.summary()

# 打印一些预测结果
predictions = model.predict(test_dataset)
for prediction, goodRating in zip(predictions[0][:12], list(test_dataset)[0]):
    print("Predicted good rating: {:.2%}".format(prediction[0]),
          " | Actual rating label: ",
          ("Good Rating" if bool(goodRating) else "Bad Rating"))