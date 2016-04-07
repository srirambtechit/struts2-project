package com.kogent.action;

import java.util.ArrayList;
import java.util.Map;

import javax.rmi.CORBA.Stub;

import org.apache.struts2.interceptor.RequestAware;

import com.kogent.Category;
import com.kogent.CategoryDB;
import com.kogent.Product;
import com.kogent.ProductDB;
import com.opensymphony.xwork2.ActionSupport;

public class ProductAction extends ActionSupport implements RequestAware {

	int prodid;
	int catid;
	String name;
	String desc;
	double price;
	Map request=null;
	
	public void setRequest(Map map) {
		request=map;
	}
	public int getCatid() {
		return catid;
	}
	public void setCatid(int catid) {
		this.catid = catid;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
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
	public String add() throws Exception {
		ProductDB prodDb=new ProductDB();
		CategoryDB catDb=new CategoryDB();
		System.out.println("before db method");
		System.out.println("Hello!"+prodid+catid+name+desc+price);
		int i=prodDb.addProduct(prodid, catid, name, desc, price);
		System.out.println("after db method");
		if(i==1){
			request.put("products", prodDb.getProducts(catid));
			request.put("categories", catDb.getCategories());
			request.put("catid", catid);
			return SUCCESS;		
		}else{
			this.addActionError(getText("app.invalidproduct"));
			System.out.println("returning error");
			return ERROR;
		}
	}
	public String getProducts() throws Exception {
		ArrayList<Product> products=null;
		ProductDB prodDb=new ProductDB();
		System.out.println("category id"+catid);
		products=prodDb.getProducts(catid);
		if(products!=null){
			System.out.println("setting products");
			request.put("products", products);
		}
		CategoryDB catDb=new CategoryDB();
		request.put("categories", catDb.getCategories());
		request.put("catid", catid);
		return SUCCESS;
	}
	
	public String delete() throws Exception{
		ProductDB prodDb=new ProductDB();
		int i=prodDb.deleteProduct(prodid);
		getProducts();
		return SUCCESS;
	}
	
	public String getProduct(){
		ProductDB prodDb=new ProductDB();
		Product product=prodDb.getProduct(prodid);
		this.setProdid(product.getProdid());
		this.setCatid(product.getCatid());
		this.setName(product.getName());
		this.setDesc(product.getDesc());
		this.setPrice(product.getPrice());
		return SUCCESS;
	}
	public void validate() {
		
	}
}
