package com.kogent.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport implements SessionAware{
	
	Map session;
	public void setSession(Map session) {
		this.session=session;		
	}
	public String execute() throws Exception {
		ArrayList messages=(ArrayList)session.get("messages");
		if(messages==null){
			messages=new ArrayList();
		}
		session.put("messages", messages );
		return SUCCESS;
	}	
}