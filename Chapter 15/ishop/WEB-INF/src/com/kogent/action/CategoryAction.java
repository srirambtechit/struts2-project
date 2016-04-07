package com.kogent.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.kogent.Category;
import com.kogent.CategoryDB;
import com.opensymphony.xwork2.ActionSupport;

public class CategoryAction extends ActionSupport implements RequestAware {

	int catid;
	String catname;
	Map request=null;
	Map categories;

	public void setRequest(Map map) {
		request=map;
	}
	public int getCatid() {
		return catid;
	}
	public void setCatid(int catid) {
		this.catid = catid;
	}
	public String getCatname() {
		return catname;
	}
	public void setCatname(String catname) {
		this.catname = catname;
	}
	
		
	public void setCategories(Map categories) {
		this.categories = categories;
	}
	public String add() throws Exception {
		CategoryDB catDb=new CategoryDB();
		
		int i=catDb.addCategory(catid, catname);
		if(i==1){
			return SUCCESS;		
		}else{
			this.addActionError(getText("app.invalid"));
			return ERROR;
		}
	}
	public String getCategories() throws Exception {
		ArrayList<Category> categories=null;
		CategoryDB catDb=new CategoryDB();
		categories=catDb.getCategories();
		if(categories!=null){
			request.put("categories", categories);
		}
		return SUCCESS;
	}
	
	public String delete() throws Exception{
		CategoryDB catDb=new CategoryDB();
		int i=catDb.deleteCategory(catid);
		getCategories();
		return SUCCESS;
	}
	public void validate() {
		
	}

}
