<%@ page contentType="text/html; charset=gb2312" import="java.sql.*" %>
<html>
<head>
    <title>UpdateVip</title>
</head>
<body>
<table background="images/right.gif" height="791" width="709">
    <tr>
        <td height="50"></td>
    </tr>
    <tr>
        <td height="50">
            <div align="center"><h1>修改个人信息</h1></div>
        </td>
    </tr>
    <tr>
        <td height="100">
            <div align="center">
                <table>
                    <html: action="/updateVip.do">
                        <tr>
                            <td colspan="3"><font color="red" size="2">(带*为必填项)</font></td>
                        </tr>
                        <tr>
                            <td>会员ID：</td>
                            <td><%="vipUser" %>
                            </td>
                            <td><html: property="vipUser" value="<%="vipUser" %>"/></td>
                        </tr>
                        <tr>
                            <td>密码：</td>
                            <td><html: property="vipPwd" value="<%="vipPwd" %>"/><font color="red"
                                                                                             size="2">*</font></td>
                            <td><html: property="vipPwd"/></td>
                        </tr>
                        <tr>
                            <td>确认密码：</td>
                            <td><html: property="vipChkPwd" value="<%="vipPwd" %>"/><font color="red"
                                                                                                size="2">*</font></td>
                            <td><html: property="vipChkPwd"/></td>
                        </tr>
                        <tr>
                            <td>真实姓名：</td>
                            <td><html: property="vipName" value="<%="vipName" %>"/><font color="red" size="2">*</font>
                            </td>
                            <td><html: property="vipName"/></td>
                        </tr>
                        <tr>
                            <td>性别：</td>
                            <td>
                                <html: property="vipSex" value="<%="vipSex" %>">
                                    <html: value="男">男</html:>
                                    <html: value="女">女</html:>
                                </html:><font color="red" size="2">*</font>
                            </td>
                            <td><html: property="vipSex"/></td>
                        </tr>
                        <tr>
                            <td>联系电话：</td>
                            <td><html: property="vipTel" value="<%="vipTel" %>"/><font color="red" size="2">*</font>
                            </td>
                            <td><html: property="vipTel"/></td>
                        </tr>
                        <tr>
                            <td>证件类型：</td>
                            <td>
                                <html: property="vipCard" value="<%="vipCard "%>">
                                    <html: value="身份证">身份证</html:>
                                </html:><font color="red" size="2">*</font>
                            </td>
                            <td><html: property="vipCard"/></td>
                        </tr>
                        <tr>
                            <td>证件号码：</td>
                            <td><html: property="vipNum" value="<%="vipNum" %>"/><font color="red" size="2">*</font>
                            </td>
                            <td><html: property="vipNum"/></td>
                        </tr>
                        <tr>
                            <td><html: value="修改" onclick="return confirm('确定要修改个人信息吗?');"/></td>
                            <td><html: value="重置"/><html: property="modifyFlag"
                                                                     value="<%="modifyFlag" %>"/></td>
                            <td><a href="hairlist.jsp">取消修改</a></td>
                        </tr>
                    </html:>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td height="50">
            <div align="center"><h1>注册新用户</h1></div>
        </td>
    </tr>
    <tr>
        <td height="100">
            <div align="center">
                <table>
                    <html: action="/updateVip.do">
                        <tr>
                            <td colspan="3"><font color="red" size="2">(带*为必填项)</font></td>
                        </tr>
                        <tr>
                            <td>会员ID：</td>
                            <td><html: property="vipUser"/><font color="red" size="2">*</font></td>
                            <td><html: property="vipUser"/></td>
                        </tr>
                        <tr>
                            <td>密码：</td>
                            <td><html: property="vipPwd"/><font color="red" size="2">*</font></td>
                            <td><html: property="vipPwd"/></td>
                        </tr>
                        <tr>
                            <td>确认密码：</td>
                            <td><html: property="vipChkPwd"/><font color="red" size="2">*</font></td>
                            <td><html: property="vipChkPwd"/></td>
                        </tr>
                        <tr>
                            <td>真实姓名：</td>
                            <td><html: property="vipName"/><font color="red" size="2">*</font></td>
                            <td><html: property="vipName"/></td>
                        </tr>
                        <tr>
                            <td>性别：</td>
                            <td>
                                <html: property="vipSex">
                                    <html: value="男">男</html:>
                                    <html: value="女">女</html:>
                                </html:><font color="red" size="2">*</font>
                            </td>
                            <td><html: property="vipSex"/></td>
                        </tr>
                        <tr>
                            <td>联系电话：</td>
                            <td><html: property="vipTel"/><font color="red" size="2">*</font></td>
                            <td><html: property="vipTel"/></td>
                        </tr>
                        <tr>
                            <td>证件类型：</td>
                            <td>
                                <html: property="vipCard">
                                    <html: value="身份证">身份证</html:>
                                </html:><font color="red" size="2">*</font>
                            </td>
                            <td><html: property="vipCard"/></td>
                        </tr>
                        <tr>
                            <td>证件号码：</td>
                            <td><html: property="vipNum"/><font color="red" size="2">*</font></td>
                            <td><html: property="vipNum"/></td>
                        </tr>
                        <tr>
                            <td><html: value="注册"/></td>
                            <td><html: value="重置"/><html: property="modifyFlag"
                                                                     value="<%="modifyFlag" %>"/></td>
                            <td><a href="login.jsp">取消注册</a></td>
                        </tr>
                    </html:>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td></td>
    </tr>
</table>
</body>
</html>