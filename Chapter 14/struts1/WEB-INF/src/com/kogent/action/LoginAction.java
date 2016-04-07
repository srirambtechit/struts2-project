package com.kogent.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

import com.kogent.form.LoginForm;

public class LoginAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		ActionMessages messages=new ActionMessages();
		LoginForm loginForm = (LoginForm) form;
		if(loginForm.getUsername().equals(loginForm.getPassword()))
			return mapping.findForward("success");
		else{
			messages.add("invalid", new ActionMessage("app.invalid"));
			saveErrors(request, messages);
			return mapping.findForward("failure");
		}			
		
	}
}
