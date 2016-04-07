<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
  <head>
    <title>Personal Info.</title>
    <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>
  <body>
	<h2><s:text name="app.welcome"/></h2>
	Your Name: <b><s:property value="username"/></b><br><br>
	Your City: <b><s:property value="city"/></b><br><br>
	<s:a href="index.jsp">Back</s:a>	
 </body>
</html>
