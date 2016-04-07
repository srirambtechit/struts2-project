package com.kogent.servlet;


import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kogent.model.Model;

public class GetStudents extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher rd=null;
		Model model=new Model();
		ArrayList students=model.getStudents();
		
		if(students!=null){
			request.setAttribute("students", students);
			rd=request.getRequestDispatcher("students.jsp");				
		}
		else{
			rd=request.getRequestDispatcher("index.jsp?message=Some Database Error occured.");		
		}		
		rd.forward(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		doGet(request, response);		
		
	}		
}


	

