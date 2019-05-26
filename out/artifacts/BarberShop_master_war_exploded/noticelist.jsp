<%@ page contentType="text/html;charset=gb2312" %>
<html>
<head>
    <title>公告管理</title>
</head>

<body>

<div align="center">
    <h1>公告管理</h1>
    <p><a href="updateNotice.jsp?modifyNotice=0">添加新公告</a></p>

    <table border="1" cellpadding="0" cellspacing="0">
        <tr>
            <td width="100" height="30">
                <div align="center">公告ID</div>
            </td>
            <td width="200">
                <div align="center">公告标题</div>
            </td>
            <td width="100">
                <div align="center">发表时间</div>
            </td>
            <td colspan="2">
                <div align="center">操作</div>
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
                <div align="center"><a href="showNotice.jsp?noticeID=<%="noticeID"%>">查看</a></div>
            </td>
            <td width="60">
                <div align="center"><a href="delnotice.jsp?noticeID=<%="noticeID"%>"
                                       onClick="return confirm('确定要删除这条数据吗?');">删除</a></div>
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
                <div align="center"><a href="showNotice.jsp?noticeID=<%="noticeID"%>">查看</a></div>
            </td>
            <td width="60">
                <div align="center"><a href="delnotice.jsp?noticeID=<%="noticeID"%>"
                                       onClick="return confirm('确定要删除这条数据吗?');">删除</a></div>
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
                <div align="center"><a href="showNotice.jsp?noticeID=<%="noticeID"%>">查看</a></div>
            </td>
            <td width="60">
                <div align="center"><a href="delnotice.jsp?noticeID=<%="noticeID"%>"
                                       onClick="return confirm('确定要删除这条数据吗?');">删除</a></div>
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
                <div align="center"><a href="showNotice.jsp?noticeID=<%="noticeID"%>">查看</a></div>
            </td>
            <td width="60">
                <div align="center"><a href="delnotice.jsp?noticeID=<%="noticeID"%>"
                                       onClick="return confirm('确定要删除这条数据吗?');">删除</a></div>
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
                <div align="center"><a href="showNotice.jsp?noticeID=<%="noticeID"%>">查看</a></div>
            </td>
            <td width="60">
                <div align="center"><a href="delnotice.jsp?noticeID=<%="noticeID"%>"
                                       onClick="return confirm('确定要删除这条数据吗?');">删除</a></div>
            </td>
        </tr>

    </table>
    <br>
</div>
</body>
</html>
