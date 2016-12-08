<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/4
  Time: 23:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小脚本测试</title>
</head>
<body>
<table bgcolor="#faebd7" border="1" width="300px">
    java脚本，这些脚本会对html的标签产生作用


    <%
        for (int i=0;i<10;i++){
            %>
    <%--上面的循环将控制<tr>标签循环--%>
    <tr>
        <td>循环值：</td>
        <td><%=i%></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
