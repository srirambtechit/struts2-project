package com.kogent.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.*;

public class AddAction extends ActionSupport implements SessionAware{

  	private String name;
    private String email;
    private String message;   
        	    
	private Map session;	        
    public void setSession(Map session)	{
		this.session = session;
	}
    
    public Map getSession(){
		return session;
	}	    
    public String getEmail() {
        return email;
    }
    public String getMessage() {
        return message;
    }
    public String getName() {
        return name;
    }
    public void setEmail(String email){
    	this.email = email;
    }
    public void setMessage(String message) {
    	this.message = message;
    }
    public void setName(String name) {
    	this.name = name;
    }
    public String execute()throws Exception{
    	ArrayList messages=null;
    	Message mess = new Message();
	    mess.setName(name);
	    mess.setEmail(email);
	    mess.setMessage(message);
	    messages=(ArrayList)session.get("messages");
	    if(messages==null)
	     	messages=new ArrayList();
	    messages.add(mess);        
		session.put("messages", messages);			
	    return SUCCESS;
    }
}