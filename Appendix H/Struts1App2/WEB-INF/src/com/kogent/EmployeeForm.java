package com.kogent;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
public class EmployeeForm extends ActionForm {
	
	private String empid;
	private String empname;	
	private String email;	
	private String city;	
	private String department;
		
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public String getEmpname(){
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		ActionErrors error=new ActionErrors();
		
		if("".equals(empid)){
			error.add("empid", new ActionMessage("app.required"));
		}
		if("".equals(empname)){
			error.add("empname", new ActionMessage("app.required"));
		}
		if("".equals(department)){
			error.add("department", new ActionMessage("app.required"));
		}		
		if("".equals(email)){
			error.add("email", new ActionMessage("app.required"));
		}
		return error;
	}
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		empname="";
		department="";
		city="";
		email="";
	}
}