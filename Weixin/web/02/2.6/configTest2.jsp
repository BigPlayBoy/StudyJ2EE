<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/6
  Time: 23:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试config内置对象2</title>
</head>
<body>

直接输出config的getSServletName的值
name配置参数的值：
<%=config.getInitParameter("name")%><br>
输出该JSP名为age的配置参数:
age配置参数的值：<%=config.getInitParameter("age")%>


</body>
</html>
