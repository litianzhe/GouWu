package io.ht.www;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;



public class Comm {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Comm comm=new Comm();
		//comm.insert("fcf6", 15, 15, "2017-03-11");
		//comm.delete(5);
		//comm.update(4, "vcd", 1500, 10, "2016-03-11","image/3.png");
		//comm.select();
		//CommodityBean bean=new CommodityBean();
		//bean();
		//comm.update(bean);
		//System.out.println(comm);
	}
	Connection conn=null;
	//增加
	public int insert(String cname,float cprice,float cnumber,String cquality ,String cimage) {
		PreparedStatement ps=null;
		int i=0;
		conn=UJdbc.getCon();
		String sql="INSERT INTO commodity(cname,cprice,cnumber,cquality,cimage) VALUES (?,?,?,?,?);";
		try {
			 ps=conn.prepareStatement(sql);
			 ps.setString(1, cname);
			 ps.setFloat(2, cprice);
			 ps.setFloat(3, cnumber);
			 ps.setString(4, cquality);
			 ps.setString(5, cimage);
			 System.out.println("wd :");
			 ps.executeUpdate();
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			UJdbc.close(conn, ps,null);}
		return i;
	}
	
	//更新
	public  int update(CommodityBean bean) {
		PreparedStatement ps=null;
		int i=0;
		conn=UJdbc.getCon();
		String sql="update commodity set cname=?,cprice=?,cnumber=?,cquality=?,cimage=? where cid=?;";
		try {
			ps=conn.prepareStatement(sql);
			
			 ps.setString(1, bean.getCname());
			 ps.setFloat(2, bean.getCprice());
			 ps.setFloat(3, bean.getCnumber());
			 Date date= bean.getCquality();
			 SimpleDateFormat sm=new SimpleDateFormat();
			 String str=sm.format(date);
			 ps.setString(4,str);
			 ps.setString(5, bean.getCimage());
			 ps.setInt(6, bean.getCid());
			 ps.executeUpdate();
			// System.out.println(" 测试  update ： "+ps);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return i;
		
				
		
	}
	
	//查询
	public List<CommodityBean> select(){
		conn=UJdbc.getCon();
		List<CommodityBean> list=new ArrayList<CommodityBean>();
		Statement st=null;
		ResultSet rs=null;
		int i=0;
		String sql="select * from commodity";
		try {
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			while (rs.next()) {
				CommodityBean commodity=new CommodityBean();
				commodity.setCid(rs.getInt(1));
				commodity.setCname(rs.getString(2));
				commodity.setCprice(rs.getFloat(3));
				commodity.setCnumber(rs.getFloat(4));
				commodity.setCquality(rs.getDate(5));
				commodity.setCimage(rs.getString(6));
				//System.err.println(" 测试  select ： "+commodity);
				list.add(commodity);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
		
	}
	//
	public CommodityBean selectByCommodityBean(int cid){
		conn=UJdbc.getCon();
		CommodityBean commodity=null;
		Statement st=null;
		ResultSet rs=null;
		int i=0;
		String sql="select * from commodity where cid=\"" +cid +"\"";
		try {
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			while (rs.next()) {
				 commodity=new CommodityBean();
				commodity.setCid(rs.getInt(1));
				commodity.setCname(rs.getString(2));
				commodity.setCprice(rs.getFloat(3));
				commodity.setCnumber(rs.getFloat(4));
				commodity.setCquality(rs.getDate(5));
				commodity.setCimage(rs.getString(6));
				//System.err.println(" 测试  select ： "+commodity);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return commodity;		
	}
	//
	public void delete(int cid){
		conn=UJdbc.getCon();
		PreparedStatement ps=null;
		String sql="delete from commodity where cid=?";
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, cid);
			ps.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	/*public  int update(int cid,String cname, 
			float cprice,float cnumber,String cquality) {
		PreparedStatement ps=null;
		int i=0;
		conn=UJdbc.getCon();
		String sql="update commodity set cname=?,cprice=?,cnumber=?,cquality=? where cid=?;";
		try {
			ps=conn.prepareStatement(sql);
			
			 ps.setString(1, cname);
			 ps.setFloat(2, cprice);
			 ps.setFloat(3, cnumber);
			 ps.setString(4, cquality);
			 ps.setInt(5, cid);
			 ps.executeUpdate();
			// System.out.println(" 测试  update ： "+ps);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
				return cid;
		
	}*/
}
