package com.kogent.action;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	private String username;
	private String password;
	
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
		if(username.equals(password))
			return SUCCESS;
		else{
			this.addActionError(getText("app.invalid"));
			return ERROR;
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
