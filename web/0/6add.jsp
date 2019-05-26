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
	PreparedStatement pStmt = conn.prepareStatement("select * from hairstyle where Hid="+id);
	ResultSet rs = pStmt.executeQuery();
	if(rs.next())out.println("<script>alert('发型id已存在，请换个发型id再添加！');window.location='6hairstyle.jsp';</script>");
	else
	{
		PreparedStatement tmt = conn.prepareStatement("Insert into hairstyle values("+id+","+name+","+sex+","+price+","+time+",'',"+s+")");
		if(tmt.executeUpdate()!=0)out.println("<script>alert('发型添加成功！');window.location='6hairstyle.jsp';</script>");
		else out.println("<script>alert('发型添加失败！');window.location='6hairstyle.jsp';</script>");
	}
%>
