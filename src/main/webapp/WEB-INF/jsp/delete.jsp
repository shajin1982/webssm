<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<body>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>显示用户</title>

</head>
<form action="/user/delete" method="get">
    <p>userId: <input type="text" name="userId" /></p>
    <input type="submit" value="Submit" />
</form>
<h2>对t_user2这张表进行删除操作</h2>
</body>
</html>