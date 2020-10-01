<%--
  Created by IntelliJ IDEA.
  User: LHX
  Date: 2020/10/1
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<form action="/doadd" method="post">
    <table border="1px" width="500px" height="">
        <tr>
            <td style="text-align: center">添加人员</td>
        </tr>
        <tr>
            <td colspan="2" >姓名：<input type="text" name="name"/></td>
        </tr>
        <tr>
            <td colspan="2" >性别：
                <select name="gender">
                    <option value="0">请选择</option>
                    <option value="1">男</option>
                    <option value="2">女</option>
                </select>
            </td>
        <tr>
            <td>年龄：<input type="text" name="age"/></td>
        </tr>
        <tr>
            <td colspan="2">等级：
                <select name="rank">
                    <option value="0">请选择</option>
                    <option value="1">1级</option>
                    <option value="2">2级</option>
                    <option value="3">3级</option>
                    <option value="4">4级</option>
                    <option value="5">5级</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2">部门：
                <input type="text" name="department">
            </td>
        </tr>
        <tr>
            <td style="text-align: center"><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>
<script type="text/javascript">
    $("form").submit(function(){
        var name=$("[name='name']").val();
        if(name==""){
            alert("用户名不能为空");
            return false;
        }
        var sex=$("[name='gender']").val();
        if(sex==0){
            alert("请选择性别");
            return false;
        }
        var age=$("[name='age']").val();
        if(age==""){
            alert("年龄不能为空");
            return false;
        }
        var rank=$("[name='rank']").val();
        if(rank==0){
            alert("请选择等级");
            return false;
        }
        var bumen=$("[name='department']").val();
        if(bumen==0){
            alert("请选择部门");
            return false;
        }
        return true;
    })
    $(function(){
        $("tr:even").css("background-color","#65FDFE");
        $("tr:odd").css("background-color","#00E000");
    })
</script>
</body>
</html>
