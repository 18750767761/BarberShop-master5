<%--
  Created by IntelliJ IDEA.
  User: 11616
  Date: 2019/5/4
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>路桥理发店欢迎您！</title>
    <meta name="keywords"
          content="Triple Forms Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"/>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <style type="text/css">
        @import url(css/style.css);
        @import url(css/font-awesome.min.css);
    </style>
    <%--<link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>--%>
    <%--<link href="css/font-awesome.min.css" rel="stylesheet">--%>
    <link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext"
          rel="stylesheet">

</head>

<body>
<div class="main-bg">
    <!-- 头部 -->
    <h1>这里是宣传语</h1>
    <!-- 身体 -->
    <div class="sub-main-w3">
        <div class="image-style">
        </div>
        <!-- 表单 -->
        <div class="vertical-tab">
            <div id="section1" class="section-w3ls">
                <input type="radio" name="sections" id="option1" checked>
                <label for="option1" class="icon-left-w3pvt"><span class="fa fa-user-circle" aria-hidden="true"></span>登陆</label>
                <article>
                    <form action="login" method="post">
                        <h3 class="legend">欢迎登陆</h3>
                        <!--邮箱，密码-->
                        <div class="input">
                            <span class="fa fa-envelope-o" aria-hidden="true"></span>
                            <input type="number" placeholder="账号" name="Uid" required/>
                        </div>
                        <div class="input">
                            <span class="fa fa-key" aria-hidden="true"></span>
                            <input type="password" placeholder="密码" name="Upassword" required/>
                        </div>
                        <br/><br/>
                        <button type="submit" class="btn submit">登陆</button>

                    </form>
                </article>
            </div>
            <div id="section2" class="section-w3ls">
                <input type="radio" name="sections" id="option2">
                <label for="option2" class="icon-left-w3pvt"><span class="fa fa-pencil-square"
                                                                   aria-hidden="true"></span>注册</label>
                <article>
                    <form action="#" method="post">
                        <h3 class="legend">欢迎注册</h3>
                        <div class="input">
                            <span class="fa fa-user-o" aria-hidden="true"></span>
                            <input type="text" placeholder="用户名" name="name" required/>
                        </div>
                        <div class="input">
                            <span class="fa fa-key" aria-hidden="true"></span>
                            <input type="password" placeholder="密码" name="password" required/>
                        </div>
                        <div class="input">
                            <span class="fa fa-key" aria-hidden="true"></span>
                            <input type="password" placeholder="重复密码" name="password" required/>
                        </div>
                        <button type="submit" class="btn submit">注册</button>
                    </form>
                </article>
            </div>
            <div id="section3" class="section-w3ls">
                <input type="radio" name="sections" id="option3">
                <label for="option3" class="icon-left-w3pvt"><span class="fa fa-lock" aria-hidden="true"></span>忘记密码?</label>
                <article>
                    <form action="main.jsp" method="post">
                        <h3 class="legend last">重置密码</h3>
                        <p class="para-style">输入您预留的邮箱，我们将发送一封邮件给您，您可以通过这个邮件找回密码</p>
                        <p class="para-style-2"><strong>客服服务?</strong> <a href="#">请点击此处</a></p>
                        <div class="input">
                            <span class="fa fa-envelope-o" aria-hidden="true"></span>
                            <input type="email" placeholder="邮箱" name="email" required/>
                        </div>
                        <button type="submit" class="btn submit last-btn">提交</button>
                    </form>
                </article>
            </div>
        </div>

        <div class="clear"></div>
    </div>

</div>

</body>
</html>
