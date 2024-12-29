package com.online.recprocess;

import com.online.datamanager.DataManager;
import com.online.datamanager.User;
import com.online.datamanager.Product;
import com.online.datamanager.RedisClient;
import com.online.util.Config;
import com.online.util.Utility;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.*;

import static com.online.util.HttpClient.asyncSinglePostRequest;

/**
 * 推荐相似电影的处理类
 */
public class RecForYouProcess {

    /**
     * 获取推荐电影列表
     * @param userId 输入的用户ID
     * @param size 推荐电影的数量
     * @param model 用于计算相似度的模型
     * @return 推荐电影列表
     */
    public static List<Product> getRecList(int userId, int size, String model){
        // 获取用户对象
        User user = DataManager.getInstance().getUserById(userId);
        if (null == user){
            return new ArrayList<>();
        }
        final int CANDIDATE_SIZE = 100;
        // 获取候选电影列表
        List<Product> candidates = DataManager.getInstance().getProducts(CANDIDATE_SIZE, "rating");

        // 如果数据源是Redis，从Redis加载用户嵌入向量
        if (Config.EMB_DATA_SOURCE.equals(Config.DATA_SOURCE_REDIS)){
            String userEmbKey = "uEmb:" + userId;
            String userEmb = RedisClient.getInstance().get(userEmbKey);
            if (null != userEmb){
                user.setEmb(Utility.parseEmbStr(userEmb));
            }
        }

        // 如果需要从Redis加载用户特征，从Redis加载用户特征
        if (Config.IS_LOAD_USER_FEATURE_FROM_REDIS){
            String userFeaturesKey = "uf:" + userId;
            Map<String, String> userFeatures = RedisClient.getInstance().hgetAll(userFeaturesKey);
            if (null != userFeatures){
                user.setUserFeatures(userFeatures);
            }
        }

        // 对候选电影进行排序
        List<Product> rankedList = ranker(user, candidates, model);

        // 返回前size个推荐电影
        if (rankedList.size() > size){
            return rankedList.subList(0, size);
        }
        return rankedList;
    }

    /**
     * 对候选电影进行排序
     * @param user 输入的用户
     * @param candidates 候选电影列表
     * @param model 用于排序的模型名称
     * @return 排序后的电影列表
     */
    public static List<Product> ranker(User user, List<Product> candidates, String model){
        HashMap<Product, Double> candidateScoreMap = new HashMap<>();
        //model="tf_serving_mode";
        switch (model){
            case "emb":
                // 使用嵌入向量计算相似度
                for (Product candidate : candidates){
                    double similarity = calculateEmbSimilarScore(user, candidate);
                    candidateScoreMap.put(candidate, similarity);
                }
                break;
            case "nerualcf":
                // 调用神经协同过滤模型进行排序
                callNeuralCFTFServing(user, candidates, candidateScoreMap);
                break;
            case "tf_serving_mode":
                callTFserving(user,candidates,candidateScoreMap);
            default:
                // 默认按候选集中的顺序排序
                for (int i = 0 ; i < candidates.size(); i++){
                    candidateScoreMap.put(candidates.get(i), (double)(candidates.size() - i));
                }
        }

        // 将候选电影按得分排序
        List<Product> rankedList = new ArrayList<>();
        candidateScoreMap.entrySet().stream().sorted(Map.Entry.comparingByValue(Comparator.reverseOrder())).forEach(m -> rankedList.add(m.getKey()));
        return rankedList;
    }

    /**
     * 根据嵌入向量计算相似度得分
     * @param user 输入的用户
     * @param candidate 候选电影
     * @return 相似度得分
     */
    public static double calculateEmbSimilarScore(User user, Product candidate){
        if (null == user || null == candidate || null == user.getEmb()){
            return -1;
        }
        return user.getEmb().calculateSimilarity(candidate.getEmb());
    }

    /**
     * 调用TensorFlow Serving获取神经协同过滤模型的推理结果
     * @param user 输入的用户
     * @param candidates 候选电影列表
     * @param candidateScoreMap 保存预测得分的映射
     */
    public static void callNeuralCFTFServing(User user, List<Product> candidates, HashMap<Product, Double> candidateScoreMap){
        if (null == user || null == candidates || candidates.size() == 0){
            return;
        }

        // 构建请求的JSON对象
        JSONArray instances = new JSONArray();
        for (Product m : candidates){
            JSONObject instance = new JSONObject();
            instance.put("userId", user.getUserId());
            instance.put("productId", m.getProductId());
            instances.put(instance);
        }

        JSONObject instancesRoot = new JSONObject();
        instancesRoot.put("instances", instances);

        // 需要确认TensorFlow Serving的端点
        String predictionScores = asyncSinglePostRequest("http://localhost:8501/v1/models/recmodel:predict", instancesRoot.toString());
        System.out.println("send user" + user.getUserId() + " request to tf serving.");

        // 解析预测结果
        JSONObject predictionsObject = new JSONObject(predictionScores);
        JSONArray scores = predictionsObject.getJSONArray("predictions");
        for (int i = 0 ; i < candidates.size(); i++){
            candidateScoreMap.put(candidates.get(i), scores.getJSONArray(i).getDouble(0));
        }
    }
    public static void callTFserving(User user, List<Product> candidates, HashMap<Product, Double> candidateScoreMap){
        if (null == user || null == candidates || candidates.size() == 0){
            return;
        }

        // 构建请求的JSON对象
        JSONArray instances = new JSONArray();
        //JSONArray instances = new JSONArray();
        for (Product m : candidates) {
            JSONObject instance = new JSONObject();
            instance.put("productAvgRating", m.getAverageRating());
            instance.put("productRatingStddev", m.getStddevRating());
            instance.put("productRatingCount", m.getRatingNumber());
            instance.put("userAvgRating", user.getAverageRating());
            instance.put("userRatingStddev", user.getStddevRating());
            instance.put("userRatingCount", user.getRatingCount());
            instance.put("productId", m.getProductId());
            instance.put("userId", user.getUserId());
            instance.put("userRatedProduct1", user.getUserRatedProduct1());
            instance.put("userCategory1", user.getUserCategory1());
            instance.put("userCategory2", user.getUserCategory2());
            instance.put("userCategory3", user.getUserCategory3());

            // 防止访问越界，确保每个类别字段的正确性
            instance.put("productCategory1", m.getCategories().size() > 0 ? m.getCategories().get(0) : "");
            instance.put("productCategory2", m.getCategories().size() > 1 ? m.getCategories().get(1) : "");
            instance.put("productCategory3", m.getCategories().size() > 2 ? m.getCategories().get(2) : "");

            instances.put(instance);
        }

        JSONObject instancesRoot = new JSONObject();
        instancesRoot.put("instances", instances);
// 为了确保请求正确，加入 signature_name
        instancesRoot.put("signature_name", "serving_default");
        // 需要确认TensorFlow Serving的端点
        String predictionScores = asyncSinglePostRequest("http://localhost:8501/v1/models/finalmodel:predict", instancesRoot.toString());
        System.out.println("send user" + user.getUserId() + " request to tf serving.");
        //System.out.println(instancesRoot.toString());
        //System.out.println(predictionScores);
        // 解析预测结果
        JSONObject predictionsObject = new JSONObject(predictionScores);
        JSONArray scores = predictionsObject.getJSONArray("predictions");
        for (int i = 0 ; i < candidates.size(); i++){
            candidateScoreMap.put(candidates.get(i), scores.getJSONArray(i).getDouble(0));
        }
    }
}

/**
 * 调用TensorFlow Serving获取神经协同过滤模型的推理结果
 * @param user 输入的用户
 * @param candidates 候选电影列表
 * @param candidateScoreMap 保存预测得分的映射
 */
