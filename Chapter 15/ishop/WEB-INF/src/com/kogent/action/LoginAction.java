package com.kogent.action;

import com.kogent.UserDB;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	
	String loginid;
	String password;
	
	public String getLoginid() {
		return loginid;
	}
	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String execute() throws Exception {
		UserDB userDb=new UserDB();
		boolean valid=false;
		valid=userDb.isValidUser(loginid, password);
		if(valid){
			return SUCCESS;			
		}else{
			this.addActionError(getText("app.invalid"));
			return ERROR;
		}
	}
	public void validate() {
		if ( (loginid == null ) || (loginid.length() == 0) ) {
			this.addFieldError("loginid", getText("app.loginid.blank"));
		}
		if ( (password == null ) || (password.length() == 0) ) {
			this.addFieldError("password", getText("app.password.blank"));
		}
	}
}
