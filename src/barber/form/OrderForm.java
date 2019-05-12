package barber.form;

import barber.bean.OrderBean;
import barber.tool.DBHelper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


public class OrderForm {
    private static DBHelper dbHelper = new DBHelper();

    //    生成订单
    public static boolean insertOrder(Long uid, Long bid, Long hid) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");//设置日期格式
        String sql = "insert into server(Uid,Bid,Hid,Stime,Sprice,Scondition) values(" + uid + "," + bid + "," + hid + ",'" + df.format(new Date()) + "'," + 20 + "," + 1 + ");";
        return dbHelper.executeUpdate(sql);
    }

    //    查询订单
    public static List<OrderBean> quaryOrder() {
        String sql = "select * from server order by Sid desc";
        List<OrderBean> serverlist = new ArrayList<OrderBean>();
        OrderBean server = null;
        ResultSet resultSet = dbHelper.execuQuery(sql);
        try {
            while (resultSet.next()) {
                server = new OrderBean();
                server.setBid(resultSet.getLong("Bid"));
                server.setOid(resultSet.getLong("Sid"));
                server.setUid(resultSet.getLong("Uid"));
                server.setHid(resultSet.getLong("Hid"));
                server.setStime(resultSet.getTimestamp("Stime"));
                server.setSprice(resultSet.getInt("Sprice"));
                server.setScondition(resultSet.getInt("Scondition"));
                serverlist.add(server);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return serverlist;
    }

    public static void deleteOrder(Long oid) {
        String sql = "delete from server where Sid="+oid;
        System.out.println(sql);
        dbHelper.executeUpdate(sql);
    }
}
