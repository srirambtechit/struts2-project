package com.kogent;

import java.util.ArrayList;

public class Order{
	int orderid;
	String cname;
	long cardno;
	ArrayList<OrderItem> orderitems;
	public long getCardno() {
		return cardno;
	}
	public void setCardno(long cardno) {
		this.cardno = cardno;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public ArrayList<OrderItem> getOrderitems() {
		return orderitems;
	}
	public void setOrderitems(ArrayList<OrderItem> orderitems) {
		this.orderitems = orderitems;
	}	
	public double getTotal(){
		double amount=0.0;
		for(OrderItem item:orderitems)
			amount+=item.getSubtotal();
		
		return amount;
	}
}
