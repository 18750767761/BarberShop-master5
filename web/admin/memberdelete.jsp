<%@ page import="barber.dao.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: 11616
  Date: 2019/5/27
  Time: 1:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Long uid = Long.valueOf(request.getParameter("uid"));
    UserDao.deleteUserbean(uid);
    request.getRequestDispatcher("../admin/member-list.jsp").forward(request,response);
%>
</body>
</html>
