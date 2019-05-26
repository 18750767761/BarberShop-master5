<%@ page contentType="text/html; charset=gb2312" language="java"  %>
<%
session.removeAttribute("vip");
session.removeAttribute("order");
session.removeAttribute("Enter");
response.sendRedirect("main.jsp");
%>

