package com.kogent;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class FirstForm extends ActionForm {
	String username;

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}	
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		this.username="";		
	}	
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		ActionErrors error=new ActionErrors();		
		if(username==null || username.length()==0){
			error.add("username", new ActionMessage("app.name.blank"));			
		}
		return error;		
	}
}
