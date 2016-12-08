<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/7
  Time: 0:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContest测试</title>
</head>
<body>
<%
    //    使用pageContest设置属性，该属性默认在page范围内
    pageContext.setAttribute("page", "hello");
    //    使用request设置属性，该属性默认在request范围内
    request.setAttribute("request", "hello");
//    使用pageContest设置属性，该属性默认在request范围内
    pageContext.setAttribute("request2", "hello", pageContext.REQUEST_SCOPE);
//    使用session设置属性，该属性默认在sessin范围内
    session.setAttribute("session", "hello");
    //    使用pageContest设置属性，该属性默认在session范围内
    pageContext.setAttribute("session2", "hello", pageContext.SESSION_SCOPE);
    //    使用application设置属性，该属性默认在application范围内
    application.setAttribute("app", "hello");
//    使用pageContest设置属性，该属性默认在application范围内
    pageContext.setAttribute("app2", "hello", pageContext.APPLICATION_SCOPE);

    //下面获取各属性所在的范围
    out.println("page变量所在的范围：" + pageContext.getAttributesScope("page") + "<br>");
    out.println("request变量所在的范围：" + pageContext.getAttributesScope("request") + "<br>");
    out.println("request2变量所在的范围：" + pageContext.getAttributesScope("request2") + "<br>");
    out.println("session变量所在的范围：" + pageContext.getAttributesScope("session") + "<br>");
    out.println("session2变量所在的范围：" + pageContext.getAttributesScope("session2") + "<br>");
    out.println("app变量所在的范围：" + pageContext.getAttributesScope("app") + "<br>");
    out.println("app2变量所在的范围：" + pageContext.getAttributesScope("app2") + "<br>");

%>
</body>
</html>
