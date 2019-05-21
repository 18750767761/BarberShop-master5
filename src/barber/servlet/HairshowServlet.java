package barber.servlet;

import barber.bean.HairStyleBean;
import barber.dao.HairDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class HairshowServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String type = httpServletRequest.getParameter("type");
        List<HairStyleBean> hairlist = HairDao.quaryHairStyle(type);
        httpServletRequest.setAttribute("hair", hairlist);
        RequestDispatcher requestDispatcher = httpServletRequest.getRequestDispatcher("hairlist.jsp");
        requestDispatcher.forward(httpServletRequest, httpServletResponse);
    }

    @Override
    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
    }
}
