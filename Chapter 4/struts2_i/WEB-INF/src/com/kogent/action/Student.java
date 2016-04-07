package com.kogent.action;
public class Student{	
	private int rollno;
	private String name;
	private String password;
	private String course;
	private String city;	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}	
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getRollno() {
		return rollno;
	}
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}	
}