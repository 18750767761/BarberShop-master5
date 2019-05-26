<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.sql.*"%>
<center>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/BarberShop","root","qq201314");
		Statement statement=con.createStatement();
		ResultSet rs=statement.executeQuery("SELECT * FROM barber");
	%>
	若要删除发型师，则请输入账号<br>
	若要添加（注册）发型师或更新发型师，则请输入账号、密码。其他信息可选填<br>
	<p id="2" style="color:red"/>
	<form id="1" method="post">
		<table border="1" style="text-align:center">
			<tr><td>账号</td><td>密码</td><td>姓名</td><td>自我介绍</td></tr>
			<tr><td><input id="3" name="id"></td><td><input id="4" name="pw"></td><td><input name="name"></td>
			<td><input name="s"></td></tr>
		</table>
		<button type="button" onclick="g('5del.jsp',this)">删除发型师</button>
		<button type="button" onclick="h('5add.jsp',this)">添加（注册）发型师</button>
		<button type="button" onclick="h('5update.jsp',this)">更新发型师</button>
	</form>
	<table border="1" style="text-align:center">
		<tr><td>账号</td><td>密码</td><td>姓名</td><td>自我介绍</td><td>头像</td></tr>
		<%
			while(rs.next()){%>
		<tr>
			<td><%=rs.getString("Bid")%></td>
			<td><%=rs.getString("Bpassword")%></td>
			<td><%=rs.getString("Bname")%></td>
			<td><%=rs.getString("Bcommons")%></td>
			<td><img src="../<%=rs.getString("Bpic")%>" alt="无头像" style="width:100px;height:100px"/></td>
		</tr>
		<%
			}
			rs.close();
			statement.close();
			con.close();
		%>
	</table>
</center>
<script>
    d=document;
    function f(i,j)
    {
        d.getElementById(1).action=i;j.type="submit";
    }
    function g(i,j)
    {
        if(d.getElementById(3).value=="")d.getElementById(2).innerText="请输入账号！";
        else f(i,j);
    }
    function h(i,j)
    {
        if(d.getElementById(3).value==""||d.getElementById(4).value=="")d.getElementById(2).innerText="请输入账号、密码！";
        else f(i,j);
    }
</script>