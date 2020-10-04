<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<form action="/upd?sid=${s.sid}" method="post">
	<table border="1px">
	<tr>
	<td colspan="2" align="center"><h2>学员信息</h2></td>
	</tr>
	<%--<input type="hidden" value="${s.sid }" name="sid">--%>
	<tr align="center">
	<td>学员姓名</td><td><input type="text" name="sname" value="${s.sname }"/></td>
	</tr>
	<tr align="center">
	<td>学员性别</td><td><input type="text" name="sgender" value="${s.sgender }"/></td>
	</tr>
	<tr align="center">
	<td>学员年龄</td><td><input type="text" name="sage" value="${s.sage }"/></td>
	</tr>
	<tr align="center">
	<td>家庭地址</td><td><input type="text" name="saddress" value="${s.saddress }"/></td>
	</tr>
	<tr align="center">
	<td>Email</td><td><input type="text" name="semail" value="${s.semail }"/></td>
	</tr>
	<tr align="center">
	<td colspan="2" align="center"><input type="submit" value="修改"/></td>
	</tr>
	</table>
	</form>
	<script type="text/javascript">
	$(function(){
		$("tr").css("background-color","#808080");
	})
		$("form").submit(function(){
			var name=$("[name='name']").val();
			if(name==""){
				alert("学员姓名不能为空");
				return false;
			}
			var sex=$("[name='sex']").val();
			if(sex==""){
				alert("学员性别不能为空");
				return false;
			}
			var age=$("[name='age']").val();
			if(age==""){
				alert("学员年龄不能为空");
				return false;
			}
			return true;
		})
	</script>
</body>
</html>