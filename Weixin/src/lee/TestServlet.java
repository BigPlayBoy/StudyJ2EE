package lee;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintStream;
import java.sql.*;

/**
 * Created by jarvis on 2016/12/9.
 */
@WebServlet(name = "testServlet", urlPatterns = ("/testServlet"), initParams = {
        @WebInitParam(name = "driver", value = "com.mysql.jdbc.Driver"),
        @WebInitParam(name = "url", value = "jdbc:mysql://localhost:3306/javaee"),
        @WebInitParam(name = "user", value = "root"),
        @WebInitParam(name = "pass", value = "123456")
})
public class TestServlet extends HttpServlet {
//重新init方法

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.service(req, resp);
        try {
            //获取servletConfig对象
            ServletConfig config = getServletConfig();
            String driver = config.getInitParameter("driver");
            String url = config.getInitParameter("url");
            String user = config.getInitParameter("user");
            String pass = config.getInitParameter("pass");
//注册驱动
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(url, user, pass);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from news_inf");
            PrintStream out = new PrintStream(resp.getOutputStream());
            out.println("<html><head><title>访问Servlet初始化参数设置</title></head><body>");
            out.println("<table bgcolor=\"#9999dd\" border=\"1\" " + "width=\"480\">");
            while (resultSet.next()) {
                out.print("<tr>");
                out.print("<td>" + resultSet.getString(1) + "</td>");
                out.print("<td>" + resultSet.getString(2) + "</td>");
                out.print("</tr>");

            }
            out.print("</table></body></html>");

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
