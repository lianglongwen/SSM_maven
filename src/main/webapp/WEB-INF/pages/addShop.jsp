<%--
  Created by IntelliJ IDEA.
  User: gzgi_admin
  Date: 2022/6/9
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>店铺新增</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/shop/add" onsubmit="return true;">
    <table>
        <tr>
            <td>店铺名称：</td>
            <td><input name="name" id="name" value=""/></td>
        </tr>
        <tr>
            <td>店铺介绍：</td>
            <td><input name="introduce" id="introduce" value=""/></td>
        </tr>
        <tr>
            <td>
                <input type="submit" name="submit" id="submit" value="新增"/>
                <input type="button" name="reset" id="reset" value="重置"/>
            </td>
        </tr>
    </table>

</form>
</body>
</html>
