package barber.form;

import barber.bean.UserBean;
import barber.tool.DBHelper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserForm {
    private static DBHelper dbHelper = new DBHelper();
    private UserBean userBean = new UserBean();

    //   查询用户信息
    public static UserBean queryUserBean(Integer userId) {
        UserBean userBean = new UserBean();
        String sql = "SELECT * FROM User where Uid =" + userId;
        ResultSet rs = dbHelper.execuQuery(sql);
        try {
            while (rs.next()){
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
}
