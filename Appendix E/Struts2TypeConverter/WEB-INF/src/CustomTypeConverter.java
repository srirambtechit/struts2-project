package com.kogent;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.kogent.Square;
import com.opensymphony.xwork2.ActionSupport;

public class CustomTypeConverter extends ActionSupport {

	public String execute(){		
		System.out.println("Square = " + square.getEdge() );		
		return SUCCESS;
	}	
	
	/* Square Property */
	
	private Square square;
		
	public Square getSquare() {
		return square;
	}

	public void setSquare(Square square) {
		this.square= square;
	}	
	
	
}
