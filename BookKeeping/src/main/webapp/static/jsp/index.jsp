<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="/static/js/jquery-1.8.3.min.js"></script>
<body>
<center>
    <h2>记账管理</h2>
    <form action="/index" method="post">
        <p>类型:<select name="typeId">
            <option value="">不限</option>
            <option value="1">支出</option>
            <option value="2">收入</option>
            <option value="3">转账</option>
            <option value="4">借出</option>
            <option value="5">借入</option>
            <option value="6">还入</option>
            <option value="7">还出</option>
        </select>
        时间：从<input name="stratbillTime">到<input name="endbillTime"></p>
        <input type="submit" value="搜索">
        <input type="button" value="记账" id="addji">
    </form>
    <table border="1px">
        <tr style="background-color: #AED8E6">
            <td>标题</td>
            <td>记账时间</td>
            <td>类别</td>
            <td>金额</td>
            <td>说明</td>
        </tr>
        <c:forEach items="${bills}" var="list">
            <tr >
                <td>${list.title}</td>
                <td><fmt:formatDate value="${list.billTime}" pattern="yyyy-MM-dd"/></td>
                <td>${list.name}</td>
                <td>${list.price}</td>
                <td>${list.explaine}</td>
            </tr>
        </c:forEach>
    </table>
    <h2>${msg}</h2>
</center>
</body>
</html>
<script type="text/javascript">
    $(document).ready(function(){
        $("tr:even").css("background-color","#8EED93");
    })
    $("#addji").click(function () {
        window.location="/static/jsp/add.jsp"
    })

       /* $("form").submit(function(){
            var reg=/^\d{4}-\d{2}-\d{2}$/;
            if(reg.test($("[name='stratbillTime']").val())==false){
                alert("日期格式不正确");
                return false;
            }
            if(reg.test($("[name='endbillTime']").val())==false){
                alert("日期格式不正确");
                return false;
            }
            return true;
        })*/



</script>
