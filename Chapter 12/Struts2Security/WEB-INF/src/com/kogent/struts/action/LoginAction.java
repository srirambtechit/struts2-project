package com.kogent.struts.action;

import javax.servlet.http.*;
import com.kogent.struts.security.SecurityService;
import com.kogent.struts.security.SecurityServiceImpl;
import com.kogent.struts.security.User;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;

public class LoginAction extends ActionSupport implements ServletRequestAware{

	private String username;
	private String password;
	private HttpServletRequest request;
	
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;		
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String execute() throws Exception {
	   
		HttpSession session = request.getSession();
		SecurityService service = new SecurityServiceImpl();
		try {
			User user = service.authenticate(username, password);
			session.setAttribute("User", user);
			this.addActionMessage("You have Successfully Logged in.");
			return SUCCESS;
		} catch (Exception e) {
			this.addActionError(e.getMessage());
			return LOGIN;
		}				
	}
	
	public void validate() {
		if ( (username == null ) || (username.length() == 0) ) {
		this.addFieldError("username", getText("app.username.blank"));
		}
		if ( (password == null ) || (password.length() == 0) ) {
		this.addFieldError("password", getText("app.password.blank"));
		}
	}		
}
