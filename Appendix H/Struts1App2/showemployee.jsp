<%@ page language="java" import="java.util.*;" contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<html:html> 
    <head>
		<link rel="stylesheet" href="mystyle.css" type="text/css" />
		<title><bean:message key="app.title"/></title>
	</head>
    <body>
	<h2><bean:message key="app.welcome"/></h2>	
	<logic:present name="employees" scope="session">
	<table cellspacing="0" cellpadding="5" >
	<tr bgcolor="#dcf0fc">
	<td><bean:message key="prompt.empid"/></td>
	<td><bean:message key="prompt.name"/></td>
	<td><bean:message key="prompt.deptarment"/></td>
	<td><bean:message key="prompt.city"/></td>
	<td><bean:message key="prompt.email"/></td>
	</tr>	
	<logic:iterate id="employee" name="employees">
	<tr>
	<td><bean:write name="employee" property="empid"/></td>
	<td><bean:write name="employee" property="empname"/></td>
	<td><bean:write name="employee" property="department"/></td>
	<td><bean:write name="employee" property="city"/></td>
	<td><bean:write name="employee" property="email"/></td>
	</tr>
	</logic:iterate>		
	</table>
	</logic:present>
	<br><br><html:link href="index.jsp">Back</html:link>
	</body>
</html:html>
