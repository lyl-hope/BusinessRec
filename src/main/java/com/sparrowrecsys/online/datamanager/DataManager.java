package com.sparrowrecsys.online.datamanager;

import com.sparrowrecsys.online.util.Config;
import com.sparrowrecsys.online.util.Utility;

import java.io.File;
import java.util.*;
/*
66666666666666666666
 */
/*
77777777777777777777777777
 */
/*
88888888888888888889
 */
/**
 * DataManager 是一个工具类，负责所有的数据加载逻辑。
 */
public class DataManager {
    // 单例实例
    private static volatile DataManager instance;
    // 存储电影数据的映射
    HashMap<Integer, Product> productMap;
    // 存储用户数据的映射
    HashMap<Integer, User> userMap;
    // 类型反向索引，用于快速查询某类型的所有电影
    HashMap<String, List<Product>> categoryReverseIndexMap;
    HashMap<String, List<Product>> tagReverseIndexMap;
    // 私有构造函数，初始化数据结构
    private DataManager(){
        this.productMap = new HashMap<>();
        this.userMap = new HashMap<>();
        this.categoryReverseIndexMap = new HashMap<>();
        this.tagReverseIndexMap = new HashMap<>();
        instance = this;
    }

    // 获取单例实例
    public static DataManager getInstance(){
        if (null == instance){
            synchronized (DataManager.class){
                if (null == instance){
                    instance = new DataManager();
                }
            }
        }
        return instance;
    }

    // 从文件系统加载数据，包括电影、评分、链接数据和模型数据如嵌入向量
    public void loadData(String productDataPath, String ratingDataPath, String movieEmbPath, String userEmbPath, String movieRedisKey, String userRedisKey) throws Exception{
        loadProductData(productDataPath);
        //loadLinkData(linkDataPath);
        loadRatingData(ratingDataPath);
        loadProductEmb(movieEmbPath, movieRedisKey);
        if (Config.IS_LOAD_ITEM_FEATURE_FROM_REDIS){
            loadProductFeatures("mf:");
        }
        loadUserEmb(userEmbPath, userRedisKey);
    }

    // 从movies.csv加载电影数据
    private void loadProductData(String productDataPath) throws Exception{
        System.out.println("Loading product data from " + productDataPath + " ...");
        //boolean skipFirstLine = false;
        try (Scanner scanner = new Scanner(new File(productDataPath))) {
            while (scanner.hasNextLine()) {
                String productRawData = scanner.nextLine();
//                if (skipFirstLine) {
//                    skipFirstLine = false;
//                    continue;
//                }
                String[] productData = productRawData.split("\\^"); // 使用^分割
                if (productData.length == 7) { // 确保数据长度匹配
                    Product product = new Product();
                    product.setProductId(Integer.parseInt(productData[0].trim())); // 解析产品ID
                    product.setTitle(productData[1].trim()); // 解析产品名称
                    String genres = productData[5];
                    if (!genres.trim().isEmpty()){
                        String[] genreArray = genres.split("\\|");
                        for (String genre : genreArray){
                            product.addCategory(genre);
                            addProduct2CategoryIndex(genre, product);
                        }
                    }
                   // product.setCategoriesId(productData[2].trim()); // 解析类别ID
                    //product.setAmazonId(productData[3].trim()); // 解析Amazon ID
                    //product.setImageUrl(productData[4].trim()); // 解析图片URL
                    //product.setCategories(productData[5].trim()); // 解析类别
                    //product.setTags(productData[6].trim()); // 解析标签
                    String tags = productData[6];
                    if (!tags.trim().isEmpty()){
                        String[] tagArray = tags.split("\\|");
                        for (String tag : tagArray){
                            product.addTag(tag);
                            addProduct2TagIndex(tag, product);
                        }
                    }
                    // 假设你有一个Map来存储Product对象，类似movieMap
                    this.productMap.put(product.getProductId(), product);
                }
            }
        }
        System.out.println("Loading product data completed. " + this.productMap.size() + " products in total.");
    }

    // 加载电影嵌入向量
    private void loadProductEmb(String productEmbPath, String embKey) throws Exception {
        if (Config.EMB_DATA_SOURCE.equals(Config.DATA_SOURCE_FILE)) {
            System.out.println("Loading product embedding from " + productEmbPath + " ...");
            int validEmbCount = 0;
            try (Scanner scanner = new Scanner(new File(productEmbPath))) {
                while (scanner.hasNextLine()) {
                    String productRawEmbData = scanner.nextLine();
                    String[] productEmbData = productRawEmbData.split(":");
                    if (productEmbData.length == 2) {
                        Product p = getProductById(Integer.parseInt(productEmbData[0])); // 修改为根据产品ID获取产品
                        if (null == p) {
                            continue;
                        }
                        p.setEmb(Utility.parseEmbStr(productEmbData[1])); // 设置产品的嵌入向量
                        validEmbCount++;
                    }
                }
            }
            System.out.println("Loading product embedding completed. " + validEmbCount + " product embeddings in total.");
        } else {
            System.out.println("Loading product embedding from Redis ...");
            Set<String> productEmbKeys = RedisClient.getInstance().keys(embKey + "*");
            int validEmbCount = 0;
            for (String productEmbKey : productEmbKeys) {
                String productId = productEmbKey.split(":")[1];
                Product p = getProductById(Integer.parseInt(productId)); // 修改为根据产品ID获取产品
                if (null == p) {
                    continue;
                }
                p.setEmb(Utility.parseEmbStr(RedisClient.getInstance().get(productEmbKey))); // 设置产品的嵌入向量
                validEmbCount++;
            }
            System.out.println("Loading product embedding completed. " + validEmbCount + " product embeddings in total.");
        }
    }


    // 加载电影特征
    private void loadProductFeatures(String productFeaturesPrefix) throws Exception {
        System.out.println("Loading product features from Redis ...");
        Set<String> productFeaturesKeys = RedisClient.getInstance().keys(productFeaturesPrefix + "*");
        int validFeaturesCount = 0;
        for (String productFeaturesKey : productFeaturesKeys) {
            String productId = productFeaturesKey.split(":")[1];
            Product p = getProductById(Integer.parseInt(productId));  // 修改为根据产品ID获取产品
            if (null == p) {
                continue;
            }
            p.setProductFeatures(RedisClient.getInstance().hgetAll(productFeaturesKey));  // 修改为设置产品特征
            validFeaturesCount++;
        }
        System.out.println("Loading product features completed. " + validFeaturesCount + " product features in total.");
    }


    // 加载用户嵌入向量
    private void loadUserEmb(String userEmbPath, String embKey) throws Exception{
        if (Config.EMB_DATA_SOURCE.equals(Config.DATA_SOURCE_FILE)) {
            System.out.println("Loading user embedding from " + userEmbPath + " ...");
            int validEmbCount = 0;
            try (Scanner scanner = new Scanner(new File(userEmbPath))) {
                while (scanner.hasNextLine()) {
                    String userRawEmbData = scanner.nextLine();
                    String[] userEmbData = userRawEmbData.split(":");
                    if (userEmbData.length == 2) {
                        User u = getUserById(Integer.parseInt(userEmbData[0]));
                        if (null == u) {
                            continue;
                        }
                        u.setEmb(Utility.parseEmbStr(userEmbData[1]));
                        validEmbCount++;
                    }
                }
            }
            System.out.println("Loading user embedding completed. " + validEmbCount + " user embeddings in total.");
        }
    }

    // 解析上映年份
//    private int parseReleaseYear(String rawTitle){
//        if (null == rawTitle || rawTitle.trim().length() < 6){
//            return -1;
//        } else {
//            String yearString = rawTitle.trim().substring(rawTitle.length()-5, rawTitle.length()-1);
//            try {
//                return Integer.parseInt(yearString);
//            } catch (NumberFormatException exception) {
//                return -1;
//            }
//        }
//    }
//
//    // 从links.csv加载链接数据
//    private void loadLinkData(String linkDataPath) throws Exception{
//        System.out.println("Loading link data from " + linkDataPath + " ...");
//        int count = 0;
//        boolean skipFirstLine = true;
//        try (Scanner scanner = new Scanner(new File(linkDataPath))) {
//            while (scanner.hasNextLine()) {
//                String linkRawData = scanner.nextLine();
//                if (skipFirstLine){
//                    skipFirstLine = false;
//                    continue;
//                }
//                String[] linkData = linkRawData.split(",");
//                if (linkData.length == 3){
//                    int productId = Integer.parseInt(linkData[0]);
//                    Movie movie = this.movieMap.get(productId);
//                    if (null != movie){
//                        count++;
//                        movie.setImdbId(linkData[1].trim());
//                        movie.setTmdbId(linkData[2].trim());
//                    }
//                }
//            }
//        }
//        System.out.println("Loading link data completed. " + count + " links in total.");
//    }

    // 从ratings.csv加载评分数据
    private void loadRatingData(String ratingDataPath) throws Exception {
        System.out.println("Loading rating data from " + ratingDataPath + " ...");
        int count = 0;
        try (Scanner scanner = new Scanner(new File(ratingDataPath))) {
            while (scanner.hasNextLine()) {
                String ratingRawData = scanner.nextLine();
                String[] ratingData = ratingRawData.split(","); // 使用逗号分隔
                if (ratingData.length == 4) { // 确保数据长度匹配
                    count++;
                    Rating rating = new Rating();
                    rating.setUserId(Integer.parseInt(ratingData[0])); // 解析用户ID
                    rating.setProductId(Integer.parseInt(ratingData[1])); // 解析产品ID
                    rating.setScore(Float.parseFloat(ratingData[2])); // 解析评分
                    rating.setTimestamp(Long.parseLong(ratingData[3])); // 解析时间戳

                    // 获取对应的产品对象
                    Product product = this.productMap.get(rating.getProductId());
                    if (null != product) {
                        product.addRating(rating); // 将评分添加到产品对象中
                    }

                    // 如果用户不存在，则创建新用户并添加到 userMap
                    if (!this.userMap.containsKey(rating.getUserId())) {
                        User user = new User();
                        user.setUserId(rating.getUserId());
                        this.userMap.put(user.getUserId(), user);
                    }
                    // 将评分添加到用户对象中
                    this.userMap.get(rating.getUserId()).addRating(rating,product);
                }
            }
        }
        System.out.println("Loading rating data completed. " + count + " ratings in total.");
    }
    // 自动生成一个 userId 并添加新用户
    public synchronized int addUserAutomatically() {
        int newUserId = generateUniqueUserId();
        User newUser = new User();
        newUser.setUserId(newUserId);
        userMap.put(newUserId, newUser);
        return newUserId;
    }

    // 生成不重复的 userId
    private int generateUniqueUserId() {
        int newUserId = 1; // 从 1 开始生成
        while (userMap.containsKey(newUserId)) {
            newUserId++;
        }
        return newUserId;
    }
    // 给指定 userId 的用户添加评分
    public synchronized boolean addRatingForUser(int userId, int productId, float score) {
        User user = userMap.get(userId);
        Product product = productMap.get(productId);
        if (user == null||product == null) {
            System.out.println("用户不存在: " + userId);
            return false;
        }

        // 自动生成时间戳
        long timestamp = System.currentTimeMillis();
        Rating rating = new Rating();
        rating.setUserId(userId); // 解析用户ID
        rating.setProductId(productId); // 解析产品ID
        rating.setScore(score); // 解析评分
        rating.setTimestamp(timestamp); // 解析时间戳
        // 调用 User 的 addRating 方法
        user.addRating(rating,product);
        return true;
    }
    // 将电影添加到类型反向索引中
    private void addProduct2CategoryIndex(String category, Product product) {
        if (!this.categoryReverseIndexMap.containsKey(category)) {
            this.categoryReverseIndexMap.put(category, new ArrayList<>());
        }
        this.categoryReverseIndexMap.get(category).add(product);
    }
    // 将电影添加到类型反向索引中tag
    private void addProduct2TagIndex(String tag, Product product) {
        if (!this.tagReverseIndexMap.containsKey(tag)) {
            this.tagReverseIndexMap.put(tag, new ArrayList<>());
        }
        this.tagReverseIndexMap.get(tag).add(product);
    }

    // 根据类型获取电影，并按sortBy方法排序
//    public List<Movie> getMoviesByGenre(String genre, int size, String sortBy){
//        if (null != genre){
//            List<Movie> movies = new ArrayList<>(this.genreReverseIndexMap.get(genre));
//            switch (sortBy){
//                case "rating":
//                    movies.sort((m1, m2) -> Double.compare(m2.getAverageRating(), m1.getAverageRating()));
//                    break;
//                case "releaseYear":
//                    movies.sort((m1, m2) -> Integer.compare(m2.getReleaseYear(), m1.getReleaseYear()));
//                    break;
//                default:
//            }
//
//            if (movies.size() > size){
//                return movies.subList(0, size);
//            }
//            return movies;
//        }
//        return null;
//    }
    public List<Product> getProductsByCategory(String category, int size, String sortBy) {
        if (null != category) {
            // 从 categoryReverseIndexMap 获取指定类别的产品列表
            List<Product> products = new ArrayList<>(this.categoryReverseIndexMap.getOrDefault(category, new ArrayList<>()));

            // 根据 sortBy 参数选择排序规则
            switch (sortBy) {
                case "rating":
                    // 按评分从高到低排序
                    products.sort((p1, p2) -> Double.compare(p2.getAverageRating(), p1.getAverageRating()));
                    break;
                case "price"://maybe unused
                    // 按价格从低到高排序
                    //products.sort((p1, p2) -> Double.compare(p1.getPrice(), p2.getPrice()));
                    products.sort((p1, p2) -> Double.compare(p2.getAverageRating(), p1.getAverageRating()));
                    break;
                default:
                    // 不进行排序
            }

            // 如果产品数量超过 size，返回前 size 个产品的子列表
            if (products.size() > size) {
                return products.subList(0, size);
            }
            return products; // 否则返回完整列表
        }
        return null; // 如果类别为空，返回 null
    }
    public int getProductsSizeByCategory(String category) {
        if (null != category) {
            // 从 categoryReverseIndexMap 获取指定类别的产品列表
            List<Product> products = new ArrayList<>(this.categoryReverseIndexMap.getOrDefault(category, new ArrayList<>()));
            return products.size(); // 否则返回完整列表
        }
        return 0; // 如果类别为空，返回 null
    }
    // 获取前N部电影，并按sortBy方法排序
//    public List<Movie> getMovies(int size, String sortBy){
//        List<Movie> movies = new ArrayList<>(movieMap.values());
//        switch (sortBy){
//            case "rating":
//                movies.sort((m1, m2) -> Double.compare(m2.getAverageRating(), m1.getAverageRating()));
//                break;
//            case "releaseYear":
//                movies.sort((m1, m2) -> Integer.compare(m2.getReleaseYear(), m1.getReleaseYear()));
//                break;
//            default:
//        }
//
//        if (movies.size() > size){
//            return movies.subList(0, size);
//        }
//        return movies;
//    }
    public List<Product> getProducts(int size, String sortBy) {
        List<Product> products = new ArrayList<>(productMap.values()); // 假设 productMap 存储所有产品
        switch (sortBy) {
            case "rating":
                // 按评分从高到低排序
                products.sort((p1, p2) -> Double.compare(p2.getAverageRating(), p1.getAverageRating()));
                break;
            case "price":
                // 按价格从低到高排序
                //products.sort((p1, p2) -> Double.compare(p1.getPrice(), p2.getPrice()));
                products.sort((p1, p2) -> Double.compare(p2.getAverageRating(), p1.getAverageRating()));
                break;
            default:
                // 不排序
        }

        // 如果产品数量超过 size，返回子列表
        if (products.size() > size) {
            return products.subList(0, size);
        }
        return products; // 否则返回完整列表
    }

    // 根据电影ID获取电影对象
//    public Movie getMovieById(int productId){
//        return this.movieMap.get(productId);
//    }
    public Product getProductById(int productId){
        return this.productMap.get(productId);
    }
    // 根据用户ID获取用户对象
    public User getUserById(int userId){
        return this.userMap.get(userId);
    }
}