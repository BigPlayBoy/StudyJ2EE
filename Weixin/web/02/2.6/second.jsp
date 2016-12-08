<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/7
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request处理</title>
</head>
<body>
<%
    //取出请求参数
    String bal = request.getParameter("balance");
    double qian = Double.parseDouble(bal);
    //取出request范围内的info属性
    List<String> info = (List<String>) request.getAttribute("info");
    for (String tmp : info) {
        out.print(tmp + "<br>");
    }
    out.print("取钱：" + qian + "块");
    out.print("账户减少：" + qian);
%>

</body>
</html>
