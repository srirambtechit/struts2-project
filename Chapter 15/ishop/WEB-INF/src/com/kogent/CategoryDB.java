package com.kogent;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;


public class CategoryDB {
	
	Connection con;
	ResultSet rs;
	Statement stmt;
		
	public CategoryDB() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@deepak:1521:orcl","scott","tiger");
		} catch (Exception e) {		
			e.printStackTrace();
		}	
	}
	
	public int addCategory(int id, String name){
		try {
			PreparedStatement pstmt=con.prepareStatement("insert into categories values(?,?)");
			pstmt.setInt(1,id);
			pstmt.setString(2, name);
			pstmt.executeUpdate();
			pstmt.close();
			return 1;
			
		} catch (SQLException e) {
			return 0;
		}
	}
	public ArrayList<Category> getCategories(){
		ArrayList<Category> categories=new ArrayList<Category>();
		Category category=null;
		try {
			stmt=con.createStatement();
			rs=stmt.executeQuery("select * from categories");
			while(rs.next()){
				category=new Category();
				category.setId(rs.getInt(1));
				
				category.setName(rs.getString(2));
			
				categories.add(category);					
			}
			rs.close();
		} catch (Exception e) {				
			e.printStackTrace();
		}
		return categories;
	}
	public int deleteCategory(int catid){
		int i=0;
		try {
			stmt=con.createStatement();
			i=stmt.executeUpdate("delete from categories where catid="+catid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
}
