package io.ht.www;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UJdbc {

	public static Connection  getCon() {
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");// 动态加载mysql驱动
			String name="root";
			String pass="root";
			String url="jdbc:mysql://localhost:3306/shop";
			conn=DriverManager.getConnection(url, name, pass);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return conn;
		
	}
	public static void  close(Connection conn,PreparedStatement ps,ResultSet rs) {
		try{
			if(rs!=null){
				rs.close();
			}
			if (ps!=null) {
				ps.close();
			}
			if (conn!=null) {
				conn.close();
			}
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
