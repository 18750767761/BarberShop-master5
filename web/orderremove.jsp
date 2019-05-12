<%@ page import="javax.persistence.criteria.Order" %>
<%@ page import="barber.form.OrderForm" %><%--
  Created by IntelliJ IDEA.
  User: 11616
  Date: 2019/5/12
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Long oid = Long.valueOf(request.getParameter("order"));
    OrderForm.deleteOrder(oid);
    request.getRequestDispatcher("orderlist.jsp").forward(request,response);
%>
</body>
</html>
