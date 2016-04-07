
package com.kogent.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kogent.bean.Student;
import com.kogent.model.Model;


public class AddStudent extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Student student=new Student();
		student.setRoll(request.getParameter("roll"));
		student.setName(request.getParameter("name"));
		student.setCourse(request.getParameter("course"));
		student.setCity(request.getParameter("city"));
		
		RequestDispatcher rd=null;
		String message="";
		Model model=new Model();
		
		String result=model.addStudent(student);
		
		if("success".equals(result)){
			message="Student Added Successfully.";
			rd=request.getRequestDispatcher("/getStudents?message="+message);
		}
		else if("input".equals(result)){
			message="Some fields are Blank.";
			rd=request.getRequestDispatcher("addstudent.jsp?message="+message);
		}
		else if ("error".equals(result)){
			message="Some Database Exception occured.";
			rd=request.getRequestDispatcher("addstudent.jsp?message="+message);
		}				
		rd.forward(request, response);
	}
}
