<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html locale="true">
<head><title><bean:message key="app.title"/></title>
<link rel="stylesheet" href="mystyle.css" type="text/css" />
</head>
 <body>
 <div align=center>
 	<h2><bean:message key="app.welcome"/></h2><br><br>
 	<a href="login.jsp">L o g i n</a>
 </div>
 </body>
</html:html>

