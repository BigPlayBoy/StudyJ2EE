package lee;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintStream;

/**
 * Created by jarvis on 2016/12/8.
 */
//@WebServlet(name="firstServlet",urlPatterns = {"/firstServlet"})
public class FirstServlet extends HttpServlet {
    //客户端的响应方法，使用该方法可以响应客户端所有类型的请求
    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //设置解码方式
        request.setCharacterEncoding("URF-8");
        response.setContentType("text/html;charSet=UTF-8");
        //获取name的请求参数值
        String name = request.getParameter("name");
        //获取gender的请求参数值
        String gender = request.getParameter("gender");
        //获取color的请求参数值
        String[] color = request.getParameterValues("color");
        //获取country的请求参数值
        String national = request.getParameter("country");
        //获取页面输出流
        PrintStream out = new PrintStream(response.getOutputStream());
        out.print("<html><head><title>测试</title>");
        out.print("</head><body>");
        //输出请求参数的值
        out.print("你的名字：" + name + "<hr/>");
        out.print("你的性别：" + gender + "<hr/>");
//输出color的选择
        out.print("你选择的颜色是：");
        for (String c : color) {
            out.print(c + " ");
        }
        out.print("<hr/>");
//输出请求参数的值：country
        out.print("你来自的国家：" + national);
        out.print("</body></html>");
    }
}
