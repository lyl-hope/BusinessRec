package com.sparrowrecsys.online.datamanager;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.sparrowrecsys.online.model.Embedding;

import java.util.*;

/**
 * User 类，包含从 movielens 的 ratings.csv 加载的属性
 */
public class User {
    int userId; // 用户ID
    double averageRating = 0; // 平均评分
    double highestRating = 0; // 最高评分
    double lowestRating = 5.0; // 最低评分
    int ratingCount = 0; // 评分数量

    @JsonSerialize(using = RatingListSerializer.class)
    List<Rating> ratings; // 用户的评分列表
    double stddevRating; // 评分标准差
    double M2 ; // 用于增量计算标准差的变量

    String userCategory1; // 第一种高评分种类
    String userCategory2; // 第二种高评分种类
    String userCategory3; // 第三种高评分种类
    int userRatedProduct1;
    // 用户的嵌入向量
    @JsonIgnore
    Embedding emb;

    // 用户特征映射
    @JsonIgnore
    Map<String, String> userFeatures;
    PriorityQueue<Rating> recentHighRatings; // 按时间戳排序的评分队列
    Set<String> recentHighCategories; // 保存最近高评分的种类
    // 构造函数，初始化默认值
    public User() {
        userCategory1="";
        userCategory2="";
        userCategory3="";
        stddevRating =0;
        M2 =0;
        this.ratings = new ArrayList<>();
        this.emb = null;
        this.userFeatures = null;
        this.recentHighRatings = new PriorityQueue<>((r1, r2) -> Long.compare(r2.getTimestamp(), r1.getTimestamp()));
        this.recentHighCategories = new LinkedHashSet<>();
    }

    // 获取用户ID
    public int getUserId() {
        return userId;
    }

    // 设置用户ID
    public void setUserId(int userId) {
        this.userId = userId;
    }

    // 获取用户的评分列表
    public List<Rating> getRatings() {
        return ratings;
    }

    // 设置用户的评分列表
    public void setRatings(List<Rating> ratings) {
        this.ratings = ratings;
    }

    // 添加评分并更新平均评分、最高评分、最低评分和评分数量
    public void addRating(Rating rating,Product product) {
        double newScore = rating.getScore();
        this.ratings.add(rating);

        // 更新平均值
        double delta = newScore - averageRating;
        ratingCount++;
        averageRating += delta / ratingCount;

        // 更新 M2 并计算标准差
        M2 += delta * (newScore - averageRating);
        if (ratingCount > 1) {
            stddevRating = Math.sqrt(M2 / ratingCount);
        } else {
            stddevRating = 0;
        }

        // 更新最高评分和最低评分
        if (newScore > highestRating) {
            highestRating = newScore;
        }
        if (newScore < lowestRating) {
            lowestRating = newScore;
        }

        // 如果评分 > 3.5，更新最近的高评分产品和种类
        if (newScore > 3.5) {
            recentHighRatings.offer(rating);
            updateRecentHighCategories(product);
            userRatedProduct1 = rating.getProductId(); // 最近评分 >3.5 的 productId
        }

        // 保持队列大小，最多保留最近3个评分
        while (recentHighRatings.size() > 3) {
            recentHighRatings.poll();
        }
    }
    private void updateRecentHighCategories(Product product) {
        if (product.getCategories() != null && !product.getCategories().isEmpty()) {
            String category = product.getCategories().get(0); // 取第一个类别
            if (!recentHighCategories.contains(category)) {
                recentHighCategories.add(category);
            }

            // 维护最近3个高评分种类
            List<String> categories = new ArrayList<>(recentHighCategories);
            if (categories.size() > 3) {
                categories = categories.subList(categories.size() - 3, categories.size());
            }

            userCategory1 = categories.size() > 0 ? categories.get(0) : "";
            userCategory2 = categories.size() > 1 ? categories.get(1) : "";
            userCategory3 = categories.size() > 2 ? categories.get(2) : "";
        }
    }
    public double getStddevRating() {
        return stddevRating;
    }

    public String getUserCategory1() {
        return userCategory1;
    }

    public String getUserCategory2() {
        return userCategory2;
    }

    public String getUserCategory3() {
        return userCategory3;
    }
    public Integer getUserRatedProduct1() {
        return userRatedProduct1;
    }
    // 获取平均评分
    public double getAverageRating() {
        return averageRating;
    }

    // 设置平均评分
    public void setAverageRating(double averageRating) {
        this.averageRating = averageRating;
    }

    // 获取最高评分
    public double getHighestRating() {
        return highestRating;
    }

    // 设置最高评分
    public void setHighestRating(double highestRating) {
        this.highestRating = highestRating;
    }

    // 获取最低评分
    public double getLowestRating() {
        return lowestRating;
    }

    // 设置最低评分
    public void setLowestRating(double lowestRating) {
        this.lowestRating = lowestRating;
    }

    // 获取评分数量
    public int getRatingCount() {
        return ratingCount;
    }

    // 设置评分数量
    public void setRatingCount(int ratingCount) {
        this.ratingCount = ratingCount;
    }

    // 获取嵌入向量
    public Embedding getEmb() {
        return emb;
    }

    // 设置嵌入向量
    public void setEmb(Embedding emb) {
        this.emb = emb;
    }

    // 获取用户特征映射
    public Map<String, String> getUserFeatures() {
        return userFeatures;
    }

    // 设置用户特征映射
    public void setUserFeatures(Map<String, String> userFeatures) {
        this.userFeatures = userFeatures;
    }
}