<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/6
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>application测试</title>
</head>
<body>
<%!
    int i;
%>
<h1>JSP声明</h1>
<%
    application.setAttribute("counter",String.valueOf(++i));
%>
<h2>输出i的值</h2>
<%=i%>
</body>
</html>
