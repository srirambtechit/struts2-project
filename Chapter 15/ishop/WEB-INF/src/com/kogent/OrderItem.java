package com.kogent;

public class OrderItem {
	int prodid;
	String name;
	double price;
	int unit;
	double subtotal;
		
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
	public double getSubtotal(){
		return this.unit*this.price;	
	}
}
