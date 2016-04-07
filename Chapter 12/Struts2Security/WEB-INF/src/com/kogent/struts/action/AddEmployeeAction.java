package com.kogent.struts.action;
import javax.servlet.http.*;

import com.kogent.struts.security.User;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;

public class AddEmployeeAction extends ActionSupport implements ServletRequestAware{

	private HttpServletRequest request;
	
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;		
	}	
	
	public String execute() throws Exception {
	   HttpSession session = request.getSession();
	   User user=(User)session.getAttribute("User");
	   if(user!=null){
		   if(user.isAdministrator())
			   return SUCCESS;
		   else{
			   this.addActionError("You are not authorised for this action.");
			   return LOGIN;
		   }
	   }
	   else{
		   this.addActionError("You must be Logged in.");
		   return LOGIN;
	   }  					
	}	
	public String addEmployee(){
		//Implement code for adding new Employee Here. 
		this.addActionMessage("Employee Added Successfully.");
		return SUCCESS;
	}
}
