<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.List" %>
<%@ page import="barber.bean.HairStyleBean" %>
<%@ page import="barber.form.HairForm" %>

<html>
<head>
    <title>main_03</title>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<jsp:include page="left.jsp"/>
<jsp:include page="hair_type.jsp" flush="true"/>
<table border="0" cellpadding="0" cellspacing="0" background="images/hairlist.gif" width="709" height="992">
    <tr>
        <td>
            <table width="709" height="992">
                <tr>
                    <td height="80" colspan="3"></td>
                </tr>
                <tr>
                    <%--图片展示--%>
                    <%
                        List<HairStyleBean> hairlist = null;
                        int n = 0;
                        if (request.getAttribute("hair") != null) {
                            hairlist = (List<HairStyleBean>) request.getAttribute("hair");
                        } else {
                            hairlist = HairForm.quaryLong();
                        }
                        if (hairlist.size() > 10) {
                            n = 10;
                        } else {
                            n = hairlist.size();
                        }
                        for (int i = 0; i < n; i++) {
                    %>
                    <td height="120">
                        <table width="150" height="150">
                            <tr>
                                <td width="180"><a href="left.jsp"><img
                                        src="<%=hairlist.get(i).getHpic()%>"
                                        width="150" height="150" alt="您还没有登陆"></a></td>
                            </tr>
                        </table>
                        <table width="162" height="55">
                            <tr>
                                <td width="154" height="10">发型ID:<%=hairlist.get(i).getHid()%>
                                </td>
                            </tr>
                            <tr>
                                <td width="154" height="10">发型名称:<%=hairlist.get(i).getHname()%>
                                </td>
                            </tr>
                            <tr>
                                <td height="10">价格:<%=hairlist.get(i).getHprice()%>
                                </td>
                            </tr>
                            <tr>
                                <td height="10">
                                    <a href="barberlist.jsp?Hid=<%=hairlist.get(i).getHid()%>">预定</a>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <%}%>
                </tr>
                <tr>
                    <td colspan="3"></td>
                </tr>
            </table>


    </tr>
    <tr>
        <td colspan="3"></td>
    </tr>
</table>
</td>
</tr>
</table>
</body>
</html>