package com.kogent;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

public class FirstAction extends Action {
	public ActionForward execute(ActionMapping mapping, 
			ActionForm form, 
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		String result=null;		
		ActionMessages errors=new ActionMessages();
		FirstForm person=(FirstForm)form;
		String name=person.getUsername();
		
		if("kogent".equals(name)){
			request.setAttribute("name",name);
			result="success";
		}
		else{
			errors.add("invalid", new ActionMessage("app.invalid"));
			saveErrors(request,errors);			
			result="failure";
		}
		return mapping.findForward(result);	
	}	
}
