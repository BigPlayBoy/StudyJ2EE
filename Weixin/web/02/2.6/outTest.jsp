<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/6
  Time: 23:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>out Test</title>
</head>
<body>
<%
    //    从配置参数中获取驱动
    String driver = application.getInitParameter("driver");
//    从配置参数中获取数据库url
    String url = application.getInitParameter("url");
//    从配置参数中获取用户名
    String user = application.getInitParameter("user");
//    从配置参数中获取密码
    String pass = application.getInitParameter("pass");
    //注册成功
    Class.forName(driver);
    //获取数据库连接
    Connection conn = DriverManager.getConnection(url, user, pass);

    //创建Statement对象
    Statement statement = conn.createStatement();
    //执行查询
    ResultSet resultSet = statement.executeQuery("select * from news_inf");
%>
<table bgcolor="#faebd7" border="1" width="480">
    <%
        //    遍历结果集
        while (resultSet.next()) {
            //输出表格行
            out.println("<tr>");
            out.println("<td>");
            out.println(resultSet.getString(1));
            out.println("</td>");
            out.println("<td>");
            out.println(resultSet.getString(2));
            out.println("</td>");
            out.println("</tr>");

        }
    %>
</table>
</body>
</html>
