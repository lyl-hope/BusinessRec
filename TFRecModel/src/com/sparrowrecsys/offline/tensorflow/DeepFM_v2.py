import tensorflow as tf

"""
与 DeepFM 的区别：
    1. 在处理一阶特征和二阶特征时，将类别特征与密集特征分开处理
    2. 修改原始 FM 部分，使用完全交叉的 FM 部分
"""

# 训练样本路径，请更改为你的本地路径
training_samples_file_path = tf.keras.utils.get_file(r"E:\处理出来的csv数据\trainingSamples.csv",
                                                     r"file:///E:\处理出来的csv数据\/trainingSamples.csv")
# 测试样本路径，请更改为你的本地路径
test_samples_file_path = tf.keras.utils.get_file(r"E:\处理出来的csv数据\testSamples.csv",
                                                 r"file:///E:\处理出来的csv数据\.csv")

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
    'productAvgRating': tf.keras.layers.Input(name='productAvgRating', shape=(), dtype='float32'),
    'productRatingStddev': tf.keras.layers.Input(name='productRatingStddev', shape=(), dtype='float32'),
    'productRatingCount': tf.keras.layers.Input(name='productRatingCount', shape=(), dtype='int32'),
    'userAvgRating': tf.keras.layers.Input(name='userAvgRating', shape=(), dtype='float32'),
    'userRatingStddev': tf.keras.layers.Input(name='userRatingStddev', shape=(), dtype='float32'),
    'userRatingCount': tf.keras.layers.Input(name='userRatingCount', shape=(), dtype='int32'),

    'productId': tf.keras.layers.Input(name='productId', shape=(), dtype='int32'),
    'userId': tf.keras.layers.Input(name='userId', shape=(), dtype='int32'),
    'userRatedProduct1': tf.keras.layers.Input(name='userRatedProduct1', shape=(), dtype='int32'),

    'userCategory1': tf.keras.layers.Input(name='userCategory1', shape=(), dtype='string'),
    'userCategory2': tf.keras.layers.Input(name='userCategory2', shape=(), dtype='string'),
    'userCategory3': tf.keras.layers.Input(name='userCategory3', shape=(), dtype='string'),
    'productCategory1': tf.keras.layers.Input(name='productCategory1', shape=(), dtype='string'),
    'productCategory2': tf.keras.layers.Input(name='productCategory2', shape=(), dtype='string'),
    'productCategory3': tf.keras.layers.Input(name='productCategory3', shape=(), dtype='string'),
}

# 电影ID嵌入特征
product_col = tf.feature_column.categorical_column_with_identity(key='productId', num_buckets=1000001)
product_emb_col = tf.feature_column.embedding_column(product_col, 10)
product_ind_col = tf.feature_column.indicator_column(product_col)  # 电影ID指示列

# 用户ID嵌入特征
user_col = tf.feature_column.categorical_column_with_identity(key='userId', num_buckets=1000001)
user_emb_col = tf.feature_column.embedding_column(user_col, 10)
user_ind_col = tf.feature_column.indicator_column(user_col)  # 用户ID指示列

# 类型特征词汇表
genre_vocab = ["青春文学","厨房/餐具","男士洁面","电脑/办公","化妆水/爽肤水","保温杯/保温壶","音像","U盘","存储卡","生活类图书","网卡","收纳","考试","工具书","工艺饰品","少儿","成功/励志","少儿/教育图书","杯具/水壶","家居生活","人文社科类图书","厨房电器","文学类","传记","手表","纸尿裤/拉拉裤/纸尿片","移动硬盘","外设产品","面部护理","台灯","睫毛膏","灯具","政治/军事","经管类图书","钟表/首饰/眼镜/礼品","鼠标","小说","手机","育儿/早教","图书音像","耳机/耳麦","哲学/宗教","电纸书/电子阅览器","尿裤湿巾","手机通讯","沐浴露","家具/家装/建材","亲子/家教","手工/DIY","酸奶机","卡通","家用电器","加湿/除湿器","电动剃须刀","个人护理电器","电脑音箱","存储设备","外语","母婴/玩具","投资理财","生活电器","香水","男士乳液/面霜","网络设备","钟表","旅游/地图","有声读物","美妆个护","男士护肤","文学艺术","孕产/胎教","洁面","收纳整理","其它图书","手机/数码","身体护理","数码影音","彩妆","电吹风"]

# 用户类型嵌入特征
user_genre_col = tf.feature_column.categorical_column_with_vocabulary_list(key="userCategory1",
                                                                           vocabulary_list=genre_vocab)
user_genre_ind_col = tf.feature_column.indicator_column(user_genre_col)
user_genre_emb_col = tf.feature_column.embedding_column(user_genre_col, 10)

# 物品类型嵌入特征
item_genre_col = tf.feature_column.categorical_column_with_vocabulary_list(key="productCategory1",
                                                                           vocabulary_list=genre_vocab)
item_genre_ind_col = tf.feature_column.indicator_column(item_genre_col)
item_genre_emb_col = tf.feature_column.embedding_column(item_genre_col, 10)

# FM 一阶类别特征
cat_columns = [product_ind_col, user_ind_col, user_genre_ind_col, item_genre_ind_col]

# 深度模型特征
deep_columns = [tf.feature_column.numeric_column('productRatingCount'),
                tf.feature_column.numeric_column('productAvgRating'),
                tf.feature_column.numeric_column('productRatingStddev'),
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
                                tf.keras.layers.DenseFeatures([product_emb_col])(inputs),
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