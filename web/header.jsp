<%@ page contentType="text/html; charset=utf-8" import="java.lang.*, java.io.*, java.sql.*, java.util.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>路桥理发店</title>
    <link rel="stylesheet" type="text/css" href="statics/css/font-awesome.min.css"/><!--图标库-->
    <link href="css/GongGao.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="statics/css/style.css"/>
    <link href="statics/css/firstStyle.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="statics/css/ProfileCardStyle.css">
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
                            <a href="orderlist.jsp" style="color:#FFdd00 !important"><i class="fa fa-gift hot-yhcx"
                                                                                        style="color:#FFdd00 !important"></i>我的订单</a>
                        </li>
                        <li>
                            <a href="barberlist.jsp?Hid=34">会员中心</a>
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
                            <li class="item" _h_nav="product">
                                <a href="hairlist.jsp">发型大全</a>
                            </li>
                            <li class="item" _h_nav="plan">
                                <a href="barberlist.jsp">理发师</a>
                            </li>
                            <li class="item" _h_nav="support">
                                <a href="orderlist.jsp">订单列表</a>
                            </li>

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <div class="subnav">
        <div class="sub-nav" _h_nav="product" id="product" style="display: none;">
            <div class="container" style="padding-left: 90px;">
                <div class="row">
                    <div class="col-sm-12">
                        <dl style="width:12%;">
                            <dt style="font-size:15px;">女生</dt>
                            <dd>
                                <a href="hair?type=nvshengduanfa&sign=1" style="font-size: 15px;">短发</a></dd>
                            <dd>
                                <a href="hair?type=nvshengzhongchangfa&sign=1" style="font-size: 15px;">中长发</a></dd>
                            <dd>
                                <a href="hair?type=nvshengzhifa&sign=1" style="font-size: 15px;">直发</a></dd>
                            <dd>
                                <a href="hair?type=nvshengjuanfa&sign=1" style="font-size: 15px;">卷发</a></dd>
                            <dd>
                                <a href="hair?type=nvshengtangfa&sign=1" style="font-size: 15px;">烫发</a></dd>
                            <dd>
                                <a href="hair?type=nvshengranfa&sign=1" style="font-size: 15px;">染发</a></dd>
                        </dl>

                        <dl style="width:12%;">
                            <dt style="font-size:15px;">女生</dt>
                            <dd>
                                <a href="hair?type=nvshenglianxingpeifaxing&sign=1" style="font-size: 15px;">脸型</a></dd>
                            <dd>
                                <a href="hair?type=guzhuang&sign=1" style="font-size: 15px;">古装</a></dd>
                            <dd>
                                <a href="hair?type=fashi&sign=1" style="font-size: 15px;">发饰</a></dd>
                            <dd>
                                <a href="hair?type=xiaonvhaifaxing&sign=1" style="font-size: 15px;">小女孩</a></dd>
                            <dd>
                                <a href="hair?type=feizhuliufaxingnv&sign=1" style="font-size: 15px;">非主流</a></dd>
                            <dd>
                                <a href="hair?type=xinniangfaxingtupian&sign=1" style="font-size: 15px;">新娘</a></dd>

                        </dl>

                        <dl style="width:12%;">
                            <dt style="font-size:15px;">男生</dt>
                            <dd>
                                <a href="hair?type=nanshengduanfa&sign=1" style="font-size: 15px;">短发</a>
                            </dd>
                            <dd>
                                <a href="hair?type=nanshengzhongchangfa&sign=1" style="font-size: 15px;">中长发</a>
                            </dd>
                            <dd>
                                <a href="hair?type=nanshengjuanfa&sign=1" style="font-size: 15px;">卷发</a>
                            </dd>
                            <dd>
                                <a href="hair?type=nanshengtangfa&sign=1" style="font-size: 15px;">烫发</a>
                            </dd>
                            <dd>
                                <a href="hair?type=nanshengranfa&sign=1" style="font-size: 15px;">染发</a>
                            </dd>
                            <dd>
                                <a href="hair?type=nanshenglianxingpeifaxing&sign=1" style="font-size: 15px;">脸型</a>
                            </dd>

                        </dl>

                        <dl style="width:12%;">
                            <dt style="font-size:15px;">男生</dt>
                            <dd>
                                <a href="hair?type=xiaonanhaifaxing&sign=1" style="font-size: 15px;">小男孩</a>
                            </dd>
                            <dd>
                                <a href="hair?type=feizhuliufaxingnan&sign=1" style="font-size: 15px;">非主流</a>
                            </dd>
                            <dd>
                                <a href="hair?type=nanmingxing&sign=1" style="font-size: 15px;">男明星</a>
                            </dd>

                        </dl>

                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
</html>