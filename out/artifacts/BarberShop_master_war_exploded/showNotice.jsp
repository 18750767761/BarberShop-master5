<%@ page contentType="text/html;charset=gb2312" %>
<html>
<head>
    <title>����</title>
</head>

<body>
<div align="center">
    <h1>�鿴��������</h1>

    <table border="1" cellpadding="0" cellspacing="0">
        <tr>
            <td>����ID��</td>
            <td width="200"><%="NOTICE_ID" %>
            </td>
        </tr>
        <tr>
            <td>������⣺</td>
            <td><%="NOTICE_TITLE" %>
            </td>
        </tr>
        <tr>
            <td>����ʱ�䣺</td>
            <td><%="NOTICE_DATE" %>
            </td>
        </tr>
        <tr>
            <td>�������ݣ�</td>
            <td width="600" height="300"><%="NOTICE_TEXT" %>
            </td>
        </tr>
        <tr>
            <td><a href="noticelist.jsp">����</a></td>
            <td><a href="updateNotice.jsp?modifyNotice=1&noticeID=<%="noticeID" %>"
                   onClick="return confirm('ȷ��Ҫɾ������������?');">�޸�</a> <a
                    href="delnotice.jsp?noticeID=<%="noticeID" %>">ɾ��</a></td>
        </tr>
    </table>

    <br>
</div>
</body>
</html>
