package com.kogent;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class UserDB {
	
	Connection con;
	ResultSet rs;
	Statement stmt;
		
	public UserDB() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@deepak:1521:orcl","scott","tiger");
		} catch (Exception e) {		
			e.printStackTrace();
		}	
	}
	
	public boolean isValidUser(String userid, String password){
		boolean found=false;
		try {
			stmt=con.createStatement();
			rs=stmt.executeQuery("select * from admin where userid='"+userid+"' and password='"+password+"'");
			if(rs.next())found=true;
		} catch (SQLException e) {			
			e.printStackTrace();
		}
		return found;
	}
}
