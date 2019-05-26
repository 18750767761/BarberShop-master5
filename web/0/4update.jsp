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
	PreparedStatement tmt = conn.prepareStatement("update user set Upassword="+pw+",Uname="+name+",Usex="+sex+",Uage="+age+",Utel="+tel+" where Uid="+id);
	if(tmt.executeUpdate()!=0)out.println("<script>alert('用户更新成功！');window.location='4user.jsp';</script>");
	else out.println("<script>alert('用户更新失败！不存在该用户！');window.location='4user.jsp';</script>");
%>
