package barber.dao;

import barber.bean.NoticesBean;
import barber.tool.DBHelper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NoticeDao {
    static DBHelper dbHelper = new DBHelper();

    //    查询所有的公告信息
    public static List<NoticesBean> quaryNoticesList() {
        String sql = "select * from notice";
        List<NoticesBean> noticeList = new ArrayList<NoticesBean>();
        NoticesBean notice;
        ResultSet resultSet = dbHelper.execuQuery(sql);
        try {
            while (resultSet.next()) {
                notice = new NoticesBean();
                notice.setNid(resultSet.getLong("Nid"));
                notice.setNtext(resultSet.getString("Ntext"));
                notice.setNtime(resultSet.getTimestamp("Ntime"));
                notice.setNtitle(resultSet.getString("Ntitle"));
                noticeList.add(notice);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return noticeList;
    }

    //    查看单独公告信息
    public static NoticesBean quaryNotice(Long nid) {
        String sql = "select * from notice where Nid =" + nid;
        NoticesBean notice =new NoticesBean();
        try {
            ResultSet resultSet = dbHelper.execuQuery(sql);
            while (resultSet.next()){
                notice.setNid(resultSet.getLong("Nid"));
                notice.setNtext(resultSet.getString("Ntext"));
                notice.setNtime(resultSet.getTimestamp("Ntime"));
                notice.setNtitle(resultSet.getString("Ntitle"));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        System.out.println(notice.getNid());
        return notice;
    }
}
