package barber.servlet;
import barber.bean.UserBean;
import barber.form.UserForm;
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

        if (checkUsers(httpServletRequest, httpServletResponse)) {

            RequestDispatcher requestDispatcher = httpServletRequest.getRequestDispatcher("main.jsp");
            requestDispatcher.forward(httpServletRequest, httpServletResponse);
        }

    }

    //  检查用户输入的用户名和密码是否错误
    private boolean checkUsers(HttpServletRequest request, HttpServletResponse response) {
        Integer Uid = Integer.valueOf(request.getParameter("Uid"));
        String Upassword = request.getParameter("Upassword");
        UserBean userBean = UserForm.queryUserBean(Uid);
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
}
