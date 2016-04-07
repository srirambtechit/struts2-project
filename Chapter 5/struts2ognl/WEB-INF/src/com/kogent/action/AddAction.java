package com.kogent.action;

import java.util.ArrayList;
import java.util.Map;
import javax.servlet.http.*;
import org.apache.struts2.interceptor.*;
import com.opensymphony.xwork2.ActionSupport;

import com.kogent.bean.Product;

public class AddAction extends ActionSupport implements ServletRequestAware,
		SessionAware {
	private HttpServletRequest request;

	private String productname;

	private Map session;

	private int quantity;

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public Map getSession() {
		return session;
	}

	public HttpServletRequest getServletRequest() {
		return request;
	}

	public String execute() throws Exception {
		if(productname.equals("None")){
			this.addActionError("Select an item!");
			return ERROR;
		}
			
		ArrayList beans = null;
		Product bean = new Product();
		bean.setProductname(productname);
		bean.setQuantity(quantity);
		
		beans = (ArrayList) session.get("beans");
		if (beans == null)
			beans = new ArrayList();
		beans.add(bean);
		session.put("beans", beans);
		request.setAttribute("bean", bean);
		return SUCCESS;
	}
}
