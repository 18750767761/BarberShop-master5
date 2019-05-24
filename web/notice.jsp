<%@ page import="barber.bean.NoticesBean" %>
<%@ page import="barber.dao.NoticeDao" %><%--
  Created by IntelliJ IDEA.
  User: 11616
  Date: 2019/5/25
  Time: 1:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>新闻资讯</title>
    <link rel="stylesheet" type="text/css" href="statics/css/XinWenStyle.css" />
    <link rel="stylesheet" type="text/css" href="statics/css/XinWenfirstStyle.css" />
</head>

<body>
<%
    Long nid = Long.valueOf(request.getParameter("nid"));
    NoticesBean notice = NoticeDao.quaryNotice(nid);
%>
<div class="container">
    <div class="main">
        <div class="title">
            <h4><%=notice.getNtitle()%></h4>
            <p>News</p>
        </div>
    </div>
    <table style="margin: 0 auto;width:70%;background:white;height: 70%;">
        <tr>
            <td style="background: white;height: 100%;">
                <div style="padding: 20px;background: white;">
                  <%=notice.getNtext()%>
                </div>
            </td>
        </tr>
    </table>
</div>
</body>
</html>

