package com.kogent;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.kogent.EmployeeForm;

public class AddEmployeeAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String result="success";
		HttpSession session=request.getSession();		
		EmployeeForm employeeForm = (EmployeeForm) form;
		
		ArrayList employees=addEmployee(request, employeeForm);
		
		if(employees!=null && employees.size()>0)
			session.setAttribute("employees",employees);
		
		return mapping.findForward(result);		
	}
	
	ArrayList addEmployee(HttpServletRequest request, EmployeeForm emp){
		boolean flag=true;
		ArrayList employees = (ArrayList)request.getSession().getAttribute("employees");
		
		if(employees==null)
			employees=new ArrayList();
		
		EmployeeBean bean=new EmployeeBean();
		bean.setEmpid(emp.getEmpid());
		bean.setEmpname(emp.getEmpname());
		bean.setDepartment(emp.getDepartment());
		bean.setCity(emp.getCity());
		bean.setEmail(emp.getEmail());
		for(int i=0;i<employees.size();i++){
			EmployeeBean bean1=(EmployeeBean)employees.get(i);
			if(bean1.getEmpid().equals(bean.getEmpid())){
				flag=false;
				break;
			}				
		}
		if(flag)
		employees.add(bean);	
		return employees;		
	}	
}