<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/5
  Time: 0:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forward的结果页</title>
</head>
<body>
使用request内置对象获取age参数的值

<%=request.getParameter("age")%>

<br>
输出username请求参数的值
<br>
<%=request.getParameter("username")%>

</body>
</html>
