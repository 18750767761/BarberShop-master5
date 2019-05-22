<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="barber.bean.BarberBean" %>
<%--
  Created by IntelliJ IDEA.
  User: 11616
  Date: 2019/5/22
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="left">
    <div class="profile-card js-profile-card">
        <div class="profile-card__img">
            <img src="https://res.cloudinary.com/muhammederdem/image/upload/v1537638518/Ba%C5%9Fl%C4%B1ks%C4%B1z-1.jpg"
                 alt="profile card">
        </div>
        <%
            BarberBean barber = (BarberBean) session.getAttribute("barber");
            session.setAttribute("barber",barber);
        %>
        <div class="profile-card__cnt js-profile-cnt">
            <div class="profile-card__name"><%=barber.getBname()%>
            </div>
            <div class="profile-card__txt">
                真理惟一可靠的标准就是永远自相符合。<strong>鲁迅</strong></div>

            <!--信息-->
            <div class="profile-card-inf">
                <div class="profile-card-inf__item">
                    <div class="profile-card-inf__title"><a href="">查看个人信息</a></div>
                    <div class="profile-card-inf__txt">Followers</div>
                </div>

                <div class="profile-card-inf__item">
                    <div class="profile-card-inf__title"><a href="../outlogin.jsp">退出登录</a></div>
                    <div class="profile-card-inf__txt">Following</div>
                </div>
            </div>
            <div class="profile-card-social">
                <a href="#" class="profile-card-social__item instagram">
										<span class="icon-font">
											<svg class="icon"></svg>
										</span>
                </a>

                <a href="#" class="profile-card-social__item behance">
										<span class="icon-font">
											<svg class="icon"></svg>
										</span>
                </a>

                <a href="#" class="profile-card-social__item codepen">
										<span class="icon-font">
											<svg class="icon"></svg>
										</span>
                </a>

                <a href="#" class="profile-card-social__item link">
										<span class="icon-font">
											<svg class="icon"></svg>
										</span>
                </a>

            </div>
        </div>
    </div>
    <div class="news-content">
        <div class="news-content-item">
            <a href="" class="news-content-title clearfix">
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
</body>
</html>
