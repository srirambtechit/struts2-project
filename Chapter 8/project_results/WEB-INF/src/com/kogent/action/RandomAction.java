package com.kogent.action;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Random;

public class RandomAction extends ActionSupport {

	private String pr1;
	private String pr2;
	private String pr3;
	
	
	public String execute() throws Exception{
		
		int random = new Random().nextInt(100);
		pr1 = "pr1-" + random;
		pr2 = "pr2-" + random;
		pr3 = "pr3-" + random;
		if (random <= 33) {
		  return SUCCESS;
   	    } else if (random <= 66) {
		  return ERROR;
	    } else {
		  return INPUT;
	    }
	}
	
	public void setPr1(String pr1)
	{
		this.pr1= pr1;
	}
	public String getPr1()
	{
		return this.pr1;
	}
	public void setPr2(String pr2)
	{
		this.pr2= pr2;
	}
	public String getPr2()
	{
		return this.pr2;
	}
	public void setPr3(String pr3)
	{
		this.pr3= pr3;
	}
	public String getPr3()
	{
		return this.pr3;
	}

}
