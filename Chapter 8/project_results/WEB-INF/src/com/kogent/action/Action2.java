package com.kogent.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.Action;

public class Action2 implements Action, ServletRequestAware{
	
	HttpServletRequest request;
	
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;		
	}
	
	public String execute() throws Exception {
		
		System.out.println("Action2.execute() running...");
		
		request.setAttribute("company", "Kogent Solutions Inc.");		
		return SUCCESS;
	}
}
