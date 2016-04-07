<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
  <head>
    <title>Validation Using Annotation - Login Successful!</title>
	<link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>
  <body>
	<h3>Login Successful!</h3>	
	Thanks, <b><s:property value="username"/></b>.
	<br><br>
	<a href="register.jsp">Register as New User</a>	
  </body>  
</html>