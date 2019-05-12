<%@ page contentType="text/html; charset=gb2312" import="java.sql.*"%>
<html> 
	<head>
		<title>showVip</title>
	</head>
	<body>
	<table  background="images/right.gif" height="791" width="709">
	<tr><td height="50"></td></tr>
	<tr><td height="20"><div align="center"><h1>查看个人信息</h1></div></td></tr>

	<tr><td height="80">
		<div align="center">
		<table border="1">
		<tr>
		<td>会员ID：</td>
		<td><%="vipUser" %></td>
		</tr>
		<tr>
		<td>真实姓名：</td>
		<td><%="vipName" %></td>
		</tr>
		<tr>
		<td>性别：</td>
		<td><%="vipSex" %></td>
		</tr>
		<tr>
		<td>联系电话：</td>
		<td><%="vipTel" %></td>
		</tr>
		<tr>
		<td>证件类型：</td>
		<td><%="vipCard" %></td>
		</tr>
		<tr>
		<td>证件号码：</td>
		<td><%="vipNum "%></td>
		</tr>
		</table>
		</div>
	</td></tr>	

	<tr><td height="400"></td></tr>
	</table>
	</body>
</html>