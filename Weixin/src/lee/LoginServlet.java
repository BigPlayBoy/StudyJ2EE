package lee;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;

/**
 * Created by jarvis on 2016/12/13.
 */
@WebServlet(name="/login",urlPatterns = ("/login"))
public class LoginServlet extends HttpServlet{
    //响应客户端请求的方法

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        super.service(request, response);
        String errMsg="";
        //Servlet本身并不输出响应到客户端，因此必须将请求转发到视图页面
        RequestDispatcher requestDispatcher;
        //获取请求参数
        String username=request.getParameter("username");
        String pass=request.getParameter("pass");
        try{
            //Servlet本身并不执行任何的业务逻辑处理，它调用JavaBean处理用户请求
            DbDao dbDao=new DbDao("com.mysql.jdbc,Driver","jdbc:mysql://localhost:3306/liuyan","root","123456");
            ResultSet resultSet= dbDao.query("select pass from user_inf"+"where name=?",username);
            if (resultSet.next()){
                //用户名和密码匹配
                if(resultSet.getString("pass").equals(pass)){
                    //获取session对象
                    HttpSession session=request.getSession(true);
                    //设置session属性，跟踪用户会话状态
                    session.setAttribute("name",username);
                    requestDispatcher=request.getRequestDispatcher("/welcome.jsp");
                    requestDispatcher.forward(request,response);
                }else {
                    //用户名和密码不匹配
                    errMsg+="您的用户名和密码不匹配，请重新输入";
                }
            }else {
                //用户名不存在时
                errMsg+="您的用户名不存在，请先注册";

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (errMsg!=null&&!errMsg.equals("")){
            requestDispatcher=request.getRequestDispatcher("/login.jsp");
            request.setAttribute("err",errMsg);
            requestDispatcher.forward(request,response);
        }
    }
}
