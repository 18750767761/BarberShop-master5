<%@ page import="barber.bean.HairStyleBean" %>
<%@ page import="barber.bean.BarberBean" %>
<%@ page import="barber.dao.HairDao" %>
<%@ page import="barber.dao.BarberDao" %>
<%@ page import="barber.bean.UserBean" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=utf-8" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>确认订单</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link type="text/css" rel="stylesheet" href="css/QueRenDingDang.css">
</head>
<%
    Long hid = Long.valueOf(request.getParameter("Hid"));
    Long bid = Long.valueOf(request.getParameter("Bid"));
    UserBean user = (UserBean) session.getAttribute("user");
    HairStyleBean hair = HairDao.quaryHair(hid);
    BarberBean barber = BarberDao.quaryBarber(bid);
%>
<body>
<div class="container">
    <div class="main">
        <div class="title">
            <h4>确认订单</h4>
            <p>News</p>
        </div>
        <div id="container">
            <div class="product-details">
                <h1><%=hair.getHcomment()%></h1>
                <span class="hint-star star">
					<i class="fa fa-star" aria-hidden="true"></i>
					<i class="fa fa-star" aria-hidden="true"></i>
					<i class="fa fa-star" aria-hidden="true"></i>
					<i class="fa fa-star-half-o" aria-hidden="true"></i>
					<i class="fa fa-star-o" aria-hidden="true"></i>
				</span>
                <li style="padding: 10px;">会员ID:<%=user.getUid() %>
                </li>
                <li style="padding: 10px;">姓名:<%=user.getUname()%>
                </li>
                <li style="padding: 10px;">联系电话:<%=user.getUtel()%>
                </li>
                <li style="padding: 10px;">预定发型师:<%=barber.getBname()%>
                </li>
                <%
                    SimpleDateFormat df = new SimpleDateFormat("MM月dd号 HH:mm");//设置日期格式
                    int num =BarberDao.selectNum(barber.getBid());

                %>
                <li style="padding: 10px;">预约时间:<%=df.format(new Date(new Date().getTime()+num*30*60*1000))%>-<%=df.format(new Date(new Date().getTime()+(num+1)*30*60*1000))%>
                </li>

                <div class="controlLeft">
                    <button class="btn"
                            href="order?uid=<%=user.getUid()%>&bid=<%=barber.getBid()%>&hid=<%=hair.getHid()%>"
                            onclick="return confirm('确认预订吗?');">
                        <span class="price">¥<%=hair.getHprice()%></span>
                        <span class="shopping-cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
                        <span class="buy" onclick="window.location.href = 'order?sign=0&uid=<%=user.getUid()%>&bid=<%=barber.getBid()%>&hid=<%=hair.getHid()%>'"
                              onclick="return confirm('确认预订吗?');">立即预约</span>
                    </button>
                </div>
                <div class="controlRight">
                        <button onclick="window.location.href = 'barberlist.jsp'" class="btn" >
                            <span>取消预约</span>
                        </button>
                </div>
            </div>
            <div class="product-image">
                <img src="<%=hair.getHpic()%>" alt="Omar Dsoky">
                <div class="info">
                    <h2>发型描述</h2>
                    <ul style="margin-left: 30px;">
                        <li><strong>发型ID：</strong><%=hair.getHid()%>
                        </li>
                        <li><strong>发型名称：</strong><%=hair.getHcomment()%>
                        </li>
                        <li><strong>发型价格：</strong><%=hair.getHprice()%>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>