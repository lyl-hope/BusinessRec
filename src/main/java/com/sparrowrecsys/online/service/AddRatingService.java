package com.sparrowrecsys.online.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sparrowrecsys.online.datamanager.DataManager;
import com.sparrowrecsys.online.datamanager.Rating;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * AddRatingService 类，解析 URL 中的 userId 和 clicked_items，使用 addRatingForUser 添加评分
 */
public class AddRatingService extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        try {
            // 设置响应内容类型为JSON
            response.setContentType("application/json");
            // 设置响应状态为200 OK
            response.setStatus(HttpServletResponse.SC_OK);
            // 设置响应字符编码为UTF-8
            response.setCharacterEncoding("UTF-8");
            // 设置允许跨域访问
            response.setHeader("Access-Control-Allow-Origin", "*");

            // 获取请求中的参数
            String userIdStr = request.getParameter("userId");
            String clickedItemsStr = request.getParameter("clicked_items");
            String scoreStr = request.getParameter("score");
            //String temp = request.getParameter("score");
            //System.out.println(scoreStr);
            // 判断参数是否为空
            if (userIdStr == null || clickedItemsStr == null) {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                response.getWriter().println("{\"error\": \"Missing required parameters: userId and clicked_items.\"}");
                return;
            }

            // 解析 userId
            int userId = Integer.parseInt(userIdStr);
            int productId = Integer.parseInt(clickedItemsStr);
            float score = scoreStr == null?-1:Float.parseFloat(scoreStr);
            boolean success =DataManager.getInstance().addRatingForUser(userId, productId, score);
            if (!success) {
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                response.getWriter().println("{\"error\": \"Failed to add rating for productId " + productId + "\"}");
                return;
            }



//            // 解析 clicked_items 数组
//            List<Integer> clickedItems = Arrays.stream(clickedItemsStr.split(","))
//                    .map(Integer::parseInt)
//                    .collect(Collectors.toList());

//             遍历 clicked_items，为每个 productId 添加评分




            // 返回成功响应
            response.getWriter().println("{\"status\": \"success\"}");

        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().println("{\"error\": \"An error occurred while adding ratings.\"}");
        }
    }
}
