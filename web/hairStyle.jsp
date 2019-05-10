<%@ page import="barber.bean.UserBean" %>
<%@ page import="barber.bean.HairStyleBean" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 11616
  Date: 2019/5/8
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%UserBean userBean = (UserBean) session.getAttribute("user");%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>网上理发店预约</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        ddsmoothmenu.init({
            mainmenuid: "templatemo_menu", //menu DIV id
            orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
            classname: 'ddsmoothmenu', //class added to menu's outer DIV
            //customtheme: ["#1c5a80", "#18374a"],
            contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
        })
    </script>
</head>
<body id="subpage">
<%--这些都看不到了--%>
<div id="templatemo_wrapper">
    <jsp:include page="main_head.jsp"/>

    <jsp:include page="hair_type.jsp" flush="true"/>
    <%
        List<HairStyleBean> hairStyleBean = (List<HairStyleBean>) request.getAttribute("hair");
        out.print(hairStyleBean.size());
    %>

    <div id="templatemo_main">

        <%
            for (int i = 0; i < 10; i++) {
                System.out.println(hairStyleBean.get(i).getHpic());
        %>
        <div class="col col_2">
            <img src="<%=hairStyleBean.get(i).getHpic()%>" alt="image" style="width: 265px;height:230px"/>
            <p class="image_caption">
                <%
                    hairStyleBean.get(i).getHname();
                %><a href="" rel="nofollow"></a>
                <a href="#" class="more">预定</a>
            </p>
            <%}%>
        </div>

        <%--<div class="templatemo_paging">--%>
        <%--<ul>--%>
        <%--<li><a href="#">向前</a></li>--%>
        <%--<li><a href="#">1</a></li>--%>
        <%--<li><a href="#">2</a></li>--%>
        <%--<li><a href="#">3</a></li>--%>
        <%--<li><a href="#">4</a></li>--%>
        <%--<li><a href="#">5</a></li>--%>
        <%--<li><a href="#">6</a></li>--%>
        <%--<li><a href="#">向后</a></li>--%>
        <%--</ul>--%>
        <%--<div class="clear"></div>--%>
        <%--</div>--%>

    </div>
</div>

<div id="templatemo_footer_wrapper">
    <div id="templatemo_footer">
        XX © 路桥理发店
    </div>
</div>

</body>
</html>
