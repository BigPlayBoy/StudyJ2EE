<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/8
  Time: 0:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>读取cookie</title>
</head>
<body>
<%
    //获取本站在客户端上保留的所有cookie
    Cookie[] cookies=request.getCookies();
    for(Cookie cookie:cookies){
        //如果cookie的名为username，表明该Cookie是需要访问的Cookie
        if(cookie.getName().equals("username")){
            out.print(cookie.getValue());
        }
    }
%>
</body>
</html>
