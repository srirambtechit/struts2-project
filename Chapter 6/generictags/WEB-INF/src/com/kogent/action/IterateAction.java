package com.kogent.action;

import com.opensymphony.xwork2.ActionSupport;
import java.util.*;

public class IterateAction extends ActionSupport{
	ArrayList<String> fruits;
	ArrayList<String> cities;
	ArrayList<String> colors;
		
	public ArrayList<String> getCities() {
		return cities;
	}
	public ArrayList<String> getColors() {
		return colors;
	}
	public ArrayList<String> getFruits() {
		return fruits;
	}
	public String execute(){
		fruits=new ArrayList<String>();
		cities=new ArrayList<String>();
		colors=new ArrayList<String>();
		fruits.add("Apple");
		fruits.add("Mango");
		fruits.add("Orange");
		
		cities.add("Delhi");
		cities.add("Mumbai");
		cities.add("Pune");
		
		colors.add("Red");
		colors.add("Green");
		colors.add("Blue");
		
		return SUCCESS;
	}
}
