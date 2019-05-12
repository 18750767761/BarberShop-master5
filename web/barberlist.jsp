<%@ page contentType="text/html; charset=gb2312" import="java.lang.*, java.io.*, java.sql.*, java.util.*" %>
<%@ page import="barber.bean.BarberBean" %>
<%@ page import="barber.form.BarberForm" %>

<html>
<head>
    <title>barberlist</title>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<jsp:include page="left.jsp"/>
<table border="0" cellpadding="0" cellspacing="0" background="images/barberlist.gif" width="709" height="992">
    <tr>
        <td>
            <table width="709" height="992">
                <tr>
                    <td height="80" colspan="2">
                        <div align="right"><a href="hairlist.jsp">返回上一步重新选择发型</a></div>
                    </td>
                </tr>
                <tr>
                    <%

                        int n = 0;
                        BarberForm barberForm = new BarberForm();
                        List<BarberBean> barberlist = BarberForm.quaryBarber();
                        if (barberlist.size() > 10) {
                            n = 10;
                        } else n = barberlist.size();
                        for (int i = 0; i < n; i++) {
                    %>
                    <td height="120" width="335">
                        <table width="335" height="120">
                            <tr>
                                <td width="120"><img src="<%=barberlist.get(i).getBpic()%>" width="120"
                                                     height="120"></td>
                                <td width="215">
                                    <table width="215" height="120">
                                        <tr>
                                            <td height="10">工作证ID:<%=barberlist.get(i).getBid()%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="10">姓名:<%=barberlist.get(i).getBname()%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><%=barberlist.get(i).getBcommons()%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <%
                                                Long hid = Long.valueOf(request.getParameter("Hid"));
                                            %>
                                            <td><a href="orderShow.jsp?Bid=<%=barberlist.get(i).getBid()%>&Hid=<%=hid%>">预定</a>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <%}%>

                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
            </table>
    </tr>
    <tr>
        <td colspan="2"></td>
    </tr>
</table>
</table>
</body>
</html>

