<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/7
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>收集参数的表单页</title>
</head>
<body>
<form id="form" method="get" action="request3.jsp">
    用户名：<input type="text" name="name"><br>
    性别：男<input type="radio" name="gender" value="男">女：<input type="radio" name="gender" value="女"><hr/>
    喜欢的颜色：<br>
    红：<input type="checkbox" name="color" value="红">
    绿：<input type="checkbox" name="color" value="绿">
    蓝：<input type="checkbox" name="color" value="蓝">
    <hr>
    来自的国家：<br>
    <select name="country">
        <option value="中国" >中国</option>
        <option value="美国">美国</option>
        <option value="俄罗斯">俄罗斯</option>
    </select>
    <hr/>
    <input type="submit" value="提交">
    <input type="reset" value="重置">
</form>
</body>
</html>
