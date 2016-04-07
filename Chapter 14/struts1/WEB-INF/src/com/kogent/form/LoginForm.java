package com.kogent.form;
import org.apache.struts.action.*;
import javax.servlet.http.*;
public class LoginForm extends ActionForm {
	
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
	
	public ActionErrors validate(ActionMapping mapping,
		HttpServletRequest request) {
	ActionErrors errors = new ActionErrors();
	if ( (username == null ) || (username.length() == 0) ) {
		errors.add("username", new ActionMessage("app.username.blank"));
	}
	if ( (password == null ) || (password.length() == 0) ) {
		errors.add("password", new ActionMessage("app.password.blank"));
	}
		return errors;
	}
}
