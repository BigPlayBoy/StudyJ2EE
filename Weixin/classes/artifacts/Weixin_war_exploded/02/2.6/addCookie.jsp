<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/7
  Time: 23:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加cookie</title>
</head>
<body>
<%
    //获取请求参数
    String name=request.getParameter("name");
    //以获取到的请求参数为值，创建一个cookie对象
    Cookie cookie=new Cookie("username",name);
    //设置cookie对象的生存期
    cookie.setMaxAge(24*3600);;
    response.addCookie(cookie);
%>



</body>
</html>
