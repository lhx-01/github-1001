<%--
  Created by IntelliJ IDEA.
  User: LHX
  Date: 2020/10/6
  Time: 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/cha" method="post">
    <p style="text-align: center">请选择区域：
        <select name="type">
            <option value="1">朝阳区订单</option>
            <option value="2">海淀区订单</option>
            <option value="3">丰台区订单</option>
            <option value="4">西城区订单</option>
            <option value="5">昌平区订单</option>
        </select>
        <input type="submit" value="查询">
    </p>
</form>
</body>
</html>
