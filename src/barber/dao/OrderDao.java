package barber.dao;

import barber.bean.OrderBean;
import barber.tool.DBHelper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


public class OrderDao {
    private static DBHelper dbHelper = new DBHelper();

    //    生成订单
    public static boolean insertOrder(Long uid, Long bid, Long hid) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");//设置日期格式
        String sql = "insert into server(Uid,Bid,Hid,Stime,Sprice,Scondition) values(" + uid + "," + bid + "," + hid + ",'" + df.format(new Date()) + "'," + 20 + "," + 1 + ");";
        return dbHelper.executeUpdate(sql);
    }

    //    根据用户ID查询订单
    public static List<OrderBean> quaryOrder(Long uid) {
        String sql = "select * from server where Uid = " + uid + " order by Sid desc";
        List<OrderBean> orderlist = new ArrayList<OrderBean>();
        OrderBean order = null;
        ResultSet resultSet = dbHelper.execuQuery(sql);
        try {
            while (resultSet.next()) {
                order = new OrderBean();
                order.setBid(resultSet.getLong("Bid"));
                order.setOid(resultSet.getLong("Sid"));
                order.setUid(resultSet.getLong("Uid"));
                order.setHid(resultSet.getLong("Hid"));
                order.setStime(resultSet.getTimestamp("Stime"));
                order.setSprice(resultSet.getInt("Sprice"));
                order.setScondition(resultSet.getInt("Scondition"));
                orderlist.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderlist;
    }

    //    根据发型师ID查询订单
    public static List<OrderBean> quaryOrderlist(Long bid,int con) {
        String sql = "select * from server where Bid = " + bid + " and Scondition = "+con+" order by Sid desc";
        List<OrderBean> orderlist = new ArrayList<OrderBean>();
        OrderBean order;
        ResultSet resultSet = dbHelper.execuQuery(sql);
        try {
            while (resultSet.next()) {
                order = new OrderBean();
                order.setBid(resultSet.getLong("Bid"));
                order.setOid(resultSet.getLong("Sid"));
                order.setSprice(resultSet.getInt("Sprice"));
                order.setScondition(resultSet.getInt("Scondition"));
                order.setUid(resultSet.getLong("Uid"));
                order.setHid(resultSet.getLong("Hid"));
                order.setStime(resultSet.getTimestamp("Stime"));
                orderlist.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderlist;
    }

    // 删除用户订单
    public static void deleteOrder(Long oid) {
        String sql = "delete from server where Sid=" + oid;
        dbHelper.executeUpdate(sql);
    }


    public static void updateOrder(Long oid) {
        String sql ="UPDATE server SET Scondition=0 WHERE Sid="+oid+";";
        dbHelper.executeUpdate(sql);
    }
}
