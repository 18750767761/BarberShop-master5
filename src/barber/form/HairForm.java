package barber.form;

import barber.bean.HairStyleBean;
import barber.tool.DBHelper;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class HairForm {
    static DBHelper dbHelper = new DBHelper();


    //    查询不同发型的图片信息
    public static List<HairStyleBean> quaryHairStyle(String type) {
        String sql = "SELECT * FROM hairstyle where Hname ='" + type + "'";
        System.out.println(sql);
        List<HairStyleBean> hairStyleList = new ArrayList<HairStyleBean>();
        HairStyleBean hair = null;
        try {
            ResultSet resultSet = dbHelper.execuQuery(sql);
            while (resultSet.next()) {
                hair = new HairStyleBean();
                hair.setHid(resultSet.getLong("Hid"));
                hair.setHname(resultSet.getString("Hname"));
                hair.setHpic(resultSet.getString("Hpic"));
                hair.setHsex(resultSet.getString("Hsex"));
                hair.setHtime(resultSet.getInt("Htime"));
                hair.setHprice(resultSet.getInt("Hprice"));
                hairStyleList.add(hair);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hairStyleList;
    }

}
