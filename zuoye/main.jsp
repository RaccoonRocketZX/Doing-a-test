<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Main Page</title>
</head>
<body>
<h2>Welcome to Main Page</h2>
<%
    session = request.getSession(false);
    String username = (String)session.getAttribute("username");
    if(username != null) {
        out.println("Logged in as: " + username);
    } else {
        response.sendRedirect("login.jsp");
    }
%>
</body>
</html>
