package com.kogent.action;

public class Message {
    private String name;
    private String email;
    private String message;    

    public String getEmail() {
        return email;
    }

    public String getMessage() {
        return message;
    }

    public String getName() {
        return name;
    }

	public void setEmail(String email) {
		this.email = email;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void setName(String name) {
		this.name = name;
	}
}