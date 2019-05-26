<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.sql.*"%>
<center>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/BarberShop","root","qq201314");
        Statement statement=con.createStatement();
        ResultSet rs=statement.executeQuery("SELECT * FROM hairstyle");
    %>
    若要删除发型，则请输入发型id<br>
    若要添加发型或更新发型，则请输入发型id、发型种类、价格、发型描述。其他信息可选填<br>
    <p id="2" style="color:red"/>
    <form id="1" method="post">
        <table border="1" style="text-align:center">
            <tr><td>发型id</td><td>发型种类</td><td>价格（元）</td><td>发型描述</td><td>性别</td><td>理发所需时间（分）</td></tr>
            <tr><td><input id="3" name="id"></td><td><input id="4" name="name"></td><td><input id="5" name="price"></td><td><input id="6" name="s"></td>
			<td><input name="sex"></td><td><input name="time"></td></tr>
        </table>
        <button type="button" onclick="g('6del.jsp',this)">删除发型</button>
        <button type="button" onclick="h('6add.jsp',this)">添加发型</button>
        <button type="button" onclick="h('6update.jsp',this)">更新发型</button>
    </form>
    <table border="1" style="text-align:center">
		<tr><td>发型id</td><td>发型种类</td><td>价格（元）</td><td>发型描述</td><td>性别</td><td>理发所需时间（分）</td><td>发型图片</td></tr>
        <%
            while(rs.next()){%>
        <tr>
            <td><%=rs.getString("Hid")%></td>
            <td><%=rs.getString("Hname")%></td>
			<td><%=rs.getString("Hprice")%></td>
			<td><%=rs.getString("Hcomment")%></td>
			<td><%=rs.getString("Hsex")%></td>
			<td><%=rs.getString("Htime")%></td>
			<td><img src="../<%=rs.getString("Hpic")%>" alt="无发型图片" style="width:100px;height:100px"/></td>
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
        if(d.getElementById(3).value=="")d.getElementById(2).innerText="请输入发型id！";
        else f(i,j);
    }
    function h(i,j)
    {
        if(d.getElementById(3).value==""||d.getElementById(4).value==""||d.getElementById(5).value==""||d.getElementById(6).value=="")
            d.getElementById(2).innerText="请输入发型id、发型种类、价格、发型描述！";
        else f(i,j);
    }
</script>