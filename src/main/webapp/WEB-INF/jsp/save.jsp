<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<body>
<head>

    <title>显示用户</title>

</head>
<form action="/user/save" method="get">
    <table border="1">
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
<h2><h2>对t_user2这张表进行添加操作</h2></h2>
</body>
</html>