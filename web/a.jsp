<%@ page import="barber.form.HairForm" %>
<%@ page import="barber.bean.HairStyleBean" %>
<%@ page import="barber.bean.UserBean" %>
<%@ page import="barber.bean.OrderBean" %>
<%@ page import="barber.form.OrderForm" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>路桥理发店</title>

    <link rel="stylesheet" type="text/css" href="statics/css/font-awesome.min.css"/><!--图标库-->
    <link href="css/GongGao.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="statics/css/style.css"/>
    <link href="statics/css/firstStyle.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="statics/css/ProfileCardStyle.css">
    <link type="text/css" rel="stylesheet" href="css/DingDangStyle.css">

</head>

<body>

<jsp:include page="header.jsp"/>
<script src="statics/js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
<script src="statics/js/main.js" type="text/javascript" charset="utf-8"></script>
<div class="con">
    <jsp:include page="left.jsp"/>
    <div class="right">
        <div class="test">
            <table style="width:100%;height:100%;" cellspacing="15px">
                    <%
                    UserBean user = (UserBean) session.getAttribute("user");
                    List<OrderBean> order = OrderForm.quaryOrder(user.getUid());
                    for (int i = 0; i < order.size(); i++) {
                %>
                <tr>
                    <td>
                        <div id="container">
                            <div class="product-details">
                                <h3>订单编号:<%=order.get(i).getOid()%>
                                </h3>
                                <li>用户ID:<%=order.get(i).getUid()%>
                                </li>
                                <li>姓名:<%=user.getUname()%>
                                </li>
                                <li>电话:<%=user.getUtel()%>
                                </li>
                                <li>理发师ID:<%=order.get(i).getBid()%>
                                </li>
                            </div>
                            <div class="product-image">
                                <% HairStyleBean hair = HairForm.quaryHair(order.get(i).getHid());%>
                                <img src="<%=hair.getHpic()%>" alt="Omar Dsoky">
                                <div class="info">
                                    <h2>发型详情</h2>
                                    <ul>
                                        <li><strong>发型ID：</strong><%=hair.getHid()%>></li>
                                        <li><strong>发型名称：</strong><%=hair.getHname()%>></li>
                                        <li><strong>发型价格：</strong><%=hair.getHprice()%>></li>
                                    </ul>
                                </div>
                            </div>
                            <%
                                if (order.get(i).getScondition() != 1) {
                            %>
                            <a>已完成</a>
                            <%} else {%>
                            <a><a href="orderremove.jsp?order=<%=order.get(i).getOid()%>">取消预约</a></a>
                            <%}%>
                        </div>
                            <%}%>
            </table>
        </div>
    </div>


</div>

</body>
</html>