<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<body>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>显示用户</title>
</head>
<p>修改用户:</p>
<form action="/user/update" method="get">
    <table border="1">
        <tr>
            <td>ID：</td>
            <td><input type="text" name="userId" /></td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td><input type="text" name="userName" /></td>
        </tr>
        <tr>
            <td>电话：</td>
            <td><input type="text" name="userPhone" /></td>
        </tr>
        <tr>
            <td>邮箱：</td>
            <td><input type="text" name="userEmail" /></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="text" name="userPwd" /></td>
        </tr>
        <tr>
            <td><input type="submit" name="提交" /></td>
        </tr>
    </table>
</form>

<h2><h2>对t_user2这张表进行修改操作</h2></h2>
</body>
</html>