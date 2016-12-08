<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/7
  Time: 23:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request处理</title>
</head>
<body>
<%
    //    获取请求的钱数
    String bal = request.getParameter("balance");
    //将取钱的字符串转换成双精度浮点型
    double qian = Double.parseDouble(bal);
    //对取出的钱进行判断
    if (qian < 500) {
        out.print("给你" + qian + "块");
        out.print("账户减少" + qian);
    } else {
        //创建了一个List对象
        List<String> info = new ArrayList<String>();
        info.add("1111111");
        info.add("2222222");
        info.add("3333333");
        //将info放入request范围内
        request.setAttribute("info", info);
%>
<jsp:forward page="second.jsp"></jsp:forward>
<% }
%>
</body>
</html>
