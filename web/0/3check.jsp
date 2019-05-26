<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<body>
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String s = request.getParameter("s");
    if(name.equals(""))name=null;
    if(s.equals(""))s=null;
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BarberShop","root","qq201314");
    PreparedStatement pStmt = conn.prepareStatement("select * from barber where Bid="+id);
    ResultSet rs = pStmt.executeQuery();
    if(rs.next())out.println("<script>alert('该发型师已存在，请重新注册！');window.location='3barberRegist.jsp';</script>");
    else
    {
        PreparedStatement tmt = conn.prepareStatement("Insert into barber values("+id+","+name+",null,null,"+s+","+pw+")");
        if(tmt.executeUpdate()!=0)out.println("<script>alert('发型师注册成功！');window.location='..';</script>");
        else out.println("<script>alert('发型师注册失败！');window.location='3barberRegist.jsp';</script>");
    }
%>
</body>

