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
    <title>获取包含非西欧字符的GET请求参数</title>
</head>
<body>
<%
    //获取name请求参数的值
    String rawQueryStr=request.getQueryString();
    out.println("原始查询字符串为："+rawQueryStr+"<hr/>");
    //使用URLDecoder解码字符串
    String queryStr=java.net.URLDecoder.decode(rawQueryStr,"UTF-8");
    out.print("解码后查询字符串为"+queryStr+"<hr/>");
    //以&符号分解查询字符串
    String[] parmPairs=queryStr.split("&");
    for(String parmPair:parmPairs){
    out.print("每个请求参数名、值对为："+parmPair+"<hr/>");
        //以=来分解请求参数名和值
        String[] nameValue=parmPair.split("=");
        out.print(nameValue[0]+"参数的值是："+nameValue[1]);
    }
%>
</body>
</html>
