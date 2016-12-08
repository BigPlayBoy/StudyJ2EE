<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/5
  Time: 0:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forward的原始页</title>
</head>
<body>
<h3>forward的原始页</h3>

<jsp:forward page="forward-result.jsp">
    <jsp:param name="age" value="29"/>
</jsp:forward>
</body>
</html>
