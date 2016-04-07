package com.kogent.action;

import com.opensymphony.xwork2.validator.annotations.*;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;

public class LoginAction extends ActionSupport{
	private String username;
	private String password;
	
	@RequiredFieldValidator(type = ValidatorType.SIMPLE, fieldName = "username",	message = "User Name field is empty.")
	public String getUsername(){
		return username;
	}	
	public void setUsername(String username){
		this.username = username;
	}
	
	@RequiredFieldValidator(type = ValidatorType.SIMPLE, fieldName = "password",	message = "Password field is empty.")	
	public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password = password;
	}
	
	public String execute()throws Exception {		
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    String url  = "jdbc:oracle:thin:@kogent8:1521:Ambrish";
    String userid = "scott";
    String password = "tiger";
    boolean flag=false;
    try{	
		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());	
		conn=DriverManager.getConnection(url,userid,password);	
		stmt = conn.createStatement();	
		rs = stmt.executeQuery("select username, password from user_tab");		
		while(rs.next()){
			String usn=rs.getString(1);
			String pass = rs.getString(2);
			if((getUsername().equals(usn))&&(getPassword().equals(pass))){				
				flag=true;
				break;
	      	}		
		}	  			
    }//try close
    catch (SQLException e ){
      System.err.println(e.getMessage());
    }
    finally{
    	rs.close();
    	stmt.close();
    	conn.close();
    }
	if(flag){
		return SUCCESS;
	}		
	else{
		this.addActionError("Invalid User Name or Password");
		return ERROR;
	}
		      
   }//execute close    
	
}//class close
   