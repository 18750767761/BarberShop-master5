<%@ page contentType="text/html; charset=gb2312" import="java.sql.*" errorPage="" %>
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

                    <tr>
                        <td><%="orderID"%>
                        </td>
                        <td><%="hairID"%>
                        </td>
                        <td><img src="images/2.jpg" width="150" height="150"/></td>
                        <td><%="orderPrice"%>
                        </td>
                        <td><%="orderDate"%>
                        </td>
                        <td>未执行</td>
                        <td><a href="delorder.jsp">取消预约</a></td>
                        <td colspan="2">已执行</td>
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