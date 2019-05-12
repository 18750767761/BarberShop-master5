<%@ page contentType="text/html;charset=gb2312" %>
<html>
<head>
    <title>公告</title>
</head>

<body>
<div align="center">
    <h1>查看公告内容</h1>

    <table border="1" cellpadding="0" cellspacing="0">
        <tr>
            <td>公告ID：</td>
            <td width="200"><%="NOTICE_ID" %>
            </td>
        </tr>
        <tr>
            <td>公告标题：</td>
            <td><%="NOTICE_TITLE" %>
            </td>
        </tr>
        <tr>
            <td>发表时间：</td>
            <td><%="NOTICE_DATE" %>
            </td>
        </tr>
        <tr>
            <td>公告内容：</td>
            <td width="600" height="300"><%="NOTICE_TEXT" %>
            </td>
        </tr>
        <tr>
            <td><a href="noticelist.jsp">返回</a></td>
            <td><a href="updateNotice.jsp?modifyNotice=1&noticeID=<%="noticeID" %>"
                   onClick="return confirm('确定要删除这条数据吗?');">修改</a> <a
                    href="delnotice.jsp?noticeID=<%="noticeID" %>">删除</a></td>
        </tr>
    </table>

    <br>
</div>
</body>
</html>
