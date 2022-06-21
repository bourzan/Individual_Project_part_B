package utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Andreas
 */
public class DBUtil {

    static final String DB_URL = "jdbc:mysql://localhost:3306/priv_school";
    static final String DB_USER = "root";
    static final String DB_PASSWORD = "password";
    
    public static Connection getConnection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return con;
    }
    
    public static void closeConnection(Connection con) {
        try {
            if (con !=null) con.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
    
    public static void closeConnection(Connection con, PreparedStatement ps, ResultSet rs) {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (con !=null) con.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

}
