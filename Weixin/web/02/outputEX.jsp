<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/4
  Time: 23:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>输出表达式</title>
</head>
<body>
<!-- 声明示例-->
<%!
    //声明一个整型变量
    public int count;
    //声明一个方法
    public String info(){
        return "hello";
    }

%>
<%=count++%>
    <%--//将count的值输出后再加一--%>
<br>

<%=info()%>
    <%--//输出info方法的返回值--%>

</body>
</html>
