<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<html>
<body>
<head>
    <title>显示用户</title>
</head>
<p>添加用户:</p>
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
            <td><input type="submit" value="提交" /></td>
        </tr>
    </table>
</form>

<form action="/user/delete" method="get">
    <p>删除: <input type="text" name="userId" /></p>
    <input type="submit" value="删除" />
</form>

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
            <td><input type="submit" value="修改" /></td>
        </tr>
    </table>
</form>

<form action="/user/showPeople" method="get">
    <p>根据ID查询: <input type="text" name="userId" /></p>
    <input type="submit" value="查询" />
</form>
<p><a href="/user/showUser">查询所有用户信息</a></p>

<form action="/user/again">
    <input type="submit" value="用户登录">
</form>
<h2>对cole数据库中的t_user2这张表进行增删改查操作</h2>
</body>
</html>

