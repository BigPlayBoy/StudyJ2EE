<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/11/13
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<html>
<head>
    <title>测试首页</title>
    <style>
        a {
            width: auto;
            display: block;
        }
        div{
            width: 200px;
            float: left;
        }
    </style>
</head>
<body>
<h1>欢迎学习java web知识 现在时间是 ：</h1>
<%
    out.print(new java.util.Date());
//    int a=6;
//    int b=a/0;
%>
<br>
<div>
    <a href="02/declare.jsp">声明</a><br>
    <a href="02/outputEX.jsp">输出表达式</a><br>
    <a href="02/scriptlet.jsp">小脚本</a><br>
    <a href="02/staticinclude.jsp">小脚本</a><br>
    <a href="02/2.5/jsp-forward.jsp">forward指令</a><br>
    <a href="moban1712/index.html">模板</a><br>
    <a href="02/2.5/form.jsp">提交</a><br>
    <a href="02/2.5/jsp-include.jsp">jsp-include测试</a><br>
    <a href="02/2.5/jsp-include2.jsp">jsp-include测试2</a><br>
    <a href="02/2.5/beanTest.jsp">testBean</a><br>
    <a href="02/2.5/testBean2.jsp">testBean2</a><br>
</div>
<div>
    <h2>2.6</h2><br>
    <a href="02/2.6/put-application.jsp">application测试</a><br>
    <a href="02/2.6/get-application.jsp">application测试:获取数据</a><br>
    <a href="02/2.6/getWebParam.jsp">application测试:数据库连接</a><br>
    <a href="02/2.6/configTest.jsp">测试config内置对象</a><br>
    <a href="02/2.6/configTest2.jsp">测试config内置对象2</a><br>
    <a href="02/2.6/outTest.jsp">out Test</a><br>
    <a href="02/2.6/pageContextTest.jsp">pageContest测试</a><br>
    <a href="02/2.6/form.jsp">收集参数的表单页</a><br>
    <a href="02/2.6/request2.jsp">GET测试</a><br>
    <a href="02/2.6/draw.jsp">取钱的表单页</a><br>
    <a href="02/2.6/img.jsp">生成图片-response对象学习---运行失败</a><br>
<img src="02/2.6/img.jsp">
    <a href="02/2.6/doRedirect.jsp">重定向学习</a><br>
    <a href="02/2.6/addCookie.jsp?name=cuicuicui">向电脑写入Cookie</a><br>
    <a href="02/2.6/readCookie.jsp">读取Cookie</a><br>
    <a href="02/2.6/cnCookie.jsp">写入、读取包含中文内容的Cookie</a><br>


</div>
</body>
</html>
