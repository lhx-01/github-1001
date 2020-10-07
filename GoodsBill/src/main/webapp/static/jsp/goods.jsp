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
<table border="1px">
    <tr>
        <td>商品编号</td>
        <td>商品名称</td>
        <td>商品价格</td>
        <td>库存数量</td>
        <td>订单状态</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${ requestScope.list }" var="list">
        <tr>
            <td>${ list.id }</td>
            <td>${ list.goodsname }</td>
            <td>${ list.goodsprice }</td>
            <td>${ list.goodscount }</td>
            <td>
                <c:if test="${ list.billstatus==0 }">
                    待处理
                </c:if>
                <c:if test="${ list.billstatus==1 }">
                    处理中
                </c:if>
                <c:if test="${ list.billstatus==2 }">
                    已处理
                </c:if>
            </td>
            <td><a href="/update?id=${list.id}">修改</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
