<%@ page contentType="text/html;charset=gb2312" %>

<html> 
	<head>
		<title>order</title>
	</head>
	<body>

	<table  background="images/right.gif" height="791" width="709"  bordr="1">
	<tr><td height="20"><div align="center"><h1>Ԥ���ɹ�</h1></div></td></tr>
	<tr><td height="100">
		<div align="center">
		<table>
			<tr><td>
			<table border="1">
			<tr><td colspan="2" height="50"><div align="center">ǧ˿���Ʒ��͹�����ԤԼ����</div></td></tr>
			<tr><td>�������:</td><td><%="order.getOrderID()" %></td></tr>
			<tr><td>����ʱ��:</td><td><%="order.getDate()" %></td></tr>
			<tr><td>��ԱID:</td><td><%="user.getId()" %></td></tr>
			<tr><td>��Ա��ʵ����:</td><td><%="user.getName()" %></td></tr>
			<tr><td>��Ա��ϵ�绰��</td><td><%="user.getTel()" %></td></tr>
			<tr><td colspan="2">
				<table>
				<tr><td weight="150" colspan="3">Ԥ�����ͣ�</td></tr>
				<tr>
				<td><img src="pic_show.jsp?hairID=<%="hair.getHairID()" %>" weight="150" height="150"/></td>
				<td>
				<table>
				<tr><td>����ID��</td><td><%="hair.getHairID()" %></td></tr>
				<tr><td>�������ƣ�</td><td><%="hair.getHairName()" %></td></tr>
				<tr><td>���ͼ۸�</td><td><%="hair.getHairPrice()" %></td></tr>
				</table>
				</td>
				</tr>
				<tr></tr>
				</table>
			</td></tr>
			<tr><td colspan="2">Ԥ����ʦ��</td></tr>
			<tr><td>��ʦID��</td><td><%="barber.getBarberID()" %></td></tr>
			<tr><td>��ʦ������</td><td><%="barber.getBarberName()" %></td></tr>
			<tr><td height="40" colspan="2">
				<div align="center">
				�����߸���������ƾ������ʵ���<br>
				ǧ˿���Ʒ��͹����ң�����������·288��<br>
				��ϵ�绰��0571-28867095				
				</div>
			</td></tr>
			<tr><td colspan="2"><div align="center"><a href="printOrder.jsp">��ӡ����</a> <a href="main.jsp" target="_parent">������ҳ</a></div></td></tr>
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