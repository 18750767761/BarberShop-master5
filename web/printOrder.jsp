<%@ page contentType="text/html;charset=gb2312" %>

<html> 
	<head>
		<title>order</title>
	</head>
	<body>

	<table  background="images/right.gif" height="791" width="709"  bordr="1">
	<tr><td height="20"><div align="center"><h1>预订成功</h1></div></td></tr>
	<tr><td height="100">
		<div align="center">
		<table>
			<tr><td>
			<table border="1">
			<tr><td colspan="2" height="50"><div align="center">千丝万缕发型工作室预约订单</div></td></tr>
			<tr><td>订单编号:</td><td><%="order.getOrderID()" %></td></tr>
			<tr><td>订单时间:</td><td><%="order.getDate()" %></td></tr>
			<tr><td>会员ID:</td><td><%="user.getId()" %></td></tr>
			<tr><td>会员真实姓名:</td><td><%="user.getName()" %></td></tr>
			<tr><td>会员联系电话：</td><td><%="user.getTel()" %></td></tr>
			<tr><td colspan="2">
				<table>
				<tr><td weight="150" colspan="3">预定发型：</td></tr>
				<tr>
				<td><img src="pic_show.jsp?hairID=<%="hair.getHairID()" %>" weight="150" height="150"/></td>
				<td>
				<table>
				<tr><td>发型ID：</td><td><%="hair.getHairID()" %></td></tr>
				<tr><td>发型名称：</td><td><%="hair.getHairName()" %></td></tr>
				<tr><td>发型价格：</td><td><%="hair.getHairPrice()" %></td></tr>
				</table>
				</td>
				</tr>
				<tr></tr>
				</table>
			</td></tr>
			<tr><td colspan="2">预定理发师：</td></tr>
			<tr><td>理发师ID：</td><td><%="barber.getBarberID()" %></td></tr>
			<tr><td>理发师姓名：</td><td><%="barber.getBarberName()" %></td></tr>
			<tr><td height="40" colspan="2">
				<div align="center">
				请在七个工作日内凭订单到实体店<br>
				千丝万缕发型工作室：杭州市留和路288号<br>
				联系电话：0571-28867095				
				</div>
			</td></tr>
			<tr><td colspan="2"><div align="center"><a href="printOrder.jsp">打印订单</a> <a href="main.jsp" target="_parent">返回首页</a></div></td></tr>
			</table>
			</td></tr>
		<tr><td></td></tr>

		</table>
		</div>
	</td></tr>
	<tr><td height="100"></td></tr>
	</table>

	</body>
</html>