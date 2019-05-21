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
                            <a href="#" style="color:#FFdd00 !important"><i class="fa fa-gift hot-yhcx"
                                                                            style="color:#FFdd00 !important"></i>我的订单</a>
                        </li>
                        <li>
                            <a href="a.jsp">会员中心</a>
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
                            <dt style="font-size:15px;">直发类发型</dt>
                            <dd>
                                <a href="#" style="font-size: 15px;">无刘海半扎丸子头</a></dd>
                            <dd>
                                <a href="#" style="font-size: 15px;">中分刘海设计</a>
                            </dd>
                            <dd>
                                <a href="#" style="font-size: 15px;">偏分斜刘海</a>
                            </dd>
                            <dd>
                                <a href="#" style="font-size: 15px;">空气感刘海</a>
                            </dd>
                            <dd>
                                <a href="#" style="font-size: 15px;">韩式直发长发</a>
                            </dd>
                            <dd>
                                <a href="#" style="font-size: 15px;">韩式空气感刘海</a>
                            </dd>
                        </dl>
                        <dl style="width:10%;">
                            <dt style="font-size:15px;">卷发类发型</dt>
                            <div class="font-size:15px;text-align:center;">
                                <dd>
                                    <a href="#" style="font-size: 15px;">波浪卷</a>
                                </dd>
                                <dd>
                                    <a href="#" style="font-size: 15px;">梨花头卷</a>
                                </dd>
                                <dd>
                                    <a href="#" style="font-size: 15px;">羊毛卷</a>
                                </dd>
                                <dd>
                                    <a href="#" style="font-size: 15px;">水波纹卷</a>
                                </dd>
                                <dd>
                                    <a href="#" style="font-size: 15px;">小细卷</a>
                                </dd>
                                <dd>
                                    <a href="#" style="font-size: 15px;">空气烫卷</a>
                                </dd>
                            </div>
                            <div class="clearfix"></div>

                        </dl>
                        <dl style="width:10%;">
                            <dt style="font-size:15px;">女士发型</dt>
                            <dd>
                                <a href="#" style="font-size: 15px;">bobo头</a></dd>
                            <dd>
                                <a href="#" style="font-size: 15px;">梨花头</a>
                            </dd>
                            <dd>
                                <a href="#" style="font-size: 15px;">wob头</a>
                            </dd>
                            <dd>
                                <a href="#" style="font-size: 15px;">lob头</a>
                            </dd>
                        </dl>
                        <dl style="width:10%;">
                            <dt style="font-size:15px;">男士发型</dt>
                            <dd>
                                <a href="#" style="font-size: 15px;" style="font-size: 15px;">板寸发型</a></dd>
                            <dd>
                                <a href="#" style="font-size: 15px;">毛寸发型</a>
                            </dd>
                            <dd>
                                <a href="#" style="font-size: 15px;">背头发型</a>
                            </dd>
                            <dd>
                                <a href="#" style="font-size: 15px;">分头发型</a>
                            </dd>
                            <dd>
                                <a href="#" style="font-size: 15px;">朋克发型</a>
                            </dd>
                            <dd>
                                <a href="#" style="font-size: 15px;">皮卡路发型</a>
                            </dd>
                        </dl>
                        <dl style="width:10%;">
                            <dt style="font-size:15px;">短发类发型</dt>
                            <dd>
                                <a href="#" style="font-size: 15px;">发卷外翘</a>
                            </dd>
                            <dd>
                                <a href="#" style="font-size: 15px;"> 眉上刘海</a>
                            </dd>
                            <dd>
                                <a href="#" style="font-size: 15px;">微波刘海</a>
                            </dd>
                            <dd>
                                <a href="#" style="font-size: 15px;">轻薄齐刘海</a>
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