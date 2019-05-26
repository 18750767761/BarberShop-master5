<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String sex = request.getParameter("sex");
	String price = request.getParameter("price");
	String time=request.getParameter("time");
	String s=request.getParameter("s");
	if(time.equals(""))time=null;
	if(sex.equals(""))sex=null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BarberShop","root","qq201314");
	PreparedStatement tmt = conn.prepareStatement("update hairstyle set Hname="+name+",Hsex="+sex
	+",Hprice="+price+",Htime="+time+",Hcomment="+s+" where Hid="+id);
	if(tmt.executeUpdate()!=0)out.println("<script>alert('发型更新成功！');window.location='6hairstyle.jsp';</script>");
	else out.println("<script>alert('发型更新失败！不存在该发型！');window.location='6hairstyle.jsp';</script>");
%>
