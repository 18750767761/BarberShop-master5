<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.List" %>
<%@ page import="barber.bean.HairStyleBean" %>
<%@ page import="barber.dao.HairDao" %>

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
<jsp:include page="header.jsp"/>
<script src="statics/js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
<script src="statics/js/main.js" type="text/javascript" charset="utf-8"></script>
<div class="con">
    <jsp:include page="left.jsp"/>
    <div class="right">
        <div class="test">
            <table width="97%" align="center" cellspacing="20px">
                <tr>
                    <td>
                        <!-- 发型展示第一行 -->
                        <%
                            List<HairStyleBean> hairlist = null;
                            int n = 0;
                            if (request.getAttribute("hair") != null) {
                                hairlist = (List<HairStyleBean>) request.getAttribute("hair");
                            } else {
                                hairlist = HairDao.quaryLong();
                            }
                            if (hairlist.size() > 10) {
                                n = 10;
                            } else {
                                n = hairlist.size();
                            }
                            for (int i = 0; i < n; i++) {
                        %>
                        <table width="100%" height="150px" cellspacing="40px">
                            <tr align="center">
                                <td class="css" colspan="2" rowspan="2" href="www.baidu.com">
                                    <a href="barberlist.jsp?Hid=<%=hairlist.get(i).getHid()%>">
                                        <div class="imgcard">
                                            <img class="large" src="<%=hairlist.get(i).getHpic()%>"/>
                                            <div class="ZhanShiTuPian">
                                                <p class="profile-card__txt">
                                                    <%=hairlist.get(i).getHname()%><br/>
                                                    价格:<%=hairlist.get(i).getHprice()%>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </td>
                                <%
                                    i++;
                                    if (i == n - 1) {
                                        break;
                                    }
                                %>
                                <td class="css" colspan="2" rowspan="2" href="www.baidu.com">
                                    <a href="barberlist.jsp?Hid=<%=hairlist.get(i).getHid()%>">
                                        <div class="imgcard">
                                            <img class="large" src="<%=hairlist.get(i).getHpic()%>"/>
                                            <div class="ZhanShiTuPian">
                                                <p class="profile-card__txt">
                                                    <%=hairlist.get(i).getHname()%><br/>
                                                    价格:<%=hairlist.get(i).getHprice()%>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </td>
                                <%
                                    i++;
                                    if (i == n - 1) {
                                        break;
                                    }
                                %>
                                <td class="css" colspan="2" rowspan="2" href="www.baidu.com">
                                    <a href="barberlist.jsp?Hid=<%=hairlist.get(i).getHid()%>">
                                        <div class="imgcard">
                                            <img class="large" src="<%=hairlist.get(i).getHpic()%>"/>
                                            <div class="ZhanShiTuPian">
                                                <p class="profile-card__txt">
                                                    <%=hairlist.get(i).getHname()%><br/>
                                                    价格:<%=hairlist.get(i).getHprice()%>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </td>
                            </tr>
                        </table>
                        <%}%>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>

</body>
</html>