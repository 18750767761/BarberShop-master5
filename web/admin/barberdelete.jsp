<%@ page import="barber.dao.BarberDao" %><%--
  Created by IntelliJ IDEA.
  User: 11616
  Date: 2019/5/27
  Time: 1:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Long bid = Long.valueOf(request.getParameter("bid"));
    BarberDao.deleteBarber(bid);
    request.getRequestDispatcher("../admin/product-list.jsp").forward(request, response);
%>
</body>
</html>
