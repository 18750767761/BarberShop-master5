<%--
  Created by IntelliJ IDEA.
  User: 11616
  Date: 2019/5/22
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<%
    session.removeAttribute("user");
    session.removeAttribute("hair");
    session.removeAttribute("barber");
    response.sendRedirect("index.jsp");
%>
</body>
</html>
