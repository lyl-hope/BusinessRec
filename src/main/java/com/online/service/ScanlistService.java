package com.online.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.online.datamanager.DataManager;
import com.online.datamanager.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

/**
 * ScanlistService 类，提供获取用户 scanlist 的服务
 */
public class ScanlistService extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        try {
            // 设置响应内容类型为 JSON
            response.setContentType("application/json");
            // 设置响应状态为 200 OK
            response.setStatus(HttpServletResponse.SC_OK);
            // 设置响应字符编码为 UTF-8
            response.setCharacterEncoding("UTF-8");
            // 设置允许跨域访问
            response.setHeader("Access-Control-Allow-Origin", "*");

            // 获取请求中的参数
            String userIdStr = request.getParameter("userId");
            String sizeStr = request.getParameter("size");

            // 检查是否提供了 userId 参数
            if (userIdStr == null) {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                response.getWriter().println("{\"error\": \"Missing required parameter: userId\"}");
                return;
            }

            // 解析 userId 和 size
            int userId = Integer.parseInt(userIdStr);
            int size = sizeStr != null ? Integer.parseInt(sizeStr) : Integer.MAX_VALUE; // 如果 size 未提供，则返回完整列表

            // 获取用户对象
            User user = DataManager.getInstance().getUserById(userId);
            if (user == null) {
                response.setStatus(HttpServletResponse.SC_NOT_FOUND);
                response.getWriter().println("{\"error\": \"User not found for userId: " + userId + "\"}");
                return;
            }

            // 获取用户的 scanlist
            List<Integer> scanlist = user.getScanlist(size);

            // 构建返回的 JSON 对象
            HashMap<String, List<Integer>> result = new HashMap<>();
            result.put("productId", scanlist);

            // 将结果转换为 JSON 格式并返回
            ObjectMapper mapper = new ObjectMapper();
            String jsonResponse = mapper.writeValueAsString(result);
            response.getWriter().println(jsonResponse);

        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().println("{\"error\": \"An error occurred while retrieving scanlist.\"}");
        }
    }
}
