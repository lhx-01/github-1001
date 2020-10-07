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
    <script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<form action="/upd" method="post">
    <table border="1px">
            <tr>
                <td>商品编号</td>
                <td><input type="text" name="id" value="${ list.id }"/></td>
            </tr>
            <tr>
                <td>商品名称</td>
                <td><input type="text" name="name" value="${ list.goodsname }"/></td>
            </tr>
            <tr>
                <td>商品价格</td>
                <td><input type="text" name="price" value="${ list.goodsprice }"/></td>
            </tr>
            <tr>
                <td>库存数量</td>
                <input type="hidden" name="diqu" value="${ sessionScope.goodsdistrict }">
                <td><input type="text" name="num" value="${ list.goodscount }"/></td>
            </tr>
            <tr>
                <td>订单状态</td>
                <td align="center">
                    <select name="billstatus">
                        <if test="${ list.billstatus==0 }">
                            <option value="0">待处理</option>
                        </if>
                        <if test="${ list.billstatus==1 }">
                            <option value="1">处理中</option>
                        </if>
                        <if test="${ list.billstatus==2 }">
                            <option value="2">已处理</option>
                        </if>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="提交">
                    <input type="button" value="返回">
                </td>
            </tr>
    </table>
</form>
<script type="text/javascript">
    $("[type='button']").click(function () {
        location.href="javascript:history.back(0)";
    })
</script>
</body>
</html>

