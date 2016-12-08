<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="java.awt.*" %>
<%@ page import="javax.imageio.ImageIO" %><%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2016/12/7
  Time: 23:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="image/png" language="java" %>

<%@ page import="java.*,javax.*" %>
<%
    //创建BufferedImage对象
    BufferedImage bufferedImage=new BufferedImage(340,160,BufferedImage.TYPE_INT_RGB);
    //以image对象获取Graphics对象
    Graphics g=bufferedImage.getGraphics();
    //使用Graphic画图，所画的图像将会出现在image对象中
    g.fillRect(0,0,400,400);
    g.setColor(new Color(255,0,0));
    //画出一段弧
    g.fillArc(20,20,100,100,30,120);
//    设置颜色绿
    g.setColor(new Color(0,255,0));
    //画出一段弧
    g.fillArc(20,20,100,100,150,120);
    //设置颜色：蓝
    g.setColor(new Color(0,0,255));
    //画出一段弧
    g.fillArc(20,20,100,100,270,120);
    //设置颜色：黑
    g.setColor(new Color(0,0,0));
    g.setFont(new Font("Arial Black",Font.PLAIN,16));
    //画出三个字符
    g.drawString("red:climb",200,60);
    g.drawString("green:swim",200,100);
    g.drawString("black:jump",200,140);
    g.dispose();;

    //将图片输出到页面的响应
    ImageIO.write(bufferedImage,"png",response.getOutputStream());


%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
