package com.kogent.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.kogent.Order;
import com.kogent.OrderDB;
import com.kogent.OrderItem;
import com.opensymphony.xwork2.ActionSupport;

public class PlaceOrderAction extends ActionSupport implements SessionAware
{
	int orderid;
	String custname;
	long cardno;
	ArrayList<OrderItem> orderitems;
	
	Map session;
	
	public long getCardno() {
		return cardno;
	}
	public void setCardno(long cardno) {
		this.cardno = cardno;
	}
	public String getCustname() {
		return custname;
	}
	public void setCustname(String custname) {
		this.custname = custname;
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
	public void setSession(Map map) {
		this.session=map;	
	}
	public String execute(){
		ArrayList<OrderItem> orderitems=(ArrayList<OrderItem>)session.get("orderitems");
		this.setOrderitems(orderitems);
		OrderDB orderDb=new OrderDB();
		int i=orderDb.addOrder(orderid, custname, cardno, orderitems);
		if(i==1){
			Order order=new Order();
			order.setOrderid(orderid);
			order.setCname(custname);
			order.setCardno(cardno);
			order.setOrderitems(orderitems);
			session.put("order", order);			
			session.remove("orderitems");
		}
		return SUCCESS;
	}
}
