<%@ page import="com.llw.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <script src="/ssm/js/jquery-3.2.1.min.js"></script>
</head>
<%
    User user = (User)request.getAttribute("user");
%>
<body>
<h1>欢迎您<%=user.getName()%></h1>
</body>
</html>