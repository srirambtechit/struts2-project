<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
       <title>Struts Security</title>
	   <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>
  <body> 
 	<br>
 	<s:actionerror/>
 	<s:actionmessage/>
	<h2>A Secure Application</h2> 	
	Welcome, <s:property value="#session['User'].username" default="Guest"/>!   <br><br>
	<s:url id="addemp" action="addEmployeeAction"/>
	<s:a href="%{addemp}" >Add Employee</s:a><br><br>
	<s:set name="user" value="#session['User']"/>
	<s:if test="${user==null}">
	<s:a href="login.jsp">Login</s:a>	
	</s:if>
	<s:else>
		<s:url id="logout" action="logoutAction"/>
		<s:a href="%{logout}">Logout</s:a>
	</s:else>
</body>
</html>