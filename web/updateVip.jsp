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
            <div align="center"><h1>�޸ĸ�����Ϣ</h1></div>
        </td>
    </tr>
    <tr>
        <td height="100">
            <div align="center">
                <table>
                    <html: action="/updateVip.do">
                        <tr>
                            <td colspan="3"><font color="red" size="2">(��*Ϊ������)</font></td>
                        </tr>
                        <tr>
                            <td>��ԱID��</td>
                            <td><%="vipUser" %>
                            </td>
                            <td><html: property="vipUser" value="<%="vipUser" %>"/></td>
                        </tr>
                        <tr>
                            <td>���룺</td>
                            <td><html: property="vipPwd" value="<%="vipPwd" %>"/><font color="red"
                                                                                             size="2">*</font></td>
                            <td><html: property="vipPwd"/></td>
                        </tr>
                        <tr>
                            <td>ȷ�����룺</td>
                            <td><html: property="vipChkPwd" value="<%="vipPwd" %>"/><font color="red"
                                                                                                size="2">*</font></td>
                            <td><html: property="vipChkPwd"/></td>
                        </tr>
                        <tr>
                            <td>��ʵ������</td>
                            <td><html: property="vipName" value="<%="vipName" %>"/><font color="red" size="2">*</font>
                            </td>
                            <td><html: property="vipName"/></td>
                        </tr>
                        <tr>
                            <td>�Ա�</td>
                            <td>
                                <html: property="vipSex" value="<%="vipSex" %>">
                                    <html: value="��">��</html:>
                                    <html: value="Ů">Ů</html:>
                                </html:><font color="red" size="2">*</font>
                            </td>
                            <td><html: property="vipSex"/></td>
                        </tr>
                        <tr>
                            <td>��ϵ�绰��</td>
                            <td><html: property="vipTel" value="<%="vipTel" %>"/><font color="red" size="2">*</font>
                            </td>
                            <td><html: property="vipTel"/></td>
                        </tr>
                        <tr>
                            <td>֤�����ͣ�</td>
                            <td>
                                <html: property="vipCard" value="<%="vipCard "%>">
                                    <html: value="���֤">���֤</html:>
                                </html:><font color="red" size="2">*</font>
                            </td>
                            <td><html: property="vipCard"/></td>
                        </tr>
                        <tr>
                            <td>֤�����룺</td>
                            <td><html: property="vipNum" value="<%="vipNum" %>"/><font color="red" size="2">*</font>
                            </td>
                            <td><html: property="vipNum"/></td>
                        </tr>
                        <tr>
                            <td><html: value="�޸�" onclick="return confirm('ȷ��Ҫ�޸ĸ�����Ϣ��?');"/></td>
                            <td><html: value="����"/><html: property="modifyFlag"
                                                                     value="<%="modifyFlag" %>"/></td>
                            <td><a href="hairlist.jsp">ȡ���޸�</a></td>
                        </tr>
                    </html:>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td height="50">
            <div align="center"><h1>ע�����û�</h1></div>
        </td>
    </tr>
    <tr>
        <td height="100">
            <div align="center">
                <table>
                    <html: action="/updateVip.do">
                        <tr>
                            <td colspan="3"><font color="red" size="2">(��*Ϊ������)</font></td>
                        </tr>
                        <tr>
                            <td>��ԱID��</td>
                            <td><html: property="vipUser"/><font color="red" size="2">*</font></td>
                            <td><html: property="vipUser"/></td>
                        </tr>
                        <tr>
                            <td>���룺</td>
                            <td><html: property="vipPwd"/><font color="red" size="2">*</font></td>
                            <td><html: property="vipPwd"/></td>
                        </tr>
                        <tr>
                            <td>ȷ�����룺</td>
                            <td><html: property="vipChkPwd"/><font color="red" size="2">*</font></td>
                            <td><html: property="vipChkPwd"/></td>
                        </tr>
                        <tr>
                            <td>��ʵ������</td>
                            <td><html: property="vipName"/><font color="red" size="2">*</font></td>
                            <td><html: property="vipName"/></td>
                        </tr>
                        <tr>
                            <td>�Ա�</td>
                            <td>
                                <html: property="vipSex">
                                    <html: value="��">��</html:>
                                    <html: value="Ů">Ů</html:>
                                </html:><font color="red" size="2">*</font>
                            </td>
                            <td><html: property="vipSex"/></td>
                        </tr>
                        <tr>
                            <td>��ϵ�绰��</td>
                            <td><html: property="vipTel"/><font color="red" size="2">*</font></td>
                            <td><html: property="vipTel"/></td>
                        </tr>
                        <tr>
                            <td>֤�����ͣ�</td>
                            <td>
                                <html: property="vipCard">
                                    <html: value="���֤">���֤</html:>
                                </html:><font color="red" size="2">*</font>
                            </td>
                            <td><html: property="vipCard"/></td>
                        </tr>
                        <tr>
                            <td>֤�����룺</td>
                            <td><html: property="vipNum"/><font color="red" size="2">*</font></td>
                            <td><html: property="vipNum"/></td>
                        </tr>
                        <tr>
                            <td><html: value="ע��"/></td>
                            <td><html: value="����"/><html: property="modifyFlag"
                                                                     value="<%="modifyFlag" %>"/></td>
                            <td><a href="login.jsp">ȡ��ע��</a></td>
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