<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String sex = request.getParameter("sex");
	String age = request.getParameter("age");
	String tel = request.getParameter("tel");
	if(name.equals(""))name=null;
	if(sex.equals(""))sex=null;
	if(age.equals(""))age=null;
	if(tel.equals(""))tel=null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BarberShop","root","qq201314");
	PreparedStatement pStmt = conn.prepareStatement("select * from user where Uid="+id);
	ResultSet rs = pStmt.executeQuery();
	if(rs.next())out.println("<script>alert('该用户已存在，请重新注册！');window.location='4user.jsp';</script>");
	else
	{
		PreparedStatement tmt = conn.prepareStatement("Insert into user values("+id+","+pw+","+name+","+sex+","+age+",null,"+tel+",null)");
		if(tmt.executeUpdate()!=0)out.println("<script>alert('用户注册成功！');window.location='4user.jsp';</script>");
		else out.println("<script>alert('用户注册失败！');window.location='4user.jsp';</script>");
	}
%>
