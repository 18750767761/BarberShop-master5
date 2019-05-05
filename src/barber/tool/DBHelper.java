package barber.tool;


import java.sql.*;

public class DBHelper {
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/BarberShop?useUnicode=true&characterEncoding=utf8";
    static final String USER = "root";
    static final String password = "qq201314";
    static Connection connection = null;
    static Statement stmt = null;

    //    获取Mysql连接
    public void getConnection() {
        try {
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("驱动异常");
        }
        if (connection == null) {
            try {
                connection = DriverManager.getConnection(DB_URL, USER, password);
            } catch (SQLException e) {
                e.printStackTrace();
                System.out.println("获取连接异常");
            }
        }
    }

//    增删改操作
    public void executeUpdate(String sql){
        if (connection==null){
            getConnection();
        }
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("SQLException"); 
        }
    }

//    查询操作
    public ResultSet execuQuery(String sql){
        if (connection==null){
            getConnection();
        }
        ResultSet resultSet = null;
        try {
            Statement statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("查询失败");
            return null;
        }
        return resultSet;
    }

//    关闭数据库
    public void closeConnection(){
        if (connection != null ){
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                connection=null;
            }
        }
    }
}
