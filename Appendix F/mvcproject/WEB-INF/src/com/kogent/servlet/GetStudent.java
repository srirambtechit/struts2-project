package com.kogent.servlet;


import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kogent.bean.Student;
import com.kogent.model.Model;

public class GetStudent extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String roll=request.getParameter("roll");
		Model model=new Model();
		Student student=model.getStudent(roll);
		
		RequestDispatcher rd=null;
		if(student!=null){
			request.setAttribute("student", student);
			rd=request.getRequestDispatcher("editstudent.jsp");	
		}
		else{
			
			rd=request.getRequestDispatcher("search.jsp?message=Roll No. not found.");
		}	
			rd.forward(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		doGet(request, response);		
		
	}		
}


	

