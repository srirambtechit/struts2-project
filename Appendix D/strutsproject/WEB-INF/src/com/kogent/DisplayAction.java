package com.kogent;

import com.opensymphony.xwork2.ActionSupport;
public class DisplayAction extends ActionSupport {
 
    private String username;
	private String city;	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String execute() throws Exception {
		if("".equals(username))
			username="Blank";
		if("".equals(city))
			city="Blank";
		return SUCCESS;
	}
}
