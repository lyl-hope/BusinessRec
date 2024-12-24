package com.online.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.online.datamanager.DataManager;
import com.online.datamanager.Product;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * ProductService 类，返回特定电影的信息
 */
public class ProductService extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws IOException {
        try {
            // 设置响应内容类型为JSON
            response.setContentType("application/json");
            // 设置响应状态为200 OK
            response.setStatus(HttpServletResponse.SC_OK);
            // 设置响应字符编码为UTF-8
            response.setCharacterEncoding("UTF-8");
            // 设置允许跨域访问
            response.setHeader("Access-Control-Allow-Origin", "*");

            // 通过URL参数获取电影ID
            String productId = request.getParameter("id");

            // 从DataManager获取电影对象
            Product product = DataManager.getInstance().getProductById(Integer.parseInt(productId));

            // 将电影对象转换为JSON格式并返回
            if (null != product) {
                ObjectMapper mapper = new ObjectMapper();
                String jsonProduct = mapper.writeValueAsString(product);
                response.getWriter().println(jsonProduct);
            } else {
                response.getWriter().println("");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("");
        }
    }
}