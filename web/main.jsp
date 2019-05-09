<%@ page import="barber.bean.UserBean" %><%--
  Created by IntelliJ IDEA.
  User: 11616
  Date: 2019/5/4
  Time: 23:17
  To change this template use File | Settings | File Templates.
--%>
<%
    UserBean userBean = (UserBean) request.getAttribute("user");
    session.setAttribute("user",userBean);
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>网上理发店预约</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <style type="text/css">
        @import url(css/templatemo_style.css);
        @import url(css/orman.css);
        @import url(css/nivo-slider.css);
        @import url(css/slimbox2.css);
        @import url(js/slimbox2.js);
        @import url(css/ddsmoothmenu.css);
        @import url(js/jquery.min.js);
        @import url(js/ddsmoothmenu.js);
    </style>
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
<body id="home">

<div id="templatemo_wrapper">
   <jsp:include page="main_head.jsp"/>
    <%--少了左侧边栏--%>

    <div id="templatemo_slider"><span class="sliderframe"></span>
        <div class="slider-wrapper theme-orman">
            <div id="slider" class="nivoSlider">
                <img src="images/slider/01.jpg" alt="slider image 2" title="#htmlcaption"/>
                <img src="images/slider/02.jpg" alt="slider image 2" title="路桥理发店开业大酬宾"/>
                <img src="images/slider/03.jpg" alt="slider image 2" title="路桥理发店开业大酬宾"/>
                <img src="images/slider/04.jpg" alt="slider image 4" title="路桥理发店开业大酬宾"/>
            </div>
            <div id="htmlcaption" class="nivo-html-caption">
                <strong>端午节全场优惠8.8折</strong>
            </div>
        </div>
        <script type="text/javascript" src="js/jquery-1.6.1.min.js"></script>
        <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
        <script type="text/javascript">
            $(window).load(function () {
                $('#slider').nivoSlider({
                    controlNav: false,
                    directionNavHide: false
                });
            });
        </script>
    </div>
</div>
</body>
</html>