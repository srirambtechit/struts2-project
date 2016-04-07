package com.kogent.action;

import com.opensymphony.xwork2.ActionSupport;
public class CityAction extends ActionSupport{
	String city;
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String execute(){
		return SUCCESS;
	}
}
