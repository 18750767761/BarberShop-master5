<%@ page contentType="text/html;charset=gb2312" %>
<html>
<head>
    <title>�������</title>
</head>

<body>

<div align="center">
    <h1>�������</h1>
    <p><a href="updateNotice.jsp?modifyNotice=0">����¹���</a></p>

    <table border="1" cellpadding="0" cellspacing="0">
        <tr>
            <td width="100" height="30">
                <div align="center">����ID</div>
            </td>
            <td width="200">
                <div align="center">�������</div>
            </td>
            <td width="100">
                <div align="center">����ʱ��</div>
            </td>
            <td colspan="2">
                <div align="center">����</div>
            </td>
        </tr>

        <tr>
            <td>
                <div align="center"><%="noticeID"%>
                </div>
            </td>
            <td>
                <div align="center"><%="NOTICE_TITLE"%>
                </div>
            </td>
            <td>
                <div align="center"><%="NOTICE_DATE"%>
                </div>
            </td>
            <td width="60">
                <div align="center"><a href="showNotice.jsp?noticeID=<%="noticeID"%>">�鿴</a></div>
            </td>
            <td width="60">
                <div align="center"><a href="delnotice.jsp?noticeID=<%="noticeID"%>"
                                       onClick="return confirm('ȷ��Ҫɾ������������?');">ɾ��</a></div>
            </td>
        </tr>
        <tr>
            <td>
                <div align="center"><%="noticeID"%>
                </div>
            </td>
            <td>
                <div align="center"><%="NOTICE_TITLE"%>
                </div>
            </td>
            <td>
                <div align="center"><%="NOTICE_DATE"%>
                </div>
            </td>
            <td width="60">
                <div align="center"><a href="showNotice.jsp?noticeID=<%="noticeID"%>">�鿴</a></div>
            </td>
            <td width="60">
                <div align="center"><a href="delnotice.jsp?noticeID=<%="noticeID"%>"
                                       onClick="return confirm('ȷ��Ҫɾ������������?');">ɾ��</a></div>
            </td>
        </tr>
        <tr>
            <td>
                <div align="center"><%="noticeID"%>
                </div>
            </td>
            <td>
                <div align="center"><%="NOTICE_TITLE"%>
                </div>
            </td>
            <td>
                <div align="center"><%="NOTICE_DATE"%>
                </div>
            </td>
            <td width="60">
                <div align="center"><a href="showNotice.jsp?noticeID=<%="noticeID"%>">�鿴</a></div>
            </td>
            <td width="60">
                <div align="center"><a href="delnotice.jsp?noticeID=<%="noticeID"%>"
                                       onClick="return confirm('ȷ��Ҫɾ������������?');">ɾ��</a></div>
            </td>
        </tr>
        <tr>
            <td>
                <div align="center"><%="noticeID"%>
                </div>
            </td>
            <td>
                <div align="center"><%="NOTICE_TITLE"%>
                </div>
            </td>
            <td>
                <div align="center"><%="NOTICE_DATE"%>
                </div>
            </td>
            <td width="60">
                <div align="center"><a href="showNotice.jsp?noticeID=<%="noticeID"%>">�鿴</a></div>
            </td>
            <td width="60">
                <div align="center"><a href="delnotice.jsp?noticeID=<%="noticeID"%>"
                                       onClick="return confirm('ȷ��Ҫɾ������������?');">ɾ��</a></div>
            </td>
        </tr>
        <tr>
            <td>
                <div align="center"><%="noticeID"%>
                </div>
            </td>
            <td>
                <div align="center"><%="NOTICE_TITLE"%>
                </div>
            </td>
            <td>
                <div align="center"><%="NOTICE_DATE"%>
                </div>
            </td>
            <td width="60">
                <div align="center"><a href="showNotice.jsp?noticeID=<%="noticeID"%>">�鿴</a></div>
            </td>
            <td width="60">
                <div align="center"><a href="delnotice.jsp?noticeID=<%="noticeID"%>"
                                       onClick="return confirm('ȷ��Ҫɾ������������?');">ɾ��</a></div>
            </td>
        </tr>

    </table>
    <br>
</div>
</body>
</html>
