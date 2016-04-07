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
 <h2>Login</h2>
 	<html:form action="loginAction" method="post">
	<table>
	<tr>
	<td><bean:message key="prompt.username"/></td>
	<td><html:text property="username"/></td>
	<td><html:errors property="username"/></td>
	</tr>
	<tr>
	<td><bean:message key="prompt.password"/></td>
	<td><html:password property="password"/></td>
	<td><html:errors property="password"/></td>
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
