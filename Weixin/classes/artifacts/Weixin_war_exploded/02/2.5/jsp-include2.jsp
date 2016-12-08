<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/6
  Time: 18:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp-include测试</title>
</head>
<body>

<jsp:include page="forward-result.jsp">
    <jsp:param name="age" value="32"></jsp:param>
</jsp:include>

</body>
</html>
