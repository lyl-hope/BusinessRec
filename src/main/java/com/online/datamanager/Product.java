package com.online.datamanager;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.online.model.Embedding;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Movie 类，包含从movielens的movies.csv加载的属性和其他高级数据，如平均评分、嵌入向量等。
 */
/**测试===**/
public class Product{
    int productId; // 电影ID
    String title; // 电影标题
    //int releaseYear; // 上映年份
    //String imdbId; // IMDb ID
    //String tmdbId; // TMDb ID
    List<String> categories; // 电影类型列表
    List<String> tags; // 产品tag列表
    // 用户评分数量
    int ratingNumber;
    // 平均评分
    double averageRating;
    // 评分标准差
    double stddevRating;
    // M2：方差更新的中间变量
    double M2;
    // 电影的嵌入向量
    @JsonIgnore
    Embedding emb;

    // 所有评分列表
    @JsonIgnore
    List<Rating> ratings;

    // 电影特征映射
    @JsonIgnore
    Map<String, String> productFeatures;

    // 前10个评分的大小
    final int TOP_RATING_SIZE = 10;

    // 使用自定义序列化器序列化评分列表
    @JsonSerialize(using = RatingListSerializer.class)
    List<Rating> topRatings;

    // 构造函数，初始化默认值
    public Product() {
        ratingNumber = 0;
        averageRating = 0;
        stddevRating=0;
        M2=0;
        this.categories = new ArrayList<>();
        this.tags = new ArrayList<>();
        this.ratings = new ArrayList<>();
        this.topRatings = new LinkedList<>();
        this.emb = null;
        this.productFeatures = null;
    }

    // 获取电影ID
    public int getProductId() {
        return productId;
    }

    // 设置电影ID
    public void setProductId(int productId) {
        this.productId = productId;
    }

    // 获取电影标题
    public String getTitle() {
        return title;
    }

    // 设置电影标题
    public void setTitle(String title) {
        this.title = title;
    }

    // 获取上映年份
//    public int getReleaseYear() {
//        return releaseYear;
//    }

    // 设置上映年份
//    public void setReleaseYear(int releaseYear) {
//        this.releaseYear = releaseYear;
//    }

    // 获取电影类型列表
    public List<String> getCategories() {
        return categories;
    }

    // 添加电影类型
    public void addCategory(String category){
        this.categories.add(category);
    }

    // 设置电影类型列表
    public void setCategory(List<String> categories) {
        this.categories = categories;
    }
    //TAGs
    public List<String> getTags() {
        return tags;
    }

    // 添加电影类型
    public void addTag(String tag){
        this.tags.add(tag);
    }

    // 设置产品tag列表
    public void setTag(List<String> tags) {
        this.tags = tags;
    }
    // 获取评分列表
    public List<Rating> getRatings() {
        return ratings;
    }

    // 添加评分并更新平均评分和评分数量
    public void addRating(Rating rating) {
        double newScore = rating.getScore();
        ratingNumber++;

        // 计算新的平均值
        double delta = newScore - averageRating;
        averageRating += delta / ratingNumber;

        // 更新M2
        M2 += delta * (newScore - averageRating);

        // 更新标准差
        if (ratingNumber > 1) {
            stddevRating = Math.sqrt(M2 / ratingNumber);
        } else {
            stddevRating = 0; // 只有一个评分时标准差为0
        }

        // 更新评分列表
        this.ratings.add(rating);
        addTopRating(rating);
    }

    // 添加评分到前10个评分列表
    public void addTopRating(Rating rating){
        if (this.topRatings.isEmpty()){
            this.topRatings.add(rating);
        }else{
            int index = 0;
            for (Rating topRating : this.topRatings){
                if (topRating.getScore() >= rating.getScore()){
                    break;
                }
                index ++;
            }
            topRatings.add(index, rating);
            if (topRatings.size() > TOP_RATING_SIZE) {
                topRatings.remove(0);
            }
        }
    }

    // 获取IMDb ID
//    public String getImdbId() {
//        return imdbId;
//    }
//
//    // 设置IMDb ID
//    public void setImdbId(String imdbId) {
//        this.imdbId = imdbId;
//    }
//
//    // 获取TMDb ID
//    public String getTmdbId() {
//        return tmdbId;
//    }
//
//    // 设置TMDb ID
//    public void setTmdbId(String tmdbId) {
//        this.tmdbId = tmdbId;
//    }

    // 获取评分数量
    public int getRatingNumber() {
        return ratingNumber;
    }

    // 获取平均评分
    public double getAverageRating() {
        return averageRating;
    }

    // 获取嵌入向量
    public Embedding getEmb() {
        return emb;
    }

    // 设置嵌入向量
    public void setEmb(Embedding emb) {
        this.emb = emb;
    }

    // 获取电影特征映射
    public Map<String, String> getProductFeatures() {
        return productFeatures;
    }

    // 获取评分标准差
    public double getStddevRating() {
        return stddevRating;
    }

    // 设置电影特征映射
    public void setProductFeatures(Map<String, String> productFeatures) {
        this.productFeatures = productFeatures;
    }
}