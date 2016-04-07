package com.kogent.results;

import com.opensymphony.xwork2.Result;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Action;
import java.lang.reflect.Method;
public class MyResult implements Result{
	
	public static final String DEFAULT_PARAM = "property";
	
	String property;
	
	public void execute(ActionInvocation invocation) throws Exception {
		
		String resultCode = invocation.getResultCode();
		System.out.println("Result code: " + resultCode);
		
		Action action = (Action)invocation.getAction();
		
		String methodName = "get" +	property.substring(0, 1).toUpperCase() + property.substring(1);
		System.out.println(methodName);
		
		Method method = action.getClass().getMethod(methodName, new Class[0]);
		
		Object o = method.invoke(action, new Object[0]);
		
		System.out.println(property + ": " + o);
	   }
	
	   public void setProperty(String property) 
	   {
  	   	this.property = property;
	   }
}
