<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<table border="1px">
	<tr>
	<td colspan="6" align="center"><h1>学院信息列表</h1></td>
	</tr>
	<tr align="center">
	<td>编号</td>
	<td>姓名</td>
	<td>性别</td>
	<td>年龄</td>
	<td>住址</td>
	<td>Email</td>
	</tr>
	<c:forEach items="${requestScope.list }" var="list">
		<tr align="center">
	<td><a href="/update?sid=${list.sid}">${list.sid }</a></td>
	<td>${list.sname }</td>
	<td>${list.sgender }</td>
	<td>${list.sage }</td>
	<td>${list.saddress }</td>
	<td>${list.semail }</td>
	</tr>
	</c:forEach>
	</table>
	<script type="text/javascript">	
	$(function(){
		$("tr:odd").css("background-color","#808080");
	}) 
	</script>
</body>
</html>