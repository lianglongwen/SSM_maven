<%@ page import="com.llw.model.User" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <script src="/ssm/js/jquery-3.2.1.min.js"></script>
</head>
<%
    User user = (User)request.getAttribute("user");
%>
<script>
    var contextPath="<%=request.getContextPath()%>";
    function goIndex(){
        alert(1);
    }
</script>
<body>
<h1>欢迎您<%=user.getName()%></h1>
<a href="<%=request.getContextPath()%>/user/index">返回首页</a>
</body>
</html>
