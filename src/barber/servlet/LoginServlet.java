package barber.servlet;

import barber.bean.UserBean;
import  barber.form.UserForm;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse){

    }
    @Override
    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse){

        Integer Uid = Integer.valueOf(httpServletRequest.getParameter("Uid"));
        String Upassword=httpServletRequest.getParameter("Upassword");
        if (checkUsers(Uid,Upassword)){

        }
    }
//  检查用户输入的用户名和密码是否错误
    private boolean checkUsers(Integer uid, String upassword) {

        UserForm userForm = new UserForm();
        UserBean userBean = new UserBean();
        if(uid ==null&&upassword==null){
            return false;
        }else {
            userBean = UserForm.queryUserBean(uid);
        }
        if (userBean==null){
            System.out.println("userBean is null");

        }
        System.out.println(userBean.getUpassword()+"99999");
        if (userBean.getUpassword().equals(upassword)){
            System.out.println("密码正确");
        }else{
            System.out.println("密码错误");
            return false;
        }
        return true;
    }
}
