package com.kogent.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

import com.kogent.User;
public class LoginAction extends ActionSupport implements ApplicationAware, SessionAware{
	
	String username;
	String password;
	
	Map session;	
	Map application;
	
	public void setSession(Map session) {
		this.session=session;		
	}
	public void setApplication(Map application) {
		this.application=application;		
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}	
	public String execute() throws Exception {
		boolean found=false;
		ArrayList users=(ArrayList)application.get("users");
		if(users!=null){
			Iterator it=users.iterator();
			while(it.hasNext()){
				User user=(User)it.next();
				if(username.equals(user.getUsername()) && password.equals(user.getPassword())){
					found=true;
					session.put("user", username);
					break;
				}
			}
			if(found){
				return SUCCESS;
			}
		}
		this.addActionError("Invalid User Name or Password");
		return ERROR;		
	}
}
