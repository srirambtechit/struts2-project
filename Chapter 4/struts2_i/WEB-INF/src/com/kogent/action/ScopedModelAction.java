package com.kogent.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.ScopedModelDriven;

public class ScopedModelAction extends ActionSupport implements ScopedModelDriven{

	private Student student;
	private String key;
		
	public Object getModel(){
		System.out.println("getting model.");
		return student;
	}	

	public String getScopeKey() {
		System.out.println("getting key.");
		return key;		
	}
	
	public void setModel(Object obj) {
		System.out.println("setting model: "+obj.toString());
		this.student=(Student)obj;		
	}
	
	public void setScopeKey(String key) {
		System.out.println("setting key: "+key);		
		this.key=key;		
	}		
	
	public String execute() throws Exception {
		System.out.println("executing");
		student.setName(student.getName().toUpperCase());
		student.setPassword(student.getPassword().toUpperCase());
		student.setCourse(student.getCourse().toUpperCase());
		student.setCity(student.getCity().toUpperCase());
		return SUCCESS;					
	}
}