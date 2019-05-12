package barber.form;


import barber.bean.BarberBean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static barber.form.HairForm.dbHelper;

public class BarberForm {


    //    查询不同理发师信息
    public static List<BarberBean> quaryBarber() {
        String sql = "SELECT * FROM barber";
        List<BarberBean> barberlist = new ArrayList<BarberBean>();
        BarberBean barber = null;
        try {
            ResultSet resultSet = dbHelper.execuQuery(sql);
            while (resultSet.next()) {
                barber = new BarberBean();
                barber.setBid(resultSet.getLong("Bid"));
                barber.setBname(resultSet.getString("Bname"));
                barber.setBcondition(resultSet.getInt("Bcondition"));
                barber.setBpic(resultSet.getString("Bpic"));
                barber.setBcommons(resultSet.getString("Bcommons"));
                barberlist.add(barber);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return barberlist;
    }

    //    根据ID查询理发师信息
    public static BarberBean quaryBaarber(Long id) {
        String sql = "SELECT * FROM barber where Bid=" + id;
        BarberBean barber = null;
        try {
            ResultSet resultSet = dbHelper.execuQuery(sql);
            while (resultSet.next()) {
                barber = new BarberBean();
                barber.setBid(resultSet.getLong("Bid"));
                barber.setBname(resultSet.getString("Bname"));
                barber.setBcondition(resultSet.getInt("Bcondition"));
                barber.setBpic(resultSet.getString("Bpic"));
                barber.setBcommons(resultSet.getString("Bcommons"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return barber;
    }
}
