package com.kogent.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.kogent.bean.Student;

public class Model {
	
	Connection con=null;
	Statement stmt=null;
	
	public String addStudent(Student student){
		
		if(validate(student)){
			try{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
			    Connection con = DriverManager.getConnection("jdbc:odbc:comp");
				String insertquery = "insert into student values(?,?,?,?)" ;
			    PreparedStatement pstate = con.prepareStatement(insertquery);
			    pstate.setInt(1,Integer.parseInt(student.getRoll()));
			    pstate.setString(2,student.getName());
				pstate.setString(3,student.getCourse());
				pstate.setString(4,student.getCity());
				pstate.executeUpdate();
				pstate.close();
				con.close();
				return "success";
			}
			catch(Exception e){
				return "error";
				
			}	
		}
		else{
			return "input";
		}
	}
	
	public ArrayList getStudents(){
		Student student=null;
		
		ArrayList students=new ArrayList();
		try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
		    con = DriverManager.getConnection("jdbc:odbc:comp");
		    stmt = con.createStatement();
		    ResultSet rs=stmt.executeQuery("select * from student");
			while( rs.next() ) {
				student=new Student();
				student.setRoll(Integer.toString(rs.getInt("roll")));
				student.setName(rs.getString("name"));
				student.setCourse(rs.getString("course"));
				student.setCity(rs.getString("city"));
				students.add(student);				
			}
			con.close();
			return students;
			
		}
		catch(Exception e){
			return null;
		}
	}
	
	public Student getStudent(String roll){
		Student student=null;
		try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
		    con = DriverManager.getConnection("jdbc:odbc:comp");
		    stmt = con.createStatement();
		    ResultSet rs=stmt.executeQuery("select * from student where roll="+roll);
			if( rs.next() ) {
				student=new Student();
				student.setRoll(Integer.toString(rs.getInt("roll")));
				student.setName(rs.getString("name"));
				student.setCourse(rs.getString("course"));
				student.setCity(rs.getString("city"));									
			}
			con.close();
			return student;
		}
		catch(Exception e){
			return null;
		}
	}
	
	public String editStudent(Student student){
		
		if(validate(student)){
			
			try{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
			    Connection con = DriverManager.getConnection("jdbc:odbc:comp");
			    Statement stmt = con.createStatement();
			    String query="update student set name='"+student.getName()+"', course='"+student.getCourse()+"', city='"+student.getCity()+"' where roll="+student.getRoll();
			    System.out.println(query);
			    stmt.executeUpdate(query);			    
				con.close();
				return "success";
			}
			catch(Exception e){
				return "error";
			}	
		}
		else{
			return "input";
		}
		
	}
	public boolean validate(Student student){
		if("".equals(student.getRoll()) || "".equals(student.getName()) || "".equals(student.getCourse())||"".equals(student.getCity()))
			return false;
		else
			return true;
		
	}
}
