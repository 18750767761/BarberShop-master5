<%@ page import="barber.dao.NoticeDao" %><%--
  Created by IntelliJ IDEA.
  User: 11616
  Date: 2019/5/27
  Time: 0:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body><%
    Long nid = Long.valueOf(request.getParameter("nid"));
    NoticeDao.deleteNotice(nid);
    request.getRequestDispatcher("../admin/article-list.jsp").forward(request, response);
%></body>
</html>
