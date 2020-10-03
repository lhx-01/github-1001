<%--
  Created by IntelliJ IDEA.
  User: LHX
  Date: 2020/10/1
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<table border="1px" width="500px" height="200px">
    <tr>
        <td colspan="7">人员列表</td>
    </tr>
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>等级</td>
        <td>所在部门</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${requestScope.list}" var="list">
        <tr>
            <td>${list.id}</td>
            <td>${list.name}</td>
            <td>${list.sex}</td>
            <td>${list.age}</td>
            <td>${list.rank}</td>
            <td>${list.department}</td>
            <td>
                <a href="/delete?id=${list.id}">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
<p style="margin-left: 200px"><input type="button" value="添加人员"/></p>
<script type="text/javascript">
    $("[type='button']").click(function(){
        location.href="/toadd";
    })
    $(function(){
        $("tr:even").css("background-color","#65FDFE");
        $("tr:odd").css("background-color","#00E000");
    })
</script>
</body>
</html>