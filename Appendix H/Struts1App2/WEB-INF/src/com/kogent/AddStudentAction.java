package com.kogent;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.action.DynaActionForm;
public class AddStudentAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		ActionMessages errors=new ActionMessages();
		
		String result="success";		
		DynaActionForm student=(DynaActionForm)form;
		Integer rollno=(Integer)student.get("rollno");
		String name=(String)student.get("name");
		String course=(String)student.get("course");
		if(rollno==0){
			errors.add("rollno", new ActionMessage("app.required"));
			result="error";			
		}
		if("".equals(name)){
			errors.add("name", new ActionMessage("app.required"));
			result="error";	
		}
		if("".equals(course)){
			errors.add("course", new ActionMessage("app.required"));
			result="error";	
		}
		saveErrors(request, errors);
		return mapping.findForward(result);		
	}	
}