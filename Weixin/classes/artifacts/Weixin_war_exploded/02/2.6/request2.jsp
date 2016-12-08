<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/7
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取get请求参数</title>
</head>
<body>
<%
    //获取name请求参数的值
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
%>
你的名字：<%=name%><hr/>
你的性别：<%=gender%>
</body>
</html>
