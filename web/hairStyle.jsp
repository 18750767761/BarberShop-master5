<%@ page import="barber.bean.UserBean" %><%--
  Created by IntelliJ IDEA.
  User: 11616
  Date: 2019/5/8
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%UserBean userBean = (UserBean) session.getAttribute("user");%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>网上理发店预约</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <script src="js/jquery-1.8.3.min.js"></script>
    <style type="text/css">
        @import url(css/templatemo_style.css);
        @import url(css/orman.css);
        @import url(css/nivo-slider.css);
        @import url(css/slimbox2.css);
        @import url(css/hair.css);
        @import url(css/ddsmoothmenu.css);
    </style>
    <style type="text/javascript">
        @import url(js/slimbox2.js);
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
<body id="subpage">

<div id="templatemo_wrapper">
    <div id="templatemo_header">
        <div id="site_title"><a href="#">这里放logo的图片</a></div>
        <div id="templatemo_menu" class="ddsmoothmenu">
            <ul>
                <li><a href="首页.html" >首页</a></li>
                <li><a href="hairStyle.jsp" class="selected">发型屋</a></li>
                <li><a href="blog.html">理发师</a></li>
                <li><a href="about.html">我的预约</a></li>
                <li><a href="contact.html">我的信息</a></li>
            </ul>
            <br style="clear: left" />
        </div>
    </div>

    <div id="templatemo_page_intro">
        <section class="demo">
            <ul class="nav black">
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
                <li><a href="">发型</a></li>
            </ul>
        </section>
    </div>


    <div id="templatemo_main">

        <div class="col col_2">
            <img src="images/portfolio/01.jpg" alt="image" />
            <p class="image_caption">发型介绍<a href="" rel="nofollow"></a>
                <a href="#" class="more">预定</a>
            </p>
        </div>

        <div class="col col_2 no_mr">
            <img src="images/portfolio/02.jpg" alt="image" />
            <p class="image_caption">发型介绍
                <a href="#" class="more">预定</a>
            </p>
        </div>

        <div class="clear"></div>

        <div class="col col_2">
            <img src="images/portfolio/03.jpg" alt="image" />
            <p class="image_caption">发型介绍
                <a href="#" class="more">预定</a>
            </p>
        </div>

        <div class="col col_2 no_mr">
            <img src="images/portfolio/04.jpg" alt="image" />
            <p class="image_caption">发型介绍
                <a href="#" class="more">预定</a>
            </p>
        </div>
        <div class="clear"></div>

        <div class="templatemo_paging">
            <ul>
                <li><a href="#">向前</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">6</a></li>
                <li><a href="#">向后</a></li>
            </ul>
            <div class="clear"></div>
        </div>

    </div>
</div>

<div id="templatemo_footer_wrapper">
    <div id="templatemo_footer">
        XX © 路桥理发店
    </div>
</div>

</body>
</html>
