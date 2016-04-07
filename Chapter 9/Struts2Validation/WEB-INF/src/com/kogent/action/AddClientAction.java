package com.kogent.action;
import com.opensymphony.xwork2.ActionSupport;

public class AddClientAction extends ActionSupport {
    String name;
    int age;
    String nation;

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public String getNation() {
        return nation;
    }
    public void setNation(String nation) {
        this.nation = nation;
    }	
	public String execute() throws Exception {
		
		//Logic for adding new client.
		return SUCCESS;
	}    
}
