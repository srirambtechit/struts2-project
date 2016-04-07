<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html>
<head>
	<title>Basic Validation Successfull</title>
	<link rel="stylesheet" href="mystyle.css" type="text/css" />
</head>
<body>
	<p>Thank you, <b><s:property value="name"/></b>.</p>
	<p>You Entered following Details:</p>
	<ul>
	  <li>Name:  <s:property value="name" /></li>
	  <li>Age: <s:property value="age" /></li>
	  <li>Nationality: <s:property value="nation" /></li>  
	</ul>
	| <s:a href="index.jsp">Home</s:a> |
</body>
</html>