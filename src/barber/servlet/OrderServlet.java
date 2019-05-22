package barber.servlet;

import barber.dao.OrderDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class OrderServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        Integer sign = Integer.valueOf(httpServletRequest.getParameter("sign"));
        switch (sign) {
            case (0):
                Long uid = Long.valueOf(httpServletRequest.getParameter("uid"));
                Long bid = Long.valueOf(httpServletRequest.getParameter("bid"));
                Long hid = Long.valueOf(httpServletRequest.getParameter("hid"));
                OrderDao.insertOrder(uid, bid, hid);
                httpServletRequest.getRequestDispatcher("orderlist.jsp").forward(httpServletRequest, httpServletResponse);
                break;
            case (1):
                Long oid = Long.valueOf(httpServletRequest.getParameter("oid"));
                OrderDao.updateOrder(oid);
                System.out.println(oid);
                httpServletRequest.getRequestDispatcher("barber/main.jsp").forward(httpServletRequest,httpServletResponse);
                break;
            default:
                break;
        }

    }

    @Override
    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {

    }

}
