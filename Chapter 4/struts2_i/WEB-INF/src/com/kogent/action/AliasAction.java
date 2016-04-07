package com.kogent.action;
import com.opensymphony.xwork2.ActionSupport;
public class AliasAction extends ActionSupport {
	private String loginid;
	private String password;
	
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
		System.out.println("Login Id: "+getLoginid());
		System.out.println("Password: "+getPassword());
		if(loginid.equals(password))
			return SUCCESS;
		else{
			this.addActionError(getText("app.invalid"));
			return ERROR;
		}			
	}		
}