<%--
  Created by IntelliJ IDEA.
  User: 11616
  Date: 2019/5/8
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en-US">


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>网上理发店预约</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <style type="text/css">
        @import url(css/templatemo_style.css);
        @import url(css/orman.css);
        @import url(css/nivo-slider.css);
        @import url(css/slimbox2.css);
        @import url(css/ddsmoothmenu.css);
        @import url(js/jquery-1.8.3.min.js);
    </style>
    <style type="text/css">
        @import url(css/chose1.css);
    </style>
    <script type="text/javascript">
        $("#select1 li").click(function () {
            $(this).addClass("selected").siblings().removeClass("selected");
            var copyThisA = $(this).clone();
            if ($("#selectA").length > 0) {
                $("#selectA a").html($(this).text());
            } else {
                $(".select-result ul").append(copyThisA.attr("id", "selectA"));
            }
        });
        $("#select2 li").click(function () {
            var type = $(this).attr("date-type");
            var copyThisB = $(this).clone();
            if ($(this).hasClass("selected")) {
                $(".select-result li[date-type='" + type + "']").fadeToggle();
            } else {
                $(".select-result ul").append(copyThisB);
            }
            ;
            $(this).toggleClass("selected");

        });
        $("#select3 li").click(function () {
            $(this).addClass("selected").siblings().removeClass("selected");
            var copyThisC = $(this).clone();
            if ($("#selectC").length > 0) {
                $("#selectC a").html($(this).text());
            } else {
                $(".select-result ul").append(copyThisC.attr("id", "selectC"));
            }
        });
        $("#selectA").live("click", function () {
            $(this).remove();
            $("#select1 li").removeClass("selected");
        });
        $(".select-result ul").delegate("li", "click", function () {
            var type = $(this).attr("date-type");
            $(this).fadeOut();
            $("#select2 li[date-type='" + type + "']").removeClass("selected");
        });
        $("#selectC").live("click", function () {
            $(this).remove();
            $("#select3 li").removeClass("selected");
        });
    </script>
</head>

<body>
<div class="sx_updown clearfix">
    <div class="content">
        <div class="updown_box w290">
            <h3>按品牌</h3>
            <ul id="select1">
                <li><a href="javascript:;">美国ULTHERA</a></li>
                <li><a href="javascript:;">美国SOLTA</a></li>
                <li><a href="javascript:;">以色列飞顿</a></li>
                <li><a href="javascript:;">赛诺秀康奥</a></li>
                <li><a href="javascript:;">美国赛诺秀</a></li>
                <li><a href="javascript:;">美国赛诺龙</a></li>
                <li><a href="javascript:;">美国科医人</a></li>
                <li><a href="javascript:;">美国Candela</a></li>
                <li><a href="javascript:;">德国欧洲之星</a></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>

