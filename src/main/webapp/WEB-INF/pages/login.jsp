<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <script src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
</head>
<script type="text/javascript">
    function judegUser() {
        var account = $("#account").val();
        var password = $("#password").val();
        var result = getResult(account,password);
        return result;
    }
    function getResult(account,password){
        var result = false;
        $.ajax({
            type:"post",
            url:"<%=request.getContextPath()%>/user/loginYz",
            data:{"account":account,"password":password},
            dataType:"json",
            async:false,
            success:function (data) {
                if(data.code==200){
                    result = true;
                }else{
                    alert(data.message);
                }
            },
            error:function () {
                alert("错误！");
            }
        });
        return result;
    }
</script>
<body>
<form action="<%=request.getContextPath()%>/user/admin" method="post" onsubmit="return judegUser();">
    <table>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="account" id="account" value=""/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password" id="password" value=""/><td></td>
        </tr>
        <tr>
            <td>
                <input type="submit" name="submit" id="submit" value="登录"/>
                <input type="button" name="reset" id="reset" value="重置"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
