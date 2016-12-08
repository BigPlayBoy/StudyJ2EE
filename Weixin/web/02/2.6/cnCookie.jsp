<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/8
  Time: 0:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>中文cookie</title>
</head>
<body>
<%
    //以编码后的字符串为值，创建一个Cookie对象
    Cookie cookie = new Cookie("cnName", java.net.URLEncoder.encode("孙悟空", "GBK"));
    //设置cookie对象的生存期
    cookie.setMaxAge(24 * 3600);
    response.addCookie(cookie);

    //获取本站在客户端上保留的所有cookie
    Cookie[] cookies = request.getCookies();
    for (Cookie cookie1 : cookies) {
        //如果cookie的名为username，表明该Cookie是需要访问的Cookie
        if (cookie1.getName().equals("cnName")) {
            out.print(java.net.URLDecoder.decode(cookie1.getValue()));
        }
    }
%>
拍拍拍拍拍
</body>
</html>
