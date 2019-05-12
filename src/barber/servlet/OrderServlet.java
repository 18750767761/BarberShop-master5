package barber.servlet;

import barber.form.OrderForm;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class OrderServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        Long uid = Long.valueOf(httpServletRequest.getParameter("uid"));
        Long bid = Long.valueOf(httpServletRequest.getParameter("bid"));
        Long hid = Long.valueOf(httpServletRequest.getParameter("hid"));
        OrderForm.insertOrder(uid,bid,hid);
        httpServletRequest.getRequestDispatcher("orderlist.jsp").forward(httpServletRequest, httpServletResponse);

    }

    @Override
    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {

    }

}
