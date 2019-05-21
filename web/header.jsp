<%@ page contentType="text/html; charset=utf-8" import="java.lang.*, java.io.*, java.sql.*, java.util.*" %>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <title>路桥理发店</title>
        <link rel="stylesheet" type="text/css" href="statics/css/font-awesome.min.css"/><!--图标库-->
        <link href="css/GongGao.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="statics/css/style.css"/>
        <link href="statics/css/firstStyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="statics/css/ProfileCardStyle.css">
    </head>
</head>
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
                                <a href="login">发型大全</a>
                            </li>
                            <li class="item" _h_nav="plan">
                                <a href="barberlist.jsp">理发师</a>
                            </li>
                            <li class="item" _h_nav="support">
                                <a href="orderlist.jsp">订单列表</a>
                            </li>
                            <li class="item" _h_nav="cooperation">
                                <a>合作共赢</a>
                            </li>
                            <li class="item" _h_nav="culture">
                                <a>企业文化</a>
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
                            <dt style="font-size:15px;">发型</dt>
                            <dd>
                                <a href="hair?type=long" style="font-size: 15px;">长发</a></dd>
                            <dd>
                                <a href="hair?type=short" style="font-size: 15px;">短发</a>
                            </dd>
                            <dd>
                                <a href="hair?type=lihua" style="font-size: 15px;">梨花发</a>
                            </dd>
                        </dl>
                        <dl style="width:12%;">
                            <dt style="font-size:15px;">发型</dt>

                            <dd>
                                <a href="hair?type=liuhai" style="font-size: 15px;">刘海</a>
                            </dd>
                            <dd>
                                <a href="hair?type=BOB" style="font-size: 15px;">BOB头</a>
                            </dd>
                            <dd>
                                <a href="hair?type=juang" style="font-size: 15px;">卷发</a>
                            </dd>

                        </dl>
                        <dl style="width:12%;">
                            <dt style="font-size:15px;">发型</dt>
                            <dd>
                                <a href="hair?type=mawei" style="font-size: 15px;">马尾</a>
                            </dd>
                            <dd>
                                <a href="hair?type=midlong" style="font-size: 15px;">中长发</a>
                            </dd>
                            <dd>
                                <a href="hair?type=panfa" style="font-size: 15px;">盘发</a>
                            </dd>

                        </dl>
                        <dl style="width:12%;">
                            <dt style="font-size:15px;">发型</dt>
                            <dd>
                                <a href="hair?type=ranfa" style="font-size: 15px;">染发</a>
                            </dd>
                            <dd>
                                <a href="hair?type=strait" style="font-size: 15px;">直发</a>
                            </dd>
                            <dd>
                                <a href="hair?type=wanzhi" style="font-size: 15px;">丸子头</a>
                            </dd>
                            <dd>
                                <a href="hair?type=wenli" style="font-size: 15px;">纹理</a>
                            </dd>

                        </dl>
                    </div>
                </div>
            </div>
        </div>

        <div class="sub-nav" _h_nav="plan" id="plan" style="display: none;">
            <div class="container">

                <dl style="margin-left:230px;">
                    <dd>
                        <a href="#" style="font-size: 15px;">烫发</a>
                    </dd>
                </dl>
                <dl>
                    <dd>
                        <a href="#" style="font-size: 15px;">油性发质护理</a>
                    </dd>
                </dl>
                <dl>
                    <dd>
                        <a href="#" style="font-size: 15px;">修复分叉</a>
                    </dd>
                </dl>
                <dl>
                    <dd>
                        <a href="#" style="font-size: 15px;">加固发根</a>
                    </dd>
                </dl>
                <dl>
                    <dd>
                        <a href="#" style="font-size: 15px;">科学造发</a>
                    </dd>
                </dl>

            </div>
        </div>

        <div class="sub-nav" _h_nav="support" id="support" style="display: none;">
            <!-- 店内服务 -->
            <div class="container">
                <dl style="margin-left: 300px;">
                    <dt style="font-size:15px;">脚部服务</dt>
                    <dd>
                        <a href="#" style="font-size: 15px;">剪脚指甲</a>
                    </dd>
                    <dd>
                        <a href="#" style="font-size: 15px;">脚部按摩</a>
                    </dd>
                </dl>
                <dl style="width:15%;">
                    <dt style="font-size:15px;text-align:center;">头部服务</dt>
                    <div style="font-size:15px;text-align:center;">
                        <dd>
                            <a href="#" style="font-size: 15px;">掏耳屎</a>
                        </dd>
                        <dd>
                            <a href="#" style="font-size: 15px;">头部按摩</a>
                        </dd>
                        <dd>
                            <a href="#" style="font-size: 15px;">发型设计</a>
                        </dd>
                        <dd>
                            <a href="#" style="font-size: 15px;">头部护理</a>
                        </dd>
                    </div>
                </dl>
                <dl>
                    <dt style="font-size:15px;">身体服务</dt>
                    <dd>
                        <a href="#" style="font-size: 15px;">按摩推拿</a>
                    </dd>
                </dl>
            </div>
        </div>

        <div class="sub-nav" _h_nav="cooperation" id="cooperation" style="display: none;">
            <div class="container">

                <dl style="margin-left: 440px;">

                    <dd>
                        <a href="#" style="font-size: 15px;">渠道代理</a> <span class="hot">new</span></dd>
                </dl>
                <dl>
                    <dd>
                        <a href="#" style="font-size: 15px;">推广联盟</a>
                    </dd>
                </dl>
                <dl>
                    <dd>
                        <a href="#" style="font-size: 15px;">合作伙伴</a>
                    </dd>
                </dl>
            </div>
        </div>

        <div class="sub-nav" _h_nav="culture" id="culture" style="display: none;">
            <div class="container">
                <dl style="margin-left: 390px;">
                    <dd>
                        <a href="#" style="font-size: 15px;">公司介绍</a>
                    </dd>
                </dl>
                <dl>
                    <dd>
                        <a href="#" style="font-size: 15px;">发展历程</a>
                    </dd>
                </dl>
                <dl>
                    <dd>
                        <a href="#" style="font-size: 15px;">招贤纳士</a>
                    </dd>
                </dl>
                <dl>
                    <dd>
                        <a href="#" style="font-size: 15px;">联系我们</a>
                    </dd>
                </dl>
            </div>
        </div>
    </div>
</div>

</html>