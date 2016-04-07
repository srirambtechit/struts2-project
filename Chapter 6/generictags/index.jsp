<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title><s:text name="app.title"/></title>
<link rel="stylesheet" href="mystyle.css" type="text/css" />
</head>
<body>
	<div align="center">
 		<h2><s:text name="app.welcome"/></h2>
 	<br><hr>
 </div>
 <s:date name="new java.util.Date()" format="%{getText('app.date.format')}"/>
 <br><br>
 <s:a href="yourcity.jsp">Using if, elseif and else tag</s:a>
 <br><br>
 <s:url id="url" action="iterateAction"/>
 <s:a href="%{url}">Iteration</s:a>
 <br><br>
 <s:a href="person.jsp">User Info</s:a>
</body>
</html>



