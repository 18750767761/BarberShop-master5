<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
    <style type="text/css">
        @import url(css/LogInStyle.css);
        @import url(css/LogInStyle.css);
        @import url(js/index.js);
    </style>
</head>
<body>
<div class="cotn_principal">
    <div class="cont_centrar">
        <div class="cont_login">

            <div class="cont_info_log_sign_up">
                <div class="col_md_login">
                    <div class="cont_ba_opcitiy">
                        <h2>用户</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur.</p>
                        <button class="btn_login" onClick="cambiar_login()">我是用户</button>
                    </div>
                </div>
                <div class="col_md_sign_up">
                    <div class="cont_ba_opcitiy">
                        <h2>发型师</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur.</p>
                        <button class="btn_sign_up" onClick="cambiar_sign_up()">我是发型师</button>
                    </div>
                </div>
            </div>

            <div class="cont_back_info">
                <%--背景图--%>
                <div class="cont_img_back_grey"><img src="images/po.jpg" alt=""/></div>
            </div>
            <div class="cont_forms">
                <div class="cont_img_back_"><img src="images/po.jpg" alt=""/></div>
                <form class="cont_form_login" method="post" >
                    <h2>登录</h2>
                    <input id="Uid" name="Uid" type="text" placeholder="请输入您的用户名"/>
                    <input name="Upassword" id="Upassword" type="password" placeholder="请输入您的密码"/>
                    <button class="btn_login" formaction="login?sign=0" onClick="cambiar_login()">登录</button>
                    <button class="btn_login" formaction="login?sign=1" onClick="cambiar_login()">注册</button>
                </form>
                <%--？--%>
                <form class="cont_form_sign_up">
                    <h2>注册</h2>
                    <input type="text" placeholder="Email"/>
                    <input type="text" placeholder="User"/>
                    <input type="password" placeholder="Password"/>
                    <input type="password" placeholder="Confirm Password"/>
                    <button class="btn_sign_up" onClick="cambiar_sign_up()">SIGN UP</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="js/index.js"></script>

</body>
</html>