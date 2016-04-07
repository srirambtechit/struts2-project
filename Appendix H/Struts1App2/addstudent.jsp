<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   		<title><bean:message key="app.title"/></title>
		<link rel="stylesheet" href="mystyle.css" type="text/css"/>
  </head>
  <body>
  <h2>New Student</h2>
	<html:form action="addStudent" method="post">
	<table>
	<tr>
	<td><bean:message key="prompt.rollno"/></td>
	<td><html:text property="rollno"/></td>
	<td><html:errors property="rollno"/></td>
	</tr>
	<tr>
	<td><bean:message key="prompt.studentname"/></td>
	<td><html:text property="name"/></td>
	<td><html:errors property="name"/></td>
	</tr>
	<tr>
	<td><bean:message key="prompt.course"/></td>
	<td><html:text property="course"/></td>
	<td><html:errors property="course"/></td>
	</tr>
	<tr>
	<td colspan=3><html:submit/></td>
	</tr>	
	</table>	
	</html:form>
	<html:link href="index.jsp">Back</html:link>
  </body>
</html>
