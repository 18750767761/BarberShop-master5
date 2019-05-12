<%@ page contentType="text/html; charset=gb2312" import="java.sql.*" errorPage="" %>
<%@ page import="barber.bean.OrderBean" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="barber.form.OrderForm" %>
<%@ page import="barber.bean.HairStyleBean" %>
<%@ page import="barber.form.HairForm" %>
<html>
<head>
    <title>main_03</title>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<jsp:include page="left.jsp"/>
<table border="0" cellpadding="0" cellspacing="0" background="images/right.gif" width="709" height="992">
    <tr>
        <td height="80">
            <div align="center"><h1>我的预约</h1></div>
        </td>
    </tr>
    <tr>
        <td height="100">
            <div align="center">
                <table border="1">
                    <tr>
                        <td>订单编号</td>
                        <td>发型ID</td>
                        <td>发型预览</td>
                        <td>订单价格</td>
                        <td>订单时间</td>
                        <td colspan="2">状态</td>
                    </tr>
                    <%
                        List<OrderBean> order = OrderForm.quaryOrder();
                        for (int i = 0; i < order.size(); i++) {
                    %>
                    <tr>
                        <td><%=order.get(i).getOid()%>
                        </td>
                        <td><%=order.get(i).getHid()%>
                        </td>
                        <% HairStyleBean hair = HairForm.quaryHair(order.get(i).getHid());%>
                        <td><img src="<%=hair.getHpic()%>" width="150" height="150"/></td>
                        <td><%=order.get(i).getSprice()%>元
                        </td>
                        <%
                            String time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(order.get(i).getStime());

                        %>
                        <td><%=time%>
                        </td>
                        <%
                            if (order.get(i).getScondition() != 1) {
                        %>
                        <td>已完成</td>
                        <%} else {%>
                        <td><a href="orderremove.jsp?order=<%=order.get(i).getOid()%>">取消预约</a></td>
                        <%
                                }
                            }
                        %>
                    </tr>

                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td></td>
    </tr>
</table>

</body>
</html>