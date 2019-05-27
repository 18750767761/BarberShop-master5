package barber.dao;

import barber.bean.HairStyleBean;
import barber.tool.DBHelper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HairDao {
    static DBHelper dbHelper = new DBHelper();

    //    查询长发的图片信息
    public static List<HairStyleBean> quaryLong() {
        return quaryHairStyle("nvshengduanfa");
    }

    //    查询不同发型的图片信息
    public static List<HairStyleBean> quaryHairStyle(String type) {
        String sql = "SELECT * FROM hairstyle where Hname ='" + type + "'";
        List<HairStyleBean> hairStyleList = new ArrayList<HairStyleBean>();
        HairStyleBean hair = null;
        try {
            ResultSet resultSet = dbHelper.execuQuery(sql);
            while (resultSet.next()) {
                hair = new HairStyleBean();
                hair.setHid(resultSet.getLong("Hid"));
                hair.setHsex(resultSet.getString("Hsex"));
                hair.setHtime(resultSet.getInt("Htime"));
                hair.setHprice(resultSet.getInt("Hprice"));
                hair.setHname(resultSet.getString("Hname"));
                hair.setHpic(resultSet.getString("Hpic"));
                hair.setHcomment(resultSet.getString("Hcomment"));
                hairStyleList.add(hair);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hairStyleList;
    }

    //    查询单独一个发型的信息
    public static HairStyleBean quaryHair(Long id){
        String sql = "SELECT * FROM hairstyle where Hid =" + id;
        HairStyleBean hair = null;
        try {
            ResultSet resultSet = dbHelper.execuQuery(sql);
            while (resultSet.next()) {
                hair = new HairStyleBean();
                hair.setHid(resultSet.getLong("Hid"));
                hair.setHsex(resultSet.getString("Hsex"));
                hair.setHtime(resultSet.getInt("Htime"));
                hair.setHprice(resultSet.getInt("Hprice"));
                hair.setHname(resultSet.getString("Hname"));
                hair.setHpic(resultSet.getString("Hpic"));
                hair.setHcomment(resultSet.getString("Hcomment"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return hair;
    }

    //    删除单独一个发型的信息
    public static void deleteHair(Long id){
        String sql = "delete FROM hairstyle where Hid =" + id;
        dbHelper.executeUpdate(sql);
    }

}
