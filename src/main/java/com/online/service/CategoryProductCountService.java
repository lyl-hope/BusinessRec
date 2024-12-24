package com.online.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.online.datamanager.DataManager;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * CategoryProductCountService 类，返回特定类别的产品数量
 */
public class CategoryProductCountService extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws IOException {
        try {
            // 设置响应内容类型为JSON
            response.setContentType("application/json");
            response.setStatus(HttpServletResponse.SC_OK);
            response.setCharacterEncoding("UTF-8");
            response.setHeader("Access-Control-Allow-Origin", "*");

            // 通过URL参数获取类别名
            String category = request.getParameter("category");

            // 检查参数是否为空
            if (category == null || category.isEmpty()) {
                response.getWriter().println("{\"error\": \"Missing category parameter\"}");
                return;
            }

            // 调用 DataManager 获取指定类别的产品数量
            int count = DataManager.getInstance().getProductsSizeByCategory(category);

            // 返回JSON格式的结果
            ObjectMapper mapper = new ObjectMapper();
            String jsonResponse = mapper.writeValueAsString(
                    new CategoryCountResponse(category, count)
            );
            response.getWriter().println(jsonResponse);

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("{\"error\": \"An error occurred\"}");
        }
    }

    // 内部类，用于返回 JSON 格式的响应
    private static class CategoryCountResponse {
        public String category;
        public int count;

        public CategoryCountResponse(String category, int count) {
            this.category = category;
            this.count = count;
        }
    }
}
