package com.kogent.action;

import com.opensymphony.xwork2.validator.annotations.*;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;

public class AddUserAction extends ActionSupport{
	    
    private String username;
    private String password;
    private String name;
    private int age;
    private String nation;
    private String email;
    private long phone;    
    
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
    @RequiredFieldValidator(type = ValidatorType.SIMPLE,fieldName = "name",	message = "Name field is empty.")
    public String getName(){
    	return name;
    }
    public void setName(String name){
    	this.name = name;
    }
    
    @RequiredFieldValidator(type = ValidatorType.SIMPLE, fieldName = "age",	message = "Age field is empty.")
   	@IntRangeFieldValidator(type = ValidatorType.FIELD, fieldName = "age", min="18", max="40", message = "Enter age between 18 and 40.")
   	public int getAge(){
    	return age;
    }
    public void setAge(int age){
    	this.age = age;
    }
    @RequiredFieldValidator(type = ValidatorType.SIMPLE, fieldName = "nation", message = "Nationality field is empty.")
    public void setNation(String nation){
    	this.nation = nation;
    }
    public String getNation(){
    	return nation;
    }
    @RequiredFieldValidator(type = ValidatorType.SIMPLE,fieldName = "email",	message = "E-Mail is required.")
    @EmailValidator(type = ValidatorType.FIELD,fieldName = "email", message = "Enter a valid E-Mail ID.")
    
    public String getEmail(){
    	return email;
    }
    public void setEmail(String email){
    	this.email = email;
    }
    
    @RequiredFieldValidator(type = ValidatorType.SIMPLE, fieldName = "phone",	message = "Please Enter your Phone Number")
    public long getPhone(){
    	return phone;
    }
    public void setPhone(long phone){
    	this.phone = phone;
    }   
    public String execute()throws Exception{
	    Connection conn = null;
	    PreparedStatement ps = null;
	
	    String url  = "jdbc:oracle:thin:@kogent8:1521:Ambrish";
	    String user = "scott";
	    String pwd = "tiger"; 
	    int result=0; 
	   	try 
	       {
		  DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());	
		  conn=DriverManager.getConnection(url,user,pwd);
	      System.out.println("connection successfull");	
	      
	      ps = conn.prepareStatement("insert into user_tab values(?,?,?,?,?,?,?)");
	 	  ps.setString(1,username);
		  ps.setString(2,password);
		  ps.setString(3,name);
		  ps.setInt(4,age);
		  ps.setString(5,email);
		  ps.setString(6,nation);	  
		  ps.setLong(7,phone);
		  result=ps.executeUpdate();
		  ps.close(); 
		  conn.close();
	     }catch ( SQLException e ){
	    	 System.err.println(e.getMessage());
	     }
	     if(result == 1){
	    	 return SUCCESS;
	     }else{
	    	 this.addActionError("Some exception occurred.");
	    	 return ERROR;
	     }
	}//execute close
}//class close
