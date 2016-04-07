package com.kogent.struts.action;
import javax.servlet.http.*;

import com.kogent.struts.security.SecurityService;
import com.kogent.struts.security.SecurityServiceImpl;
import com.kogent.struts.security.User;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;

public class LogoutAction extends ActionSupport implements ServletRequestAware{

	private HttpServletRequest request;	
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;		
	}
	public String execute() throws Exception {	   
		HttpSession session = request.getSession();
		session.invalidate();
		return SUCCESS;					
	}	
}
