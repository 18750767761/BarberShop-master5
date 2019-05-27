package barber.dao;

import barber.bean.UserBean;
import barber.tool.DBHelper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    private static DBHelper dbHelper = new DBHelper();
    private UserBean userBean = new UserBean();

    //   查询用户信息
    public static UserBean queryUserBean(Long userId) {
        UserBean userBean=null;
        String sql = "SELECT * FROM User where Uid =" + userId;
        ResultSet rs = dbHelper.execuQuery(sql);
        try {
            while (rs.next()) {
                userBean = new UserBean();
                userBean.setUid(rs.getLong("Uid"));
                userBean.setUage(rs.getInt("Uage"));
                userBean.setUname(rs.getString("Uname"));
                userBean.setUpic(rs.getString("Upic"));
                userBean.setUscore(rs.getInt("Uscore"));
                userBean.setUtel(rs.getLong("Utel"));
                userBean.setUpassword(rs.getString("Upassword"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userBean;
    }

    public static List<UserBean> queryUserBean() {
        List<UserBean> userlist =new ArrayList<>();
        UserBean userBean=null;
        String sql = "SELECT * FROM User";
        ResultSet rs = dbHelper.execuQuery(sql);
        try {
            while (rs.next()) {
                userBean = new UserBean();
                userBean.setUid(rs.getLong("Uid"));
                userBean.setUage(rs.getInt("Uage"));
                userBean.setUname(rs.getString("Uname"));
                userBean.setUpic(rs.getString("Upic"));
                userBean.setUscore(rs.getInt("Uscore"));
                userBean.setUtel(rs.getLong("Utel"));
                userBean.setUpassword(rs.getString("Upassword"));
                userlist.add(userBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userlist;
    }

    //    注册用户信息
    public static void insertUserbean(Long uid, String upass) {
        String sql = "insert into user(Uid,Upassword) values(" + uid + ",'" + upass + "')";
        System.out.println(sql);
        dbHelper.executeUpdate(sql);
    }

    //    删除用户信息
    public static void deleteUserbean(Long uid) {
        String sql = "delete from user where Uid=" + uid;
        dbHelper.executeUpdate(sql);
    }
}
