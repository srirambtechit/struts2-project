<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>
	<head>
		<title><bean:message key="app.title"/></title>
		<link rel="stylesheet" href="mystyle.css" type="text/css" />
	</head>
	<body>
	<h2><bean:message key="app.welcome"/></h2>
		Hello <bean:write name="name" scope="request"/> !<br><br>
	<html:link href="index.jsp">Back</html:link>
	</body>
</html:html>
