package com.kogent.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.kogent.OrderItem;
import com.opensymphony.xwork2.ActionSupport;

public class OrderAction extends ActionSupport implements RequestAware, SessionAware{
	
	int prodid;
	String name;
	double price;
	int unit;
	double subtotal;
	
	Map request=null;
	Map session=null;
	
				
	public void setRequest(Map map) {
		request=map;		
	}
	public void setSession(Map map) {
		this.session=map;		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getProdid() {
		return prodid;
	}
	public void setProdid(int prodid) {
		this.prodid = prodid;
	}
	public int getUnit() {
		return unit;
	}
	public void setUnit(int unit) {
		this.unit = unit;
	}
	public String addToCart(){			
		ArrayList<OrderItem> orderitems=(ArrayList<OrderItem>)session.get("orderitems");
		if(orderitems==null){
			orderitems=new ArrayList<OrderItem>();
		}
		OrderItem newItem=new OrderItem();
		newItem.setProdid(prodid);
		newItem.setName(name);
		newItem.setPrice(price);
		newItem.setUnit(unit);
		
		orderitems.add(newItem);
		System.out.println("Item name:"+newItem.getName());
		session.put("orderitems", orderitems);
		return SUCCESS;
	}
	public String deleteFromCart(){
		ArrayList<OrderItem> orderitems=(ArrayList<OrderItem>)session.get("orderitems");
		int i=0;
		for(OrderItem obj:orderitems){
			if(obj.getProdid()==this.prodid){
				break;
			}
			i++;
		}
		orderitems.remove(i);
		session.put("orderitems", orderitems);
		return SUCCESS;
	}
}
