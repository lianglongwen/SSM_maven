<%--
  Created by IntelliJ IDEA.
  User: gzgi_admin
  Date: 2022/6/8
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<style>
    body{
        margin: 0px auto;
        padding: 0px;
    }
    #shops{
        width: 1010px;
        list-style-type:none;
    }
    #shops .shop .shop_left{
        display: inline-block;
        width: 100px;
        height: 100px;
        float: left;
    }
    #shops .shop .shop_left img{
        width: 100%;
        height: 100%;
    }
    #shops .shop .shop_right{
        display: inline-block;
        width: 900px;
        height: 100px;
        text-align: left;
        float: left;
    }
    #shops .shop .shop_right .shop_right_top{
        width: 100%;
        font-size: 20px;
        font-weight: bolder;
        color: black;
        margin: 10px;
    }
    #shops .shop .shop_right .shop_right_bottom{
        width: 100%;
        font-size: 12px;
        font-size: 12px;
        color: gray;
        margin: 10px;
    }
</style>
<body>
<h1>这是首页</h1>
<%if (request.getSession().getAttribute("account")==null){%>
<a href="<%=request.getContextPath()%>/user/login">登录</a>
<%}else{%>
<a>注销</a>
<%}%>
<%=request.getSession().getAttribute("account")%>
<div>
    <ul id="shops" class="shops">
        <li class="shop">
            <%--左边显示店铺招牌--%>
            <div class="shop_left"><img src="<%=request.getContextPath()%>/images/chabaidao.jpg"></div>
            <%--右边显示店铺名称及介绍--%>
            <div class="shop_right">
                <p class="shop_right_top">茶百道（大石店）</p>
                <p class="shop_right_bottom">买一送一，赶紧来喝</p>
            </div>
        </li>
        <li class="shop">
            <%--左边显示店铺招牌--%>
            <div class="shop_left"><img src="<%=request.getContextPath()%>/images/chabaidao.jpg"></div>
            <%--右边显示店铺名称及介绍--%>
            <div class="shop_right">
                <p class="shop_right_top">茶百道（大石店）</p>
                <p class="shop_right_bottom">买一送一，赶紧来喝</p>
            </div>
        </li>
    </ul>
</div>
</body>
</html>
