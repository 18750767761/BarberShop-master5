<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BarberShop","root","qq201314");
    PreparedStatement pStmt = conn.prepareStatement("delete from user where Uid="+id);
    if(pStmt.executeUpdate()!=0)out.println("<script>alert('用户删除成功！');window.location='4user.jsp';</script>");
    else out.println("<script>alert('用户删除失败！该用户不存在！');window.location='4user.jsp';</script>");
%>

