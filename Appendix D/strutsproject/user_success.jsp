<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
  <head>
    <title>User Info.</title>
    <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>
  <body>
	<h2>User Information</h2>
	Your Name: <b><s:property value="name"/></b><br><br>
	You are <b><s:property value="age"/></b> years old.<br><br>
	<s:a href="user.jsp">Back</s:a>	
 </body>
</html>
