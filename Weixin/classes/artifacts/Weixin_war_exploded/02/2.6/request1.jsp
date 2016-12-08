<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/7
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取请求头，请求参数</title>
</head>
<body>
<%
//    获取所有请求头的名称
    Enumeration<String> headerNames=request.getHeaderNames();
    while(headerNames.hasMoreElements()){
        String headerName=headerNames.nextElement();
        out.println(headerName+"-->"+request.getHeader(headerName)+"<br/>");

    }
    out.println("<hr/>");
    //设置解码方式，对于简体中文，使用GBK解码
    request.setCharacterEncoding("UTF-8");
    //下面依次获取表单域的值
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    String[] color=request.getParameterValues("color");
    String national=request.getParameter("country");

%>

下面依次输出表单域的值<hr/>
你的名字：<%=name%><br>
你的性别：<%=gender%><br>
重复输出复选框获取的数组值<hr/>
<%for (String c:color){
    out.println(c+" ");}%><hr/>
你来自的国家：<%=national%><hr/>



</body>
</html>
