<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html> 
    <head>
		<title><bean:message key="app.title"/></title>
		<link rel="stylesheet" href="mystyle.css" type="text/css" />
	</head>
    <body>
	<h2><bean:message key="app.welcome"/></h2>
	<html:link href="addemployee.jsp">Add Employee</html:link>
	<br> (Using EmployeeForm as ActionForm, AddEmployeeAction as Action)
	<br><br><html:link href="showemployee.jsp">Show All Employees</html:link>
	<br><br><html:link href="addstudent.jsp">Student Info</html:link>
	<br> (Using DynaActionForm, AddStudentAction as Action)
	<br><br><html:link href="login.jsp">Login Form</html:link>
	<br> (Using Validator Framework, ValidatorForm)
	<br><br><html:link href="login_tiles.jsp">Login and Registration</html:link>
	<br> (Using Tiles Framework)
	</body>
</html:html>
