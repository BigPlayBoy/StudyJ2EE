package lee;

import java.sql.*;

/**
 * Created by jarvis on 2016/12/13.
 */
public class DbDao {
    private Connection conn;
    private String driver;
    private String url;
    private String username;
    private String pass;

    public DbDao() {
    }

    public DbDao(String driver, String url, String username, String pass) {
        this.driver = driver;
        this.url = url;
        this.username = username;
        this.pass = pass;
    }

    public Connection getConn() {
        return conn;
    }

    public void setConn(Connection conn) {
        this.conn = conn;
    }

    public String getDriver() {
        return driver;
    }

    public void setDriver(String driver) {
        this.driver = driver;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    //获取数据库链接
    public Connection getConnection() throws Exception {
        if (conn == null) {
            Class.forName(this.driver);
            conn = DriverManager.getConnection(url, username, pass);
        }
        return conn;
    }

    //插入记录
    public boolean insert(String sql, Object... args) throws Exception {
        PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
        for (int i = 0; i < args.length; i++) {
            preparedStatement.setObject(i + 1, args[i]);
        }
        if (preparedStatement.executeUpdate() != 1) return false;
        return true;
    }

    //执行查询
    public ResultSet query(String sql, Object... args) throws Exception {
        PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
        for (int i = 0; i < args.length; i++) {
            preparedStatement.setObject(i + 1, args[i]);
        }
        return preparedStatement.executeQuery();
    }

    //执行修改
    public void modify(String sql, Object... args) throws Exception {
        PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
        for (int i = 0; i < args.length; i++) {
            preparedStatement.setObject(i + 1, args[i]);
        }
        preparedStatement.executeUpdate();
        preparedStatement.close();
    }

    //关闭数据库链接的方法
    public void closeConn() throws SQLException {
        if (conn != null && !conn.isClosed()) {
            conn.close();
        }
    }
}
