<%@ page import="barber.bean.UserBean" %><%--suppress HtmlDeprecatedTag --%>
<%--
  Created by IntelliJ IDEA.
  User: 11616
  Date: 2019/5/10
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>无标题文档</title>
</head>
<body rows="15.5%,*">
<%
    UserBean user = (UserBean) request.getAttribute("user");
    session.setAttribute("user", user);
%>
<jsp:include page="header.jsp" flush="true"/>
<div cols="19.7%,*">
    <jsp:include page="left.jsp" flush="true"/>
    <jsp:include page="noticelist.jsp" flush="true"/>
    <%--<frame src="hairlist.jsp" frameborder="no" marginwidth="0" marginheight="0" noresize name="right"/>--%>
</div>
</body>
</html>
