package kr.co.teaspoon.test;

import java.sql.*;


public class DBConTest {
    static Connection con = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;

    public static void main(String[] args) {
        JDBCConn db = new JDBCConn();
        con = db.connect();
        try {
            pstmt = con.prepareStatement("select * from member");
            rs = pstmt.executeQuery();
            while(rs.next()){
                System.out.println(rs.getInt("id"));
                System.out.println(rs.getString("pw"));
            }
            db.close(rs, pstmt, con);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
