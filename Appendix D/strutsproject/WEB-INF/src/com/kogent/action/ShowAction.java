package com.kogent.action;
import org.apache.struts2.config.Result;
import org.apache.struts2.config.Results;
import org.apache.struts2.dispatcher.ServletDispatcherResult;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.*;

@Results({
@Result( name="success", value="/user_success.jsp", type=ServletDispatcherResult.class),
@Result( name="input", value="/user.jsp", type=ServletDispatcherResult.class)
})
public class ShowAction extends ActionSupport{  
	String name;
	int age;
	
	@IntRangeFieldValidator(type = ValidatorType.FIELD,min="10", max="30", message = "Allowed Age is between 10 and 30.")
	public void setAge(int age) {
		this.age = age;
	}
	
	public int getAge() {
		return age;
	}
	
	@RequiredStringValidator(type = ValidatorType.FIELD, message = "Name field can't be empty.")
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
		
	public String execute(){
		return "success";
	}    
}
