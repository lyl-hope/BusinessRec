package com.sparrowrecsys.offline.spark.featureeng

import org.apache.log4j.{Level, Logger}
import org.apache.spark.SparkConf
import org.apache.spark.sql.expressions.{UserDefinedFunction, Window}
import org.apache.spark.sql.functions.{format_number, _}
import org.apache.spark.sql.types.{DecimalType, FloatType, IntegerType, LongType}
import org.apache.spark.sql.{DataFrame, SaveMode, SparkSession}
import redis.clients.jedis.Jedis
import redis.clients.jedis.params.SetParams

import scala.collection.immutable.ListMap
import scala.collection.{JavaConversions, mutable}

object FeatureEngForRecModel {

  val NUMBER_PRECISION = 2 // 定义数字精度
  val redisEndpoint = "localhost" // Redis服务器地址
  val redisPort = 6379 // Redis服务器端口

  // 添加样本标签
  def addSampleLabel(ratingSamples: DataFrame): DataFrame = {
    ratingSamples.show(10, truncate = false) // 显示前10条评分数据
    ratingSamples.printSchema() // 打印评分数据的Schema
    val sampleCount = ratingSamples.count() // 计算样本数量
    ratingSamples.groupBy(col("rating")).count().orderBy(col("rating"))
      .withColumn("percentage", col("count") / sampleCount).show(100, truncate = false) // 计算每个评分的比例

    ratingSamples.withColumn("label", when(col("rating") >= 3.5, 1).otherwise(0)) // 添加标签列，评分>=3.5为1，否则为0
  }

  // 添加电影特征
  def addMovieFeatures(movieSamples: DataFrame, ratingSamples: DataFrame): DataFrame = {

    // 添加电影基本特征
    val samplesWithMovies1 = ratingSamples.join(movieSamples, Seq("productId"), "left")
    // 添加上映年份
    val extractReleaseYearUdf = udf({ (title: String) =>
      if (null == title || title.trim.length < 6) {
        1990 // 默认值
      } else {
        val yearString = title.trim.substring(title.length - 5, title.length - 1)
        yearString.toInt
      }
    })

    // 添加标题
    val extractTitleUdf = udf({ (title: String) => title.trim.substring(0, title.trim.length - 6).trim })

    val samplesWithMovies2 = samplesWithMovies1.withColumn("releaseYear", extractReleaseYearUdf(col("title")))
      .withColumn("title", extractTitleUdf(col("title")))
      .drop("title") // 当前标题无用，删除

    // 分割类型
    val samplesWithMovies3 = samplesWithMovies2.withColumn("movieGenre1", split(col("genres"), "\\|").getItem(0))
      .withColumn("movieGenre2", split(col("genres"), "\\|").getItem(1))
      .withColumn("movieGenre3", split(col("genres"), "\\|").getItem(2))

    // 添加评分特征
    val movieRatingFeatures = samplesWithMovies3.groupBy(col("productId"))
      .agg(count(lit(1)).as("movieRatingCount"),
        format_number(avg(col("rating")), NUMBER_PRECISION).as("movieAvgRating"),
        stddev(col("rating")).as("movieRatingStddev"))
      .na.fill(0).withColumn("movieRatingStddev", format_number(col("movieRatingStddev"), NUMBER_PRECISION))

    // 连接电影评分特征
    val samplesWithMovies4 = samplesWithMovies3.join(movieRatingFeatures, Seq("productId"), "left")
    samplesWithMovies4.printSchema() // 打印Schema
    samplesWithMovies4.show(10, truncate = false) // 显示前10条数据

    samplesWithMovies4
  }

  // 提取类型特征的UDF
  val extractGenres: UserDefinedFunction = udf { (genreArray: Seq[String]) =>
    val genreMap = mutable.Map[String, Int]()
    genreArray.foreach((element: String) => {
      val genres = element.split("\\|")
      genres.foreach((oneGenre: String) => {
        genreMap(oneGenre) = genreMap.getOrElse[Int](oneGenre, 0) + 1
      })
    })
    val sortedGenres = ListMap(genreMap.toSeq.sortWith(_._2 > _._2): _*)
    sortedGenres.keys.toSeq
  }

  // 添加用户特征
  def addUserFeatures(ratingSamples: DataFrame): DataFrame = {
    val samplesWithUserFeatures = ratingSamples
      .withColumn("userPositiveHistory", collect_list(when(col("label") === 1, col("productId")).otherwise(lit(null)))
        .over(Window.partitionBy("userId")
          .orderBy(col("timestamp")).rowsBetween(-100, -1)))
      .withColumn("userPositiveHistory", reverse(col("userPositiveHistory")))
      .withColumn("userRatedMovie1", col("userPositiveHistory").getItem(0))
      .withColumn("userRatedMovie2", col("userPositiveHistory").getItem(1))
      .withColumn("userRatedMovie3", col("userPositiveHistory").getItem(2))
      .withColumn("userRatedMovie4", col("userPositiveHistory").getItem(3))
      .withColumn("userRatedMovie5", col("userPositiveHistory").getItem(4))
      .withColumn("userRatingCount", count(lit(1))
        .over(Window.partitionBy("userId")
          .orderBy(col("timestamp")).rowsBetween(-100, -1)))
      .withColumn("userAvgReleaseYear", avg(col("releaseYear"))
        .over(Window.partitionBy("userId")
          .orderBy(col("timestamp")).rowsBetween(-100, -1)).cast(IntegerType))
      .withColumn("userReleaseYearStddev", stddev(col("releaseYear"))
        .over(Window.partitionBy("userId")
          .orderBy(col("timestamp")).rowsBetween(-100, -1)))
      .withColumn("userAvgRating", format_number(avg(col("rating"))
        .over(Window.partitionBy("userId")
          .orderBy(col("timestamp")).rowsBetween(-100, -1)), NUMBER_PRECISION))
      .withColumn("userRatingStddev", stddev(col("rating"))
        .over(Window.partitionBy("userId")
          .orderBy(col("timestamp")).rowsBetween(-100, -1)))
      .withColumn("userGenres", extractGenres(collect_list(when(col("label") === 1, col("genres")).otherwise(lit(null)))
        .over(Window.partitionBy("userId")
          .orderBy(col("timestamp")).rowsBetween(-100, -1))))
      .na.fill(0)
      .withColumn("userRatingStddev", format_number(col("userRatingStddev"), NUMBER_PRECISION))
      .withColumn("userReleaseYearStddev", format_number(col("userReleaseYearStddev"), NUMBER_PRECISION))
      .withColumn("userGenre1", col("userGenres").getItem(0))
      .withColumn("userGenre2", col("userGenres").getItem(1))
      .withColumn("userGenre3", col("userGenres").getItem(2))
      .withColumn("userGenre4", col("userGenres").getItem(3))
      .withColumn("userGenre5", col("userGenres").getItem(4))
      .drop("genres", "userGenres", "userPositiveHistory")
      .filter(col("userRatingCount") > 1)

    samplesWithUserFeatures.printSchema() // 打印Schema
    samplesWithUserFeatures.show(100, truncate = false) // 显示前100条数据

    samplesWithUserFeatures
  }

  // 提取并保存电影特征到Redis
  def extractAndSaveMovieFeaturesToRedis(samples: DataFrame): DataFrame = {
    val movieLatestSamples = samples.withColumn("movieRowNum", row_number()
      .over(Window.partitionBy("productId")
        .orderBy(col("timestamp").desc)))
      .filter(col("movieRowNum") === 1)
      .select("productId", "releaseYear", "movieGenre1", "movieGenre2", "movieGenre3", "movieRatingCount",
        "movieAvgRating", "movieRatingStddev")
      .na.fill("")

    movieLatestSamples.printSchema() // 打印Schema
    movieLatestSamples.show(100, truncate = false) // 显示前100条数据

    val movieFeaturePrefix = "mf:" // 电影特征前缀

    val redisClient = new Jedis(redisEndpoint, redisPort)
    val params = SetParams.setParams()
    // 设置TTL为30天
    params.ex(60 * 60 * 24 * 30)
    val sampleArray = movieLatestSamples.collect()
    println("total movie size:" + sampleArray.length) // 打印电影总数
    var insertedMovieNumber = 0
    val movieCount = sampleArray.length
    for (sample <- sampleArray) {
      val movieKey = movieFeaturePrefix + sample.getAs[String]("productId")
      val valueMap = mutable.Map[String, String]()
      valueMap("movieGenre1") = sample.getAs[String]("movieGenre1")
      valueMap("movieGenre2") = sample.getAs[String]("movieGenre2")
      valueMap("movieGenre3") = sample.getAs[String]("movieGenre3")
      valueMap("movieRatingCount") = sample.getAs[Long]("movieRatingCount").toString
      valueMap("releaseYear") = sample.getAs[Int]("releaseYear").toString
      valueMap("movieAvgRating") = sample.getAs[String]("movieAvgRating")
      valueMap("movieRatingStddev") = sample.getAs[String]("movieRatingStddev")

      redisClient.hset(movieKey, JavaConversions.mapAsJavaMap(valueMap))
      insertedMovieNumber += 1
      if (insertedMovieNumber % 100 == 0) {
        println(insertedMovieNumber + "/" + movieCount + "...") // 打印插入进度
      }
    }

    redisClient.close()
    movieLatestSamples
  }

  // 分割并保存训练和测试样本
  def splitAndSaveTrainingTestSamples(samples: DataFrame, savePath: String) = {
    // 生成一个较小的样本集用于演示
    val smallSamples = samples.sample(0.1)

    // 按8:2分割训练集和测试集
    val Array(training, test) = smallSamples.randomSplit(Array(0.8, 0.2))

    val sampleResourcesPath = this.getClass.getResource(savePath)
    training.repartition(1).write.option("header", "true").mode(SaveMode.Overwrite)
      .csv(sampleResourcesPath + "/trainingSamples")
    test.repartition(1).write.option("header", "true").mode(SaveMode.Overwrite)
      .csv(sampleResourcesPath + "/testSamples")
  }

  // 按时间戳分割并保存训练和测试样本
  def splitAndSaveTrainingTestSamplesByTimeStamp(samples: DataFrame, savePath: String) = {
    // 生成一个较小的样本集用于演示
    val smallSamples = samples.sample(0.1).withColumn("timestampLong", col("timestamp").cast(LongType))

    val quantile = smallSamples.stat.approxQuantile("timestampLong", Array(0.8), 0.05)
    val splitTimestamp = quantile.apply(0)

    val training = smallSamples.where(col("timestampLong") <= splitTimestamp).drop("timestampLong")
    val test = smallSamples.where(col("timestampLong") > splitTimestamp).drop("timestampLong")

    val sampleResourcesPath = this.getClass.getResource(savePath)
    training.repartition(1).write.option("header", "true").mode(SaveMode.Overwrite)
      .csv(sampleResourcesPath + "/trainingSamples")
    test.repartition(1).write.option("header", "true").mode(SaveMode.Overwrite)
      .csv(sampleResourcesPath + "/testSamples")
  }

  // 提取并保存用户特征到Redis
  def extractAndSaveUserFeaturesToRedis(samples: DataFrame): DataFrame = {
    val userLatestSamples = samples.withColumn("userRowNum", row_number()
      .over(Window.partitionBy("userId")
        .orderBy(col("timestamp").desc)))
      .filter(col("userRowNum") === 1)
      .select("userId", "userRatedMovie1", "userRatedMovie2", "userRatedMovie3", "userRatedMovie4", "userRatedMovie5",
        "userRatingCount", "userAvgReleaseYear", "userReleaseYearStddev", "userAvgRating", "userRatingStddev",
        "userGenre1", "userGenre2", "userGenre3", "userGenre4", "userGenre5")
      .na.fill("")

    userLatestSamples.printSchema() // 打印Schema
    userLatestSamples.show(100, truncate = false) // 显示前100条数据

    val userFeaturePrefix = "uf:" // 用户特征前缀

    val redisClient = new Jedis(redisEndpoint, redisPort)
    val params = SetParams.setParams()
    // 设置TTL为30天
    params.ex(60 * 60 * 24 * 30)
    val sampleArray = userLatestSamples.collect()
    println("total user size:" + sampleArray.length) // 打印用户总数
    var insertedUserNumber = 0
    val userCount = sampleArray.length
    for (sample <- sampleArray) {
      val userKey = userFeaturePrefix + sample.getAs[String]("userId")
      val valueMap = mutable.Map[String, String]()
      valueMap("userRatedMovie1") = sample.getAs[String]("userRatedMovie1")
      valueMap("userRatedMovie2") = sample.getAs[String]("userRatedMovie2")
      valueMap("userRatedMovie3") = sample.getAs[String]("userRatedMovie3")
      valueMap("userRatedMovie4") = sample.getAs[String]("userRatedMovie4")
      valueMap("userRatedMovie5") = sample.getAs[String]("userRatedMovie5")
      valueMap("userGenre1") = sample.getAs[String]("userGenre1")
      valueMap("userGenre2") = sample.getAs[String]("userGenre2")
      valueMap("userGenre3") = sample.getAs[String]("userGenre3")
      valueMap("userGenre4") = sample.getAs[String]("userGenre4")
      valueMap("userGenre5") = sample.getAs[String]("userGenre5")
      valueMap("userRatingCount") = sample.getAs[Long]("userRatingCount").toString
      valueMap("userAvgReleaseYear") = sample.getAs[Int]("userAvgReleaseYear").toString
      valueMap("userReleaseYearStddev") = sample.getAs[String]("userReleaseYearStddev")
      valueMap("userAvgRating") = sample.getAs[String]("userAvgRating")
      valueMap("userRatingStddev") = sample.getAs[String]("userRatingStddev")

      redisClient.hset(userKey, JavaConversions.mapAsJavaMap(valueMap))
      insertedUserNumber += 1
      if (insertedUserNumber % 100 == 0) {
        println(insertedUserNumber + "/" + userCount + "...") // 打印插入进度
      }
    }

    redisClient.close()
    userLatestSamples
  }

  def main(args: Array[String]): Unit = {
    Logger.getLogger("org").setLevel(Level.ERROR) // 设置日志级别为ERROR

    val conf = new SparkConf()
      .setMaster("local") // 设置为本地模式
      .setAppName("featureEngineering") // 设置应用名称为"featureEngineering"
      .set("spark.submit.deployMode", "client") // 设置部署模式为客户端

    val spark = SparkSession.builder.config(conf).getOrCreate()
    val movieResourcesPath = this.getClass.getResource("/webroot/sampledata/movies.csv")
    val movieSamples = spark.read.format("csv").option("header", "true").load(movieResourcesPath.getPath)

    val ratingsResourcesPath = this.getClass.getResource("/webroot/sampledata/ratings.csv")
    val ratingSamples = spark.read.format("csv").option("header", "true").load(ratingsResourcesPath.getPath)

    val ratingSamplesWithLabel = addSampleLabel(ratingSamples)
    ratingSamplesWithLabel.show(10, truncate = false) // 显示前10条带标签的评分数据

    val samplesWithMovieFeatures = addMovieFeatures(movieSamples, ratingSamplesWithLabel)
    val samplesWithUserFeatures = addUserFeatures(samplesWithMovieFeatures)

    // 保存样本为CSV格式
    splitAndSaveTrainingTestSamples(samplesWithUserFeatures, "/webroot/sampledata")

    // 保存用户特征和物品特征到Redis以供在线推断
    // extractAndSaveUserFeaturesToRedis(samplesWithUserFeatures)
    // extractAndSaveMovieFeaturesToRedis(samplesWithUserFeatures)
    spark.close() // 关闭SparkSession
  }

}