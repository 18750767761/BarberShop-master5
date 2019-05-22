<%@ page import="barber.dao.BarberDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="barber.bean.BarberBean" %>
<%@ page import="java.util.List" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="statics/css/style.css"/>
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
</head>
<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">
<!-- TESTIMONIAL -->
<section id="testimonial">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="owl-carousel owl-theme owl-client">
                    <%

                        int n = 0;
                        List<BarberBean> barberlist = BarberDao.quaryBarber();
                        if (barberlist.size() > 10) {
                            n = 10;
                        } else n = barberlist.size();
                        for (int i = 0; i < n; i++) {
                    %>
                    <div class="col-md-4 col-sm-4">
                        <div class="item">
                            <div class="tst-image">
                                <img src="<%=barberlist.get(i).getBpic()%>" class="img-responsive" alt="">
                            </div>
                            <div class="tst-author">
                                <h4><%=barberlist.get(i).getBname()%>
                                </h4>
                                <span><%=barberlist.get(i).getBcondition()%></span>
                            </div>
                            <p><%=barberlist.get(i).getBcommons()%>
                            </p>
                            <div class="tst-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <tr>
                                <%
                                    if (request.getParameter("Hid") != null) {
                                        Long hid = Long.valueOf(request.getParameter("Hid"));
                                %>
                                <div class="controlRight">
                                    <a type="submit" class="btn"
                                       href="orderShow.jsp?Bid=<%=barberlist.get(i).getBid()%>&Hid=<%=hid%>">
                                        预定
                                    </a>
                                </div>
                                <%}%>
                            </tr>
                        </div>
                    </div>
                    <%}%>

                </div>
            </div>
        </div>
    </div>
</section>
<!-- SCRIPTS -->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/smoothscroll.js"></script>
<script src="js/custom.js"></script>

</body>
</html>