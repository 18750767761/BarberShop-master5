<%@ page contentType="text/html; charset=gb2312" import="java.sql.*"%>
<html> 
	<head>
		<title>showVip</title>
	</head>
	<body>
	<table  background="images/right.gif" height="791" width="709">
	<tr><td height="50"></td></tr>
	<tr><td height="20"><div align="center"><h1>�鿴������Ϣ</h1></div></td></tr>

	<tr><td height="80">
		<div align="center">
		<table border="1">
		<tr>
		<td>��ԱID��</td>
		<td><%="vipUser" %></td>
		</tr>
		<tr>
		<td>��ʵ������</td>
		<td><%="vipName" %></td>
		</tr>
		<tr>
		<td>�Ա�</td>
		<td><%="vipSex" %></td>
		</tr>
		<tr>
		<td>��ϵ�绰��</td>
		<td><%="vipTel" %></td>
		</tr>
		<tr>
		<td>֤�����ͣ�</td>
		<td><%="vipCard" %></td>
		</tr>
		<tr>
		<td>֤�����룺</td>
		<td><%="vipNum "%></td>
		</tr>
		</table>
		</div>
	</td></tr>	

	<tr><td height="400"></td></tr>
	</table>
	</body>
</html>