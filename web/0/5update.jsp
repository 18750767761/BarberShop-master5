<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String s=request.getParameter("s");
	if(name.equals(""))name=null;
	if(s.equals(""))s=null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BarberShop","root","qq201314");
	PreparedStatement tmt = conn.prepareStatement("update barber set Bpassword="+pw+",Bname="+name+",Bcommons="+s+" where Bid="+id);
	if(tmt.executeUpdate()!=0)out.println("<script>alert('发型师更新成功！');window.location='5barber.jsp';</script>");
	else out.println("<script>alert('发型师更新失败！不存在该发型师！');window.location='5barber.jsp';</script>");
%>