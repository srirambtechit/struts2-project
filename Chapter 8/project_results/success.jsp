<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title><s:text name="app.title"/></title>
<link rel="stylesheet" href="mystyle.css" type="text/css" />
</head>
 <body> 
 <h2><s:property value="message" default="Not Set"/></h2>
 <br> <br>Name: <s:property value="#request.name" default="Not Set"/>
 <br> <br>Company: <s:property value="#request.company" default="Not Set"/>  
 </body>
</html>
