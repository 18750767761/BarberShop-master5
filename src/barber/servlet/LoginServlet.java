package barber.servlet;

import barber.bean.BarberBean;
import barber.bean.UserBean;
import barber.dao.BarberDao;
import barber.dao.UserDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {

    }

    @Override
    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        Integer sign = Integer.valueOf(httpServletRequest.getParameter("sign"));
        switch (sign) {
            case (0)://用户登录检测操作
                if (checkUsers(httpServletRequest, httpServletResponse)) {
                    RequestDispatcher requestDispatcher = httpServletRequest.getRequestDispatcher("main.jsp");
                    requestDispatcher.forward(httpServletRequest, httpServletResponse);
                }
                break;
            case (1)://用户注册操作
                Long uid = Long.valueOf(httpServletRequest.getParameter("Uid"));
                String upass = httpServletRequest.getParameter("Upassword");
                UserDao.insertUserbean(uid, upass);
                RequestDispatcher requestDispatcher = httpServletRequest.getRequestDispatcher("index.jsp");
                requestDispatcher.forward(httpServletRequest, httpServletResponse);
                break;
            case (2):
                if (checkBarber(httpServletRequest, httpServletResponse)) {
                    RequestDispatcher requestDispatcher1 = httpServletRequest.getRequestDispatcher("barber/main.jsp");
                    requestDispatcher1.forward(httpServletRequest, httpServletResponse);
                }
                break;
            case (3):
                Long bid = Long.valueOf(httpServletRequest.getParameter("Bid"));
                String bpass = httpServletRequest.getParameter("Bpassword");
                BarberDao.insertBarberbean(bid, bpass);
                RequestDispatcher requestDispatcher2 = httpServletRequest.getRequestDispatcher("index.jsp");
                requestDispatcher2.forward(httpServletRequest, httpServletResponse);
                break;
            default:
                break;
        }


    }

    //  检查用户输入的用户名和密码是否错误
    private boolean checkUsers(HttpServletRequest request, HttpServletResponse response) {
        Long Uid = Long.valueOf(request.getParameter("Uid"));
        String Upassword = request.getParameter("Upassword");
        UserBean userBean = UserDao.queryUserBean(Uid);
        if (userBean == null) {
            return false;
        }
        if (userBean.getUpassword().equals(Upassword)) {
            request.setAttribute("user", userBean);
        } else {
            return false;
        }
        return true;
    }

    //    检查发型师的登录状态
    private boolean checkBarber(HttpServletRequest request, HttpServletResponse response) {
        Long Bid = Long.valueOf(request.getParameter("Bid"));
        String Bpassword = request.getParameter("Bpassword");
        BarberBean barberBean = BarberDao.quaryBaarber(Bid);
        if (barberBean == null) {
            return false;
        }
        if (barberBean.getBpassword().equals(Bpassword)) {
            request.setAttribute("barber", barberBean);
        } else {
            return false;
        }
        return true;
    }
}
