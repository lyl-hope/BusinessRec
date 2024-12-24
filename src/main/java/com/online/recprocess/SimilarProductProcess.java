package com.online.recprocess;

import com.online.datamanager.DataManager;
import com.online.datamanager.Product;
import java.util.*;

/**
 * 推荐相似电影的处理类
 */
public class SimilarProductProcess {

    /**
     * 获取推荐电影列表
     * @param productId 输入的电影ID
     * @param size 推荐电影的数量
     * @param model 用于计算相似度的模型
     * @return 相似电影列表
     */
    public static List<Product> getRecList(int productId, int size, String model){
        // 根据电影ID获取电影对象
        Product product = DataManager.getInstance().getProductById(productId);
        if (null == product){
            return new ArrayList<>();
        }
        // 生成候选电影列表
        List<Product> candidates = candidateGenerator(product);
        // 对候选电影进行排序
        List<Product> rankedList = ranker(product, candidates, model);

        // 返回前size个推荐电影
        if (rankedList.size() > size){
            return rankedList.subList(0, size);
        }
        return rankedList;
    }

    /**
     * 生成相似电影的候选集
     * @param product 输入的电影对象
     * @return 候选电影列表
     */
    public static List<Product> candidateGenerator(Product product){
        HashMap<Integer, Product> candidateMap = new HashMap<>();
        // 根据电影类型生成候选集
        for (String category : product.getCategories()){
            List<Product> oneCandidates = DataManager.getInstance().getProductsByCategory(category, 100, "rating");
            for (Product candidate : oneCandidates){
                candidateMap.put(candidate.getProductId(), candidate);
            }
        }
        // 移除输入的电影本身
        candidateMap.remove(product.getProductId());
        return new ArrayList<>(candidateMap.values());
    }

    /**
     * 多重检索候选集生成方法
     * @param product 输入的电影对象
     * @return 候选电影列表
     */
    public static List<Product> multipleRetrievalCandidates(Product product){
        if (null == product){
            return null;
        }

        HashSet<String> categories = new HashSet<>(product.getCategories());

        HashMap<Integer, Product> candidateMap = new HashMap<>();
        // 根据电影类型生成候选集
        for (String category : categories){
            List<Product> oneCandidates = DataManager.getInstance().getProductsByCategory(category, 20, "rating");
            for (Product candidate : oneCandidates){
                candidateMap.put(candidate.getProductId(), candidate);
            }
        }

        // 获取高评分电影作为候选集
        List<Product> highRatingCandidates = DataManager.getInstance().getProducts(100, "rating");
        for (Product candidate : highRatingCandidates){
            candidateMap.put(candidate.getProductId(), candidate);
        }

        // 获取最新电影作为候选集
        List<Product> latestCandidates = DataManager.getInstance().getProducts(100, "releaseYear");
        for (Product candidate : latestCandidates){
            candidateMap.put(candidate.getProductId(), candidate);
        }

        // 移除输入的电影本身
        candidateMap.remove(product.getProductId());
        return new ArrayList<>(candidateMap.values());
    }

    /**
     * 基于嵌入向量的候选集生成方法
     * @param product 输入的电影对象
     * @param size 候选集的大小
     * @return 候选电影列表
     */
    public static List<Product> retrievalCandidatesByEmbedding(Product product, int size){
        if (null == product || null == product.getEmb()){
            return null;
        }

        // 获取所有电影并计算相似度
        List<Product> allCandidates = DataManager.getInstance().getProducts(10000, "rating");
        HashMap<Product,Double> productScoreMap = new HashMap<>();
        for (Product candidate : allCandidates){
            double similarity = calculateEmbSimilarScore(product, candidate);
            productScoreMap.put(candidate, similarity);
        }

        // 对候选电影按相似度排序
        List<Map.Entry<Product,Double>> productScoreList = new ArrayList<>(productScoreMap.entrySet());
        productScoreList.sort(Map.Entry.comparingByValue());

        List<Product> candidates = new ArrayList<>();
        for (Map.Entry<Product,Double> productScoreEntry : productScoreList){
            candidates.add(productScoreEntry.getKey());
        }

        return candidates.subList(0, Math.min(candidates.size(), size));
    }

    /**
     * 对候选电影进行排序
     * @param product 输入的电影对象
     * @param candidates 候选电影列表
     * @param model 用于排序的模型名称
     * @return 排序后的电影列表
     */
    public static List<Product> ranker(Product product, List<Product> candidates, String model){
        HashMap<Product, Double> candidateScoreMap = new HashMap<>();
        for (Product candidate : candidates){
            double similarity;
            switch (model){
                case "emb":
                    // 使用嵌入向量计算相似度
                    similarity = calculateEmbSimilarScore(product, candidate);
                    break;
                default:
                    // 使用默认方法计算相似度
                    similarity = calculateSimilarScore(product, candidate);
            }
            candidateScoreMap.put(candidate, similarity);
        }
        // 对候选电影按相似度排序
        List<Product> rankedList = new ArrayList<>();
        candidateScoreMap.entrySet().stream().sorted(Map.Entry.comparingByValue(Comparator.reverseOrder())).forEach(m -> rankedList.add(m.getKey()));
        return rankedList;
    }

    /**
     * 计算相似度得分
     * @param product 输入的电影对象
     * @param candidate 候选电影
     * @return 相似度得分
     */
    public static double calculateSimilarScore(Product product, Product candidate){
        int sameGenreCount = 0;
        // 计算相同类型的数量
        for (String genre : product.getCategories()){
            if (candidate.getCategories().contains(genre)){
                sameGenreCount++;
            }
        }
        // 计算类型相似度
        double genreSimilarity = (double)sameGenreCount / (product.getCategories().size() + candidate.getCategories().size()) / 2;
        // 计算评分得分
        double ratingScore = candidate.getAverageRating() / 5;

        double similarityWeight = 0.7;
        double ratingScoreWeight = 0.3;

        // 返回综合相似度得分
        return genreSimilarity * similarityWeight + ratingScore * ratingScoreWeight;
    }

    /**
     * 基于嵌入向量计算相似度得分
     * @param product 输入的电影对象
     * @param candidate 候选电影
     * @return 相似度得分
     */
    public static double calculateEmbSimilarScore(Product product, Product candidate){
        if (null == product || null == candidate){
            return -1;
        }
        return product.getEmb().calculateSimilarity(candidate.getEmb());
    }
}