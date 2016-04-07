package com.kogent.action;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ServletAction extends ActionSupport implements ServletRequestAware, SessionAware{
	
	HttpServletRequest request;
	Map<String, Object> session_map;
		
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;		
	}
	public void setSession(Map map) {
			this.session_map=map;		
	}	
	public String execute() throws Exception {
			
		//Setting request attribute.
		request.setAttribute("interceptor", "ServletConfigInterceptor");
		request.setAttribute("action", "ServletAction");
		
		Student student=new Student();
		student.setRollno(101);
		student.setName("Steve");
		student.setPassword("steve123");
		student.setCourse("B.Tech");
		student.setCity("London");		
				
		//Setting session attributes.
		session_map.put("username", "Prakash");
		session_map.put("company", "Kogent Solutions Inc.");
		session_map.put("student", student);
		
		return SUCCESS;
	}
	
}
