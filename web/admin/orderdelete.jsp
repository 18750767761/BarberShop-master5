<%@ page import="barber.dao.OrderDao" %>
<%@ page import="barber.dao.HairDao" %><%--
  Created by IntelliJ IDEA.
  User: 11616
  Date: 2019/5/26
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
</head>
<body>
<%
    Long oid = Long.valueOf(request.getParameter("order"));
    OrderDao.deleteOrder(oid);
    System.out.println("111");
    request.getRequestDispatcher("../admin/feedback-list.jsp").forward(request,response);
%>
</body>
</html>
