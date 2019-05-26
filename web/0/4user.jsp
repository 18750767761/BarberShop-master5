<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.sql.*"%>
<center>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/BarberShop","root","qq201314");
        Statement statement=con.createStatement();
        ResultSet rs=statement.executeQuery("SELECT * FROM user");
    %>
    若要删除用户，则请输入账号<br>
    若要添加（注册）用户或更新用户，则请输入账号、密码。其他信息可选填<br>
    <p id="2" style="color:red"/>
    <form id="1" method="post">
        <table border="1" style="text-align:center">
            <tr><td>账号</td><td>密码</td><td>用户名</td><td>性别</td><td>年龄</td><td>电话</td></tr>
            <tr><td><input id="3" name="id"></td><td><input id="4" name="pw"></td><td><input name="name"></td>
			<td><input name="sex"></td><td><input name="age"></td><td><input name="tel"></td></tr>
        </table>
        <button type="button" onclick="g('4del.jsp',this)">删除用户</button>
        <button type="button" onclick="h('4add.jsp',this)">添加（注册）用户</button>
        <button type="button" onclick="h('4update.jsp',this)">更新用户</button>
    </form>
    <table border="1" style="text-align:center">
		<tr><td>账号</td><td>密码</td><td>用户名</td><td>性别</td><td>年龄</td><td>电话</td></tr>
        <%
            while(rs.next()){%>
        <tr>
            <td><%=rs.getString("Uid")%></td>
            <td><%=rs.getString("Upassword")%></td>
            <td><%=rs.getString("Uname")%></td>
			<td><%=rs.getString("Usex")%></td>
			<td><%=rs.getString("Uage")%></td>
			<td><%=rs.getString("Utel")%></td>
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