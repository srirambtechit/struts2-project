<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
       <title>Struts Security</title>
	   <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>
  <body> 
		<s:actionerror/><br>
		
  		<h3>Login!</h3>    
		<s:form action="loginAction">  
		<s:textfield name="username" label="User Name"/>
		<s:password name="password" label="Password"/>		
		<s:submit/>  
		</s:form>
</body>
</html>