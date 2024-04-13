<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,java.io.*,java.util.*" %>

<%
  session = request.getSession(false); // 获取已有的 session，如果没有则返回 null
  String username = request.getParameter("username");
  String password = request.getParameter("password");

  if ("admin".equals(username) && "111".equals(password)) {
    // 登录成功
    if (session == null) {
      session = request.getSession(true); // 如果不存在 session，则创建一个新的 session
    }
    session.setAttribute("username", username);
    response.sendRedirect("main.jsp"); // 跳转到主页面
  } else {
    // 用户名或密码错误
    response.sendRedirect("login.jsp"); // 跳转回登录页面
  }
%>
