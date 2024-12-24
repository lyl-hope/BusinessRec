package com.online.service;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.io.BufferedReader;
import java.io.InputStreamReader;
/**
 * RecommendationClient 类，调用推荐服务并返回结果
 */
public class RecommendationClient extends HttpServlet {

    private static final String RECOMMENDATION_URL = "http://192.168.237.128:5000/recommend";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            // 设置响应内容类型为JSON
            response.setContentType("application/json");
            response.setStatus(HttpServletResponse.SC_OK);
            response.setCharacterEncoding("UTF-8");
            response.setHeader("Access-Control-Allow-Origin", "*");

            // 获取请求中的 user_id 和 clicked_items 参数
            String userId = request.getParameter("user_id");
            String clickedItems = request.getParameter("clicked_items");

            // 构造请求体
            Map<String, Object> requestBody = new HashMap<>();
            requestBody.put("user_id", userId);
            requestBody.put("clicked_items", clickedItems.split(","));

            // 将请求体转换为 JSON
            ObjectMapper mapper = new ObjectMapper();
            String jsonRequestBody = mapper.writeValueAsString(requestBody);

            // 调用推荐服务
            String jsonResponse = callRecommendationService(jsonRequestBody);

            // 解析服务返回的响应
            String finalResponse = processRecommendationResponse(jsonResponse);

            // 返回结果
            response.getWriter().println(finalResponse);

        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().println("{\"error\": \"Unable to process the recommendation request.\"}");
        }
    }

    private String callRecommendationService(String jsonRequestBody) throws IOException {
        // 创建 HTTP 连接
        URL url = new URL(RECOMMENDATION_URL);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("POST");
        connection.setRequestProperty("Content-Type", "application/json");
        connection.setDoOutput(true);

        // 发送请求数据
        try (OutputStream os = connection.getOutputStream()) {
            os.write(jsonRequestBody.getBytes());
            os.flush();
        }

        // 读取响应
        StringBuilder responseBuilder = new StringBuilder();
        BufferedReader reader = null;
        try {
            // 从连接中获取输入流
            reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String line;
            // 逐行读取响应
            while ((line = reader.readLine()) != null) {
                responseBuilder.append(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            // 确保缓冲区流被关闭
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

// 返回最终的响应内容
        return responseBuilder.toString();

    }

    private String processRecommendationResponse(String jsonResponse) throws IOException {
        // 解析推荐服务的响应
        ObjectMapper mapper = new ObjectMapper();
        String userId = "";
        double prediction = 0;

        // 假设响应的格式是 [["92724", 0.6125262979778072]]
        String[][] responseArray = mapper.readValue(jsonResponse, String[][].class);
        if (responseArray.length > 0 && responseArray[0].length == 2) {
            userId = responseArray[0][0];
            prediction = Double.parseDouble(responseArray[0][1]);
        }

        // 构造最终返回的 JSON 对象
        Map<String, Object> result = new HashMap<>();
        result.put("userId", userId);
        result.put("prediction", prediction);

        return mapper.writeValueAsString(result);
    }
}
