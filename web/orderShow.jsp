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
            <div align="center"><h1>ȷ��Ԥ������</h1></div>
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
                                    <td>��ԱID:</td>
                                    <td><%=user.getUid() %>
                                    </td>
                                </tr>
                                <tr>
                                    <td>��Ա��ʵ����:</td>
                                    <td><%=user.getUname()%>
                                    </td>
                                </tr>
                                <tr>
                                    <td>��Ա��ϵ�绰��</td>
                                    <td><%=user.getUtel()%>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table>
                                            <tr>
                                                <td weight="150" colspan="3">Ԥ�����ͣ�</td>
                                            </tr>
                                            <tr>
                                                <td><img src="<%=hair.getHpic()%>" weight="150"
                                                         height="150"/></td>
                                                <td>
                                                    <table>
                                                        <tr>
                                                            <td>����ID��</td>
                                                            <td><%=hair.getHid()%>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>�������ƣ�</td>
                                                            <td><%=hair.getHname()%>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>���ͼ۸�</td>
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
                                    <td colspan="2">Ԥ����ʦ��</td>
                                </tr>
                                <tr>
                                    <td>��ʦID��</td>
                                    <td><%=barber.getBid()%>
                                    </td>
                                </tr>
                                <tr>
                                    <td>��ʦ������</td>
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
                                                               onclick="return confirm('ȷ��Ԥ����?');">ȷ��Ԥ��</a> <a
                                                href="barberlist.jsp">����ѡ��</a></div>
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