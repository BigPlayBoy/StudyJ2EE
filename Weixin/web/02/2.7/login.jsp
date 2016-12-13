<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/9
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<span style="color:red;font-weight: bold">
<%
    if(request.getAttribute("err")!=null){
        out.print(request.getAttribute("err")+"<br/>");
    }
%>
</span>
<form id="login" method="post" action="login">
    用户名：<input type="text" name="username"/><br/>
    密码：<input type="password" name="pass"><br/>
    <input type="submit" value="登录" /><br/>
</form>
</body>
</html>
