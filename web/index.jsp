<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<form method="post" action="login">

    <input type="text" id="Uid" name="Uid" value="" placeholder="请输入您的用户名" onblur="this.placeholder='请输入您的用户名'"/>
    <input type="password" name="Upassword" id="Upassword" value="" placeholder="请输入您的密码"
           onblur="this.placeholder='请输入您的密码'"/>
    <input type="submit" value="登录">

</form>

</body>
</html>