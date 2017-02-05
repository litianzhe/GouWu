package io.ht.www;

import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;


import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;


public class JDBC {

	public static void main(String[] args) throws Exception {
        JDBC jdbc=new JDBC();
        /*List<UserBean> list=jdbc.getList();*/
        /*int list=jdbc.insert("qa", "男", "2001-01-01", "2017-01-11 10:40:50", "dfd");*/
        //int i=jdbc.update(6,"qatu", "男", "2001-01-01", "2017-01-11 10:40:50", "dfd");
        //System.out.println(i);
        UserBean userBean=jdbc.selectByusername("hhh");
        //int i=jdbc.delete(27);
        System.out.println(userBean+" dfs:");
    }
	public List<UserBean> getList() throws SQLException{
		List<UserBean> list=new LinkedList<UserBean>();	// LinkList<UserBean>();
		Connection conn = null;
        String sql;
        // MySQL的JDBC URL编写方式：jdbc:mysql://主机名称：连接端口/数据库的名称?参数=值
        // 避免中文乱码要指定useUnicode和characterEncoding
        // 执行数据库操作之前要在数据库管理系统上创建一个数据库，名字自己定，
        // 下面语句之前就要先创建javademo数据库
        String url = "jdbc:mysql://localhost:3306/shop?"
                + "user=root&password=root&useUnicode=true&characterEncoding=UTF8";
 
        try {
            // 之所以要使用下面这条语句，是因为要使用MySQL的驱动，所以我们要把它驱动起来，
            // 可以通过Class.forName把它加载进去，也可以通过初始化来驱动起来，下面三种形式都可以
            Class.forName("com.mysql.jdbc.Driver");// 动态加载mysql驱动
            // or:
            // com.mysql.jdbc.Driver driver = new com.mysql.jdbc.Driver();
            // or：
            // new com.mysql.jdbc.Driver();
            System.out.println("成功加载MySQL驱动程序");
            // 一个Connection代表一个数据库连接
            conn = (Connection) DriverManager.getConnection(url);
            Statement stmt = (Statement) conn.createStatement();
          sql = "select * from user";
          ResultSet result = (ResultSet)stmt.executeQuery(sql);// executeUpdate语句会返回一个受影响的行数，如果返回-1就没有成功\
         while (result.next()) {
      	  UserBean bean=new UserBean();
      	  bean.setId(result.getInt(1));
      	  bean.setName(result.getString(3));
      	  bean.setSex(result.getString(4));
      	  bean.setBirthday(result.getDate(5));
      	  String str=result.getString(6);
      	 // System.out.println(bean);
      	  SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
      	  java.util.Date date=sdf.parse(str);
      	  //System.out.println(date);
      	  bean.setDate(date);
      	  bean.setUsername(result.getString(7));
      	 
      	   list.add(bean);
            // System.out.println(result.getString(1) + "\t" + result.getString(2)+ "\t" +
           //  result.getString(3)+ "\t" + result.getString(4)+ "\t" + result.getString(5));// 入如果返回的是int类型可以用getInt()
         
         }
        } catch (SQLException e) {
            System.out.println("MySQL操作错误");
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            conn.close();
        }
		return list;
        }
	public UserBean selectByusername(String username) throws SQLException{
		UserBean bean=null;
		Connection conn = null;
        String sql;
        String url = "jdbc:mysql://localhost:3306/shop?"
                + "user=root&password=root&useUnicode=true&characterEncoding=UTF8";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("成功加载MySQL驱动程序");
            conn = (Connection) DriverManager.getConnection(url);
            Statement stmt = (Statement) conn.createStatement();
          sql = "select * from user where username=\"" +username +"\";";
          ResultSet result = (ResultSet)stmt.executeQuery(sql);
          
          while (result.next()) {
      	  bean=new UserBean();
      	  bean.setId(result.getInt(1));
      	  bean.setPassword(result.getString(2));
      	  bean.setName(result.getString(3));
      	  bean.setSex(result.getString(4));
      	  bean.setBirthday(result.getDate(5));
      	  String str=result.getString(6);
      	  SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
      	  java.util.Date date=sdf.parse(str);
      	  bean.setDate(date);
      	  bean.setUsername(result.getString(7));
      	  // System.out.println(bean);
         }
        } catch (SQLException e) {
            System.out.println("MySQL操作错误");
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            conn.close();
        }
        return bean;
	}
 	public UserBean selectById(int id) throws SQLException{
		UserBean bean=new UserBean();
		Connection conn = null;
        String sql;
        String url = "jdbc:mysql://localhost:3306/shop?"
                + "user=root&password=root&useUnicode=true&characterEncoding=UTF8";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("成功加载MySQL驱动程序");
            conn = (Connection) DriverManager.getConnection(url);
            Statement stmt = (Statement) conn.createStatement();
          sql = "select * from user where id=" +id +";";
          ResultSet result = (ResultSet)stmt.executeQuery(sql);
          
          while (result.next()) {
      	 // UserBean bean=new UserBean();
      	  bean.setId(result.getInt(1));
      	  bean.setName(result.getString(3));
      	  bean.setSex(result.getString(4));
      	  bean.setBirthday(result.getDate(5));
      	  String str=result.getString(6);
      	  SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
      	  java.util.Date date=sdf.parse(str);
      	  bean.setDate(date);
      	  bean.setUsername(result.getString(7));
      	  // System.out.println(bean);
         }
        } catch (SQLException e) {
            System.out.println("MySQL操作错误");
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            conn.close();
        }
		return bean;
	}
	public int insert(String name, String sex, String birthday, String date,String username) throws SQLException {
		int i=0;
		Connection conn = null;
        String sql;
        String url = "jdbc:mysql://localhost:3306/shop?"
                + "user=root&password=root&useUnicode=true&characterEncoding=UTF8";
 
        try {

            Class.forName("com.mysql.jdbc.Driver");// 动态加载mysql驱动

            System.out.println("成功加载MySQL驱动程序");
            // 一个Connection代表一个数据库连接
            conn = (Connection) DriverManager.getConnection(url);
            Statement stmt = (Statement) conn.createStatement();
          sql = "INSERT INTO USER(NAME,sex,birthday,DATE,username) VALUES (\"" +
          		name+"\",\"" +sex+"\",\""+birthday+"\",\""+date+"\",\""+username+"\")";
          
         
           i = stmt.executeUpdate(sql);// executeUpdate语句会返回一个受影响的行数，如果返回-1就没有成功\
         
        } catch (SQLException e) {
        	
            System.out.println("MySQL操作错误");
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            conn.close();
        }
		return i;
        }
	
	//sc
	public int update(int id,String name, String sex, String birthday,
			String username) throws SQLException {
		int i=0;
		Connection conn = null;
        String sql;
        String url = "jdbc:mysql://localhost:3306/shop?"
                + "user=root&password=root&useUnicode=true&characterEncoding=UTF8";
 
        try {

            Class.forName("com.mysql.jdbc.Driver");// 动态加载mysql驱动

            System.out.println("成功加载MySQL驱动程序");
            // 一个Connection代表一个数据库连接
            conn = (Connection) DriverManager.getConnection(url);
            Statement stmt = (Statement) conn.createStatement();
          /*sql = "UPDATE USER SET id=?,NAME=?,sex=?,birthday=?,DATE=?,username=? WHERE id=?;";*/
          sql="UPDATE USER SET NAME=\"" +name +"\",sex=\"" +sex  +
          		"\",birthday=\"" +birthday +"\",username=\"" +username +
          		"\" WHERE id=\"" +id +"\";";
            //sql="delete from user where id=\"id\"";
            i=stmt.executeUpdate(sql);// executeUpdate语句会返回一个受影响的行数，如果返回-1就没有成功\
            
        } catch (SQLException e) {
        	
            System.out.println("MySQL操作错误");
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            conn.close();
        }
        return i;
        }
	//删除
	public int delete(int id) throws SQLException {
		int i=0;
		Connection conn = null;
        String sql;
        String url = "jdbc:mysql://localhost:3306/shop?"
                + "user=root&password=root&useUnicode=true&characterEncoding=UTF8";
 
        try {

            Class.forName("com.mysql.jdbc.Driver");// 动态加载mysql驱动

            System.out.println("成功加载MySQL驱动程序");
            // 一个Connection代表一个数据库连接
            conn = (Connection) DriverManager.getConnection(url);
            Statement stmt = (Statement) conn.createStatement();
          /*sql = "UPDATE USER SET id=?,username=? WHERE id=?;";*/
          sql="delete from user  WHERE id=" +id +";";
            i=stmt.executeUpdate(sql);// executeUpdate语句会返回一个受影响的行数，如果返回-1就没有成功\

        } catch (SQLException e) {
        	
            System.out.println("MySQL操作错误");
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            conn.close();
        }
        return i;
        }
}
