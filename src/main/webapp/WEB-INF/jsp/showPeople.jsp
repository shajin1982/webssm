<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/19
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>用户信息列表</title>
</head>
<body>
<table cellspacing="0" border="1" width="400">
    <thead>
    <tr>
        <th>姓名</th>
        <th>电话</th>
        <th>邮箱</th>
        <th>密码</th>
    </tr>
    </thead>
    <tbody>

    <tr>
        <td>${user.userName}</td>
        <td>${user.userPhone}</td>
        <td>${user.userEmail}</td>
        <td>${user.userPwd}</td>
    </tr>

    </tbody>
</table>
<h2>对t_user2这张表进行按照Id查询操作</h2>
</body>
</html>
