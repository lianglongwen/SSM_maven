<%@ page import="com.llw.model.User" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <script src="/ssm/js/jquery-3.2.1.min.js"></script>
</head>
<%
    String account = request.getSession().getAttribute("account")==null?"":(String) request.getSession().getAttribute("account");
%>
<script>
    var contextPath="<%=request.getContextPath()%>";
    function goIndex(){
        alert(1);
    }
</script>
<body>
<h1>欢迎您<%=account%></h1>
<%if (account.equals("root")){%>
<a href="<%=request.getContextPath()%>/shop/addPage">增加店铺</a>
<a href="#">增加商品</a>
<%}%>
<a href="<%=request.getContextPath()%>/user/index">返回首页</a>
</body>
</html>
