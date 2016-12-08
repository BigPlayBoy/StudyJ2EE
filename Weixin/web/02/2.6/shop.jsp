<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/8
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选择物品购买</title>
</head>
<body>
<form method="post" action="processBuy.jsp">
    电脑：<input type="checkbox" name="item" value="computer">
    书籍：<input type="checkbox" name="item" value="book">
    汽车：<input type="checkbox" name="item" value="car">
    <input type="submit" value="提交">

</form>
</body>
</html>
