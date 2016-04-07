<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<html> 
	<head>
		<title><bean:message key="app.title"/></title>
		<link rel="stylesheet" href="mystyle.css" type="text/css" />
		</head>
	<body>
		<html:form action="/login">
		<table align=center>
		<tr>
			<td colspan=2 align=center class=boldred>
			<html:errors property="invalid"/></td>
		</tr>
		<tr>
		<td colspan=2 align=center>Login!</td>
		</tr>
		<tr><td class="boldred" colspan=2 align=center>
		<html:errors property="username"/></td></tr>
		<tr>
		<td ><bean:message key="app.username"/></td>
		<td ><html:text property="username"/></td>
		</tr>
		<tr><td class="boldred" colspan=2 align=center>
		<html:errors property="password"/></td></tr>
		<tr>
		<td><bean:message key="app.password"/></td>
		<td><html:password property="password"/></td>
		</tr>
		<tr>
		<td colspan=2 align=right><html:submit value="Login"/></td>
		</tr>
		</table>
		</html:form>
		<div align=center><a href="index.jsp">B a c k</a></div>
	</body>
</html>
