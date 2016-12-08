<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/8
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理购物车</title>
    <%
        //取出session范围的itemMap属性
        Map<String, Integer> itemMap = (Map<String, Integer>) session.getAttribute("itemMap");
        //如果map对象为空，则初始化Map对象
        if (itemMap == null) {
            itemMap = new HashMap<String, Integer>();
            itemMap.put("书籍", 0);
            itemMap.put("电脑", 0);
            itemMap.put("汽车", 0);

        }
        //获取上一个页面的请求参数
        String[] buys = request.getParameterValues("item");
        for (String item : buys) {
            //如果item为book 则表示购买书籍
            if (item.equals("book")) {
                int num1 = itemMap.get("书籍").intValue();
                itemMap.put("书籍", num1 + 1);
            } else if ("computer".equals(item)) {
                int num2 = itemMap.get("电脑").intValue();
                itemMap.put("电脑", num2 + 1);
            } else if ("car".equals(item)) {
                int num3 = itemMap.get("汽车").intValue();
                itemMap.put("汽车", num3 + 1);
            }
        }
        //将itemMap对象放到设置成session范围的itemMap属性
        session.setAttribute("itemMap", itemMap);
    %>
</head>
<body>
你所购买的物品：<br>
书籍：<%=itemMap.get("书籍")%><br>
电脑：<%=itemMap.get("电脑")%><br>
汽车：<%=itemMap.get("汽车")%><br>
<p><a href="shop.jsp">再次购买</a></p>
</body>
</html>
