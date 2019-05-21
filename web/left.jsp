<%@ page import="barber.bean.UserBean" %>
<%@ page contentType="text/html; charset=gb2312" errorPage="" %>
<html>
<head>
    <title>left</title>
</head>
<body>
<div class="left">
    <div class="profile-card js-profile-card">
        <div class="profile-card__img">
            <img src="https://res.cloudinary.com/muhammederdem/image/upload/v1537638518/Ba%C5%9Fl%C4%B1ks%C4%B1z-1.jpg"
                 alt="profile card">
        </div>
        <%
            UserBean user = (UserBean) session.getAttribute("user");
//            UserBean user = (UserBean) request.getAttribute("user");
//            session.setAttribute("user", user);
////            request.setAttribute("user",user);
        %>
        <div class="profile-card__cnt js-profile-cnt">
            <div class="profile-card__name"><%=user.getUname()%>
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
                    <div class="profile-card-inf__title"><a href="">退出登录</a></div>
                    <div class="profile-card-inf__txt">Following</div>
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
</body>
</html>