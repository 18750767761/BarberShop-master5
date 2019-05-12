<%@ page import="barber.bean.HairStyleBean" %>
<%@ page import="barber.bean.BarberBean" %>
<%@ page import="barber.form.HairForm" %>
<%@ page import="barber.form.BarberForm" %>
<%@ page import="barber.bean.UserBean" %>
<%@ page contentType="text/html;charset=gb2312" %>

<html>
<head>
    <title>UpdateVip</title>
</head>
<body>

<table background="images/right.gif" height="791" width="709" bordr="1">
    <tr>
        <td height="50"></td>
    </tr>
    <tr>
        <td height="20">
            <div align="center"><h1>确认预定订单</h1></div>
        </td>
    </tr>
    <tr>
        <td height="100">
            <div align="center">
                <%
                    Long hid = Long.valueOf(request.getParameter("Hid"));
                    Long bid = Long.valueOf(request.getParameter("Bid"));
                    UserBean user = (UserBean) session.getAttribute("user");
                    HairStyleBean hair = HairForm.quaryHair(hid);
                    BarberBean barber = BarberForm.quaryBaarber(bid);
                %>
                <table>
                    <tr>
                        <td>
                            <table border="1">
                                <tr>
                                    <td>会员ID:</td>
                                    <td><%=user.getUid() %>
                                    </td>
                                </tr>
                                <tr>
                                    <td>会员真实姓名:</td>
                                    <td><%=user.getUname()%>
                                    </td>
                                </tr>
                                <tr>
                                    <td>会员联系电话：</td>
                                    <td><%=user.getUtel()%>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table>
                                            <tr>
                                                <td weight="150" colspan="3">预定发型：</td>
                                            </tr>
                                            <tr>
                                                <td><img src="<%=hair.getHpic()%>" weight="150"
                                                         height="150"/></td>
                                                <td>
                                                    <table>
                                                        <tr>
                                                            <td>发型ID：</td>
                                                            <td><%=hair.getHid()%>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>发型名称：</td>
                                                            <td><%=hair.getHname()%>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>发型价格：</td>
                                                            <td><%=hair.getHpic()%>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr></tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">预定理发师：</td>
                                </tr>
                                <tr>
                                    <td>理发师ID：</td>
                                    <td><%=barber.getBid()%>
                                    </td>
                                </tr>
                                <tr>
                                    <td>理发师姓名：</td>
                                    <td><%=barber.getBname()%>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40"></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div align="center"><a href="order?uid=<%=user.getUid()%>&bid=<%=barber.getBid()%>&hid=<%=hair.getHid()%>"
                                                               onclick="return confirm('确认预订吗?');">确认预定</a> <a
                                                href="barberlist.jsp">重新选择</a></div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>

                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td height="200"></td>
    </tr>
</table>
</body>
</html>