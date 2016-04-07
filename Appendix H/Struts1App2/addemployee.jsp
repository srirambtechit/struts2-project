<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   		<title><bean:message key="app.title"/></title>
		<link rel="stylesheet" href="mystyle.css" type="text/css"/>
  </head>
  <body>
  <h2>New Employee</h2>
	<html:form action="addEmployee" method="post">
	<table>
	<tr>
	<td><bean:message key="prompt.empid"/></td>
	<td><html:text property="empid"/></td>
	<td><html:errors property="empid"/></td>
	</tr>
	<tr>
	<td><bean:message key="prompt.name"/></td>
	<td><html:text property="empname"/></td>
	<td><html:errors property="empname"/></td>
	</tr>
	<tr>
	<td><bean:message key="prompt.deptarment"/></td>
	<td><html:text property="department"/></td>
	<td><html:errors property="department"/></td>
	</tr>
	<tr>
	<td><bean:message key="prompt.city"/></td>
	<td><html:text property="city"/></td>
	<td>&nbsp;</td>
	</tr>
	<tr>
	<td><bean:message key="prompt.email"/></td>
	<td><html:text property="email"/></td>
	<td><html:errors property="email"/></td>
	</tr>	
	<tr>
	<td colspan=3><html:submit/></td>
	</tr>	
	</table>	
	</html:form>
	<html:link href="index.jsp">Back</html:link>
  </body>
</html>
