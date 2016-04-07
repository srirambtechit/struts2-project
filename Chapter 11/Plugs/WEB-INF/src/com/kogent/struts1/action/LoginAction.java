package com.kogent.struts1.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.kogent.struts1.form.LoginForm;


public class LoginAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		ActionErrors errors=new ActionErrors();
		LoginForm loginForm = (LoginForm) form;
		if("kogent".equals(loginForm.getUsername()) && "kogent".equals(loginForm.getPassword()))
			return mapping.findForward("success");
		else{
			return mapping.findForward("error");
		}			
	}
}