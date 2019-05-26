<%--
  Created by IntelliJ IDEA.
  User: 11616
  Date: 2019/5/22
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>路桥理发店</title>
    <link rel="stylesheet" type="text/css" href="../statics/css/font-awesome.min.css"/><!--图标库-->
    <link href="../css/GongGao.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="../statics/css/style.css"/>
    <link href="../statics/css/firstStyle.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="../statics/css/ProfileCardStyle.css">
</head>
<body>
<div class="banner-top index">
    <!-- 最上方的那一栏 -->
    <header class="header top-header">
        <div class="topnav ">
            <div class="container">
                <nav class="navbar">
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" target="_blank">登录/注册</a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right yhcx">
                        <li>
                            <a href="../barber/main.jsp" style="color:#FFdd00 !important"><i class="fa fa-gift hot-yhcx"
                                                                                        style="color:#FFdd00 !important"></i>我的订单</a>
                        </li>
                        <li>
                            <a href="">会员中心</a>
                        </li>
                        <li class="lang-style">
                        </li>
                    </ul>

                </nav>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-xs-12 p-l-0 p-r-0">
                    <nav class="navbar">
                        <div class="navbar-header">

                            <a class="navbar-brand" href="#">造型设计</a>
                        </div>

                        <ul class="nav navbar-nav navbar-right account">
                            <li>
                                <a class="btn login" href="#">店铺电话</a>
                            </li>
                        </ul>

                        <ul id="navbar" class="nav navbar-nav navbar-left">
                            <li class="item">
                                <a href="../barber/main.jsp">我的预约</a>
                            </li>
                            <li class="item">
                                <a href="../barber/orderlist.jsp">已完成订单</a>
                            </li>

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>

</div>
</body>
</html>
