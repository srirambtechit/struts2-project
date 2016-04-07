<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
       <title>Struts Security-Adding Employee</title>
	   <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>
  <body> 
  		<h2>Add Employee</h2>    
  		<s:actionerror/>
		<s:form action="addEmployee">  
		<s:textfield name="employeename" label="Employee Name"/>
		<s:textfield name="department" label="Department"/>
		<s:textfield name="company" label="Company"/>
		<s:submit value="Add Employee"/>  
		</s:form>
		<s:url id="logout" action="logoutAction"/>
		<s:a href="%{logout}">| Logout</s:a>
		<s:a href="index.jsp">| Home |</s:a>
  </body>
</html>