package com.kogent.action;

import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LogoutAction {

	public String execute() throws Exception {

		ActionContext ctx = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) ctx
				.get(ServletActionContext.HTTP_REQUEST);
		HttpSession session = request.getSession();
		session.removeAttribute("user");

		return "success";
	}

}
