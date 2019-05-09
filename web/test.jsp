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
    <style type="text/css">
        @import url(css/templatemo_style.css);
        @import url(css/orman.css);
        @import url(css/nivo-slider.css);
        @import url(css/slimbox2.css);
        @import url(css/hair.css);
        @import url(css/ddsmoothmenu.css);
        @import url(js/slimbox2.js);
        @import url(js/jquery.min.js);
        @import url(js/ddsmoothmenu.js);
    </style>
    <script src="js/jquery-1.8.3.min.js"></script>
    <style type="text/css">
        *{margin:0;padding:0;}
        ol, ul {list-style: none;}
        blockquote,q {quotes: none;}
        a{text-decoration:none;color:#2d2f30;-webkit-transition: all .3s linear;-moz-transition: all .3s linear;-o-transition: all .3s linear;-ms-transition: all .3s linear;transition: all .3s linear;}
        a:focus{ outline:none;}
        .content{margin:auto;width:1200px;}
        .sx_updown{width:100%;border-top:1px solid #f2f2f2;background:#fff;overflow:hidden;padding:32px 0 40px 0;z-index:9999;position:absolute;left:0;top:60px;text-align:left;}
        .updown_box{float:left;min-height:198px;width:388px;border-left:1px solid #f2f2f2;padding:0 50px;-webkit-box-sizing: content-box;-moz-box-sizing: content-box; box-sizing: content-box;}
        .updown_box h3{font-size:16px;margin-bottom:18px;padding-left:10px;}
        .updown_box ul li{float:left;margin:0 10px 10px 10px;}
        .updown_box ul li a{display:block;font-size:14px;padding:6px 8px;line-height:18px;}
        .updown_box ul li.selected a{background:#7ecbc8;color:#fff;}
        .w290{width:600px;}
        .sousuo{padding:10px 0 36px 0;width:100%;}
        .select-result{width:900px;float:left;}
        .select-result ul li a{height:30px;padding:0 24px 0 10px;line-height:30px;display:block;position:relative;float:left;margin:0 10px 10px 0;color:#fff;font-size:14px;background:url(images/close1.png) 90% center no-repeat #7ecbc8;}
    </style>
</head>
<body>

<div class="sx_updown clearfix">
    <div class="content">
        <div class="updown_box w290">
            <h3>按品牌</h3>
            <ul id="select1">
                <li><a href="login&javascript:;" id="nihao">美国ULTHERA</a></li>
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
<div class="sousuo clearfix">
    <div class="select-result clearfix">
        <ul>
        </ul>
    </div>
</div>
<script type="text/javascript">
    $("#select1 li").click(function () {
        $(this).addClass("selected").siblings().removeClass("selected");
        var copyThisA = $(this).clone();

console.log(copyThisA);
        if ($("#selectA").length > 0) {
            $("#selectA a").html($(this).text());
        } else {
            $(".select-result ul").append(copyThisA.attr("id", "selectA"));
        }
    });
    $("#select2 li").click(function() {
        var type = $(this).attr("date-type");
        var copyThisB = $(this).clone();
        if ($(this).hasClass("selected")) {
            $(".select-result li[date-type='" + type + "']").fadeToggle();
        } else {
            $(".select-result ul").append(copyThisB);
        };
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
    $(".select-result ul").delegate("li","click", function(){
        var type = $(this).attr("date-type");
        $(this).fadeOut();
        $("#select2 li[date-type='" + type + "']").removeClass("selected");
    });
    $("#selectC").live("click", function () {
        $(this).remove();
        $("#select3 li").removeClass("selected");
    });
</script>
</body>

</html>

