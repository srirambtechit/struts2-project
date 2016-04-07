package com.kogent.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class ModelAction extends ActionSupport implements ModelDriven, Preparable{

	private Student student;	
	
	public Object getModel(){
		return student;
	}	
	public void prepare(){
		student=new Student();
	}		
	public String execute() throws Exception {

		if(student.getPassword().length()>=6)
			return SUCCESS;
		else{
			this.addActionError(getText("app.invalid.password.length"));
			return ERROR;
		}			
	}	
	public void validate() {
		if ((student.getRollno()== 0) ) {
			this.addFieldError("rollno", getText("app.rollno.blank"));
		}
		if ( (student.getName() == null ) || (student.getName().length() == 0) ) {
			this.addFieldError("name", getText("app.name.blank"));
		}
		if ( (student.getPassword() == null ) || (student.getPassword().length() == 0) ) {
			this.addFieldError("password", getText("app.password.blank"));
		}
	}		
}