<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
    <title>left</title>
</head>
<body>
<table width="252" height="787" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="3"><img src="images/left_01.gif" width="252" height="33"></td>
    </tr>

    <tr>
        <td rowspan="3"><img src="images/left_02.gif" width="35" height="754"></td>
        <td width="180" height="282" background="images/pic/face_null.jpg"></td>
        <td rowspan="3"><img src="images/left_04.gif" width="37" height="754"></td>
    </tr>
    <tr>
        <td width="180" height="471" background="images/left_06.gif">
            <table width="180" height="271">
                <tr>
                    <td height="32">
                        <div align="center">— 您还没有<a href="login.jsp" target="right">登陆</a> —</div>
                    </td>
                </tr>
                <tr>
                    <td height="32">
                        <div align="center"><a href="showvip.jsp?loginUser=<%="vipUser"%>" target="right">查看个人信息</a>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td height="32">
                        <div align="center"><a href="updateVip.jsp?modifyVip=1" target="right">修改个人信息</a></div>
                    </td>
                </tr>
                <tr>
                    <td height="32">
                        <div align="center"><a href="unlogin.jsp" target="_parent"
                                               onclick="return confirm('确定要退出登陆吗?');">退出登陆</a></div>
                    </td>
                </tr>


            </table>
        </td>
    </tr>

</table>
</body>
</html>