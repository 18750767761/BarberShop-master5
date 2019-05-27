package barber.dao;


import barber.bean.BarberBean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static barber.dao.HairDao.dbHelper;

public class BarberDao {


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
    public static BarberBean quaryBarber(Long id) {
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
                barber.setBpassword(resultSet.getString("Bpassword"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return barber;
    }

    //    注册发型师信息
    public static void insertBarberbean(Long bid, String bpass) {
        String sql = "insert into barber(Bid,Bpassword) values(" + bid + ",'" + bpass + "')";
        System.out.println(sql);
        dbHelper.executeUpdate(sql);
    }

    //    查询当前的预约人数
    public static int selectNum(Long bid) {
        String sql = "select count(*) rec from server where Scondition =1 and Bid=" + bid + ";";
        ResultSet rs = dbHelper.execuQuery(sql);
        int rec = 0;
        try {
            while (rs.next()) {
                rec = rs.getInt("rec");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rec;
    }

//    删除理发师信息
    public  static void deleteBarber(Long bid){
        String sql = "delete FROM barber where Bid =" + bid;
        dbHelper.executeUpdate(sql);
    }
}
