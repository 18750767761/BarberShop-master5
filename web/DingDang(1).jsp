<%@ page import="barber.bean.OrderBean" %>
<%@ page import="java.util.List" %>
<%@ page import="barber.form.OrderForm" %>
<%@ page import="barber.bean.UserBean" %>
<%@ page import="barber.form.HairForm" %>
<%@ page import="barber.bean.HairStyleBean" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>XX科技</title>

    <link rel="stylesheet" type="text/css" href="statics/css/font-awesome.min.css"/><!--图标库-->
    <link href="css/GongGao.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="statics/css/style.css"/>
    <link href="statics/css/firstStyle.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="statics/css/ProfileCardStyle.css">
    <link type="text/css" rel="stylesheet" href="css/DingDangStyle.css">
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
                        <li>我的订单</li>
                        <li>
                            <a href="#">会员中心</a>
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
                                <a>发型大全</a>
                            </li>
                            <li class="item" _h_nav="plan">
                                <a>护理方案</a>
                            </li>
                            <li class="item" _h_nav="support">
                                <a>店内服务</a>
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
<script src="statics/js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
<script src="statics/js/main.js" type="text/javascript" charset="utf-8"></script>
<div class="con">
    <div class="left">
        <div class="profile-card js-profile-card">
            <div class="profile-card__img">
                <img src="https://res.cloudinary.com/muhammederdem/image/upload/v1537638518/Ba%C5%9Fl%C4%B1ks%C4%B1z-1.jpg"
                     alt="profile card">
            </div>

            <div class="profile-card__cnt js-profile-cnt">
                <div class="profile-card__name">Name</div>
                <div class="profile-card__txt">ID:<strong>Mesopotamia</strong></div>


                <div class="profile-card-inf">
                    <div class="profile-card-inf__item">
                        <div class="profile-card-inf__title">1598</div>
                        <div class="profile-card-inf__txt">money</div>
                    </div>

                    <div class="profile-card-inf__item">
                        <div class="profile-card-inf__title">65</div>
                        <div class="profile-card-inf__txt">credit</div>
                    </div>

                </div>

                <div class="profile-card-social">
                    <a href="#" class="profile-card-social__item instagram">
										<span class="icon-font">
											<svg class="icon"><use xlink:href="#icon-instagram"></use></svg>
										</span>
                    </a>

                    <a href="#" class="profile-card-social__item behance">
										<span class="icon-font">
											<svg class="icon"><use xlink:href="#icon-behance"></use></svg>
										</span>
                    </a>

                    <a href="#" class="profile-card-social__item codepen">
										<span class="icon-font">
											<svg class="icon"><use xlink:href="#icon-codepen"></use></svg>
										</span>
                    </a>

                    <a href="#" class="profile-card-social__item link">
										<span class="icon-font">
											<svg class="icon"><use xlink:href="#icon-link"></use></svg>
										</span>
                    </a>

                </div>


            </div>


        </div>
        <div class="news-content">
            <div class="news-content-item">
                <a href="javascript:;" class="news-content-title clearfix">
                    <div class="news-title-fl">
                        <div class="news-title-color"></div>
                        <div class="news-title-title">官方公告</div>
                    </div>
                    <div class="news-title-fr news-title-img01"></div>
                </a>
                <ul class="news-content-lists clearfix">
                    <li class="clearfix">
                        <a href="#">
                            <i>【08-09】</i>
                            <span>关于Man The server反射放大攻击的安全预警通知</span>
                        </a>
                    </li>
                    <li class="clearfix">
                        <a href="#">
                            <i>【03-16】</i>
                            <span>关于青岛1区、东北2区带宽价格下调的通知</span>
                        </a>
                    </li>
                    <li class="clearfix">
                        <a href="#">
                            <i>【02-095</i>
                            <span>官网提示春节假期公告信息</span>
                        </a>
                    </li>
                    <li class="clearfix">
                        <a href="#">
                            <i>【01-02】</i>
                            <span>云计算市场爆发，云市场应用开启高效云管理模式</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="right">
        <div class="test">
            <table style="width:100%;height:100%;" cellspacing="15px">
                <%
                    UserBean user = (UserBean) session.getAttribute("user");
                    List<OrderBean> order = OrderForm.quaryOrder(user.getUid());
                    for (int i = 0; i < order.size(); i++) {
                %>
                <tr>
                    <td>
                        <div id="container">
                            <div class="product-details">
                                <h3>订单编号:<%=order.get(i).getOid()%></h3>
                                <li>用户ID:<%=order.get(i).getUid()%></li>
                                <li>姓名:<%=user.getUname()%></li>
                                <li>电话:<%=user.getUtel()%></li>
                                <li>理发师ID:<%=order.get(i).getBid()%></li>
                            </div>
                            <div class="product-image">
                                <% HairStyleBean hair = HairForm.quaryHair(order.get(i).getHid());%>
                                <img src="<%=hair.getHpic()%>" alt="Omar Dsoky">
                                <div class="info">
                                    <h2>发型详情</h2>
                                    <ul>
                                        <li><strong>发型ID：</strong><%=hair.getHid()%>></li>
                                        <li><strong>发型名称：</strong><%=hair.getHname()%>></li>
                                        <li><strong>发型价格：</strong><%=hair.getHprice()%>></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
                <%}%>

            </table>
        </div>
    </div>
</div>
<div style="height: 1500px;">
    <!--填充高度，可删除-->
</div>
</body>
</html>