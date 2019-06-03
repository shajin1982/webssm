<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/3
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
<form action="/user/login" method="get">
    <table border="1" align="center">
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="userName"></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="userPwd"></td>
        </tr>
        <tr>

            <td><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>
</body>
</html>
