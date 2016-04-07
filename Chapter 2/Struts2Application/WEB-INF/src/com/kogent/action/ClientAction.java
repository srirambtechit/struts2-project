package com.kogent.action;
import com.opensymphony.xwork2.ActionSupport;

public class ClientAction extends ActionSupport{
	
	String name;
	int age;
	int salary;
	
	public String getName(){
     		return name;
	}
	
	public void setName(String name){
		this.name = name;
	}
	public int getAge(){
		return age;
	}
	public void setAge(int age){
     		this.age = age;
	}
	public int getSalary(){
		return salary;
	}
	public void setSalary(int salary){
		this.salary = salary;
	}
	public String execute() throws Exception{
		if(getName().equals("") || getName()== null || getAge()== 0 || getSalary()== 0){
		       	return ERROR;
	        }
		else{
			return SUCCESS;
		}
	}
}
