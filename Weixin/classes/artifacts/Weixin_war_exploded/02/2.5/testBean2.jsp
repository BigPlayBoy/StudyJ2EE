<%@ page import="lee.Persion" %><%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/6
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Java Bean 测试2</title>
</head>
<body>
<%
//    实例化JavaBean实例，实现类为lee.Persion,该实例的实例名为p1
    Persion p1=new Persion();
//    将p1放置到page范围中
    pageContext.setAttribute("p1",p1);
//    设置p1的name属性
    p1.setName("Java");
//    设置 p1的age属性值
    p1.setAge(23);

%>


输出p1的name属性值:
<%=p1.getName()%><br>
输出p1的age属性值：
<%=p1.getAge()%><br>

</body>
</html>
