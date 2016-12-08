<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/5
  Time: 0:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>错误提示页面</title>
</head>
<body>
系统出现异常
<br>异常类型是：<%=exception.getClass()%>
<br>异常信息是：<%=exception.getMessage()%>
</body>
</html>
