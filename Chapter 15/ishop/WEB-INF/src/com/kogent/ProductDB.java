package com.kogent;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class ProductDB {
	
	Connection con;
	ResultSet rs;
	Statement stmt;
		
	public ProductDB() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@deepak:1521:orcl","scott","tiger");
		} catch (Exception e) {		
			e.printStackTrace();
		}	
	}
	
	public int addProduct(int prodid, int catid, String name, String desc, double price){
		try {
			System.out.println("executing query");
			System.out.println("Hello2!"+prodid+catid+name+desc+price);
			PreparedStatement pstmt=con.prepareStatement("insert into products values(?,?,?,?,?)");
			pstmt.setInt(1,prodid);
			pstmt.setInt(2, catid);
			pstmt.setString(3, name);
			pstmt.setString(4, desc);
			pstmt.setDouble(5, price);
			pstmt.executeUpdate();
			System.out.println("after query");
			pstmt.close();
			return 1;
			
		} catch (SQLException e) {
			System.out.println("throwing exception");
			e.printStackTrace();
			return 0;
		}
	}
	public ArrayList<Product> getProducts(int catid){
		ArrayList<Product> products=new ArrayList<Product>();
		Product product=null;
		try {
			stmt=con.createStatement();
			System.out.println("Executing statement");
			rs=stmt.executeQuery("select * from products where catid="+catid);
			while(rs.next()){
				product=new Product();
				System.out.println(rs.getInt(1)+" "+rs.getString(3));				
				product.setProdid(rs.getInt(1));
				product.setCatid(rs.getInt(2));			
				product.setName(rs.getString(3));
				product.setDesc(rs.getString(4));
				product.setPrice(rs.getDouble(5));
				products.add(product);					
			}
			rs.close();
		} catch (Exception e) {				
			e.printStackTrace();
		}
		return products;
	}
	public int deleteProduct(int prodid){
		int i=0;
		try {
			stmt=con.createStatement();
			i=stmt.executeUpdate("delete from products where prodid="+prodid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	public Product getProduct(int prodid){
		Product product=null;
		try {
			stmt=con.createStatement();
			rs=stmt.executeQuery("select * from products where prodid="+prodid);
			if(rs.next()){
				product=new Product();
				product.setProdid(rs.getInt(1));
				product.setCatid(rs.getInt(2));			
				product.setName(rs.getString(3));
				product.setDesc(rs.getString(4));
				product.setPrice(rs.getDouble(5));								
			}
			rs.close();
		} catch (Exception e) {				
			e.printStackTrace();
		}
		return product;
	}
}
