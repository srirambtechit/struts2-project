package com.kogent;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;


public class OrderDB {
	
	Connection con;
	ResultSet rs;
	Statement stmt;
		
	public OrderDB() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@deepak:1521:orcl","scott","tiger");
		} catch (Exception e) {		
			e.printStackTrace();
		}	
	}
	
	public int addOrder(int orderid, String cname, long cardno, ArrayList<OrderItem> orderitems){
		try {
			PreparedStatement pstmt=con.prepareStatement("insert into orders values(?,?,?)");
			pstmt.setInt(1,orderid);
			pstmt.setString(2, cname);
			pstmt.setLong(3,cardno);
			pstmt.executeUpdate();
			System.out.println("Adding order");
			addOrderDetails(orderid, orderitems);
			pstmt.close();
			
			return 1;
			
		} catch (SQLException e) {
			return 0;
		}
	}
	
	public int addOrderDetails(int orderid, ArrayList<OrderItem> orderitems){
		try {
			System.out.println("Adding orderdetails");
			int i=0;
			for(OrderItem item:orderitems){
				
				PreparedStatement pstmt=con.prepareStatement("insert into orderdetails values(?,?,?,?,?)");
				pstmt.setInt(1, orderid);
				pstmt.setInt(2,item.getProdid());
				pstmt.setDouble(3, item.getPrice());
				pstmt.setInt(4, item.getUnit());
				pstmt.setDouble(5, item.getUnit()*item.getPrice());			
				pstmt.executeUpdate();
				System.out.println(++i);
				pstmt.close();	
			}					
			return 1;
			
		} catch (SQLException e) {
			System.out.println(e.toString());
			return 0;
		}
	}
	
}
