<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>An MVC Project</title>
		<link rel="stylesheet" href="mystyle.css" type="text/css" />
	</head>
	<body>
		<h2>An MVC Project</h2>
		<c:if test="${param.message!=null}">
			<div class='boldred'>${param.message}</div>
		</c:if>
		<br>
		<a href="addstudent.jsp">Add Student</a>
		<br><br>
		<a href="getStudents">View Students</a>
		<br><br>
		<a href="search.jsp">Edit Student</a>
	</body>
</html>
