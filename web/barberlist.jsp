<%@ page contentType="text/html; charset=utf-8" import="java.lang.*, java.io.*, java.sql.*, java.util.*" %>
<html>
<head>
    <title>barberlist</title>
    <meta charset="UTF-8">
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
            <jsp:include page="barberright.jsp"/>
        </div>
    </div>
</div>
<div style="height: 1500px;">
    <!--填充高度，可删除-->
</div>
</body>

</html>

