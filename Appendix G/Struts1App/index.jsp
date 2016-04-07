<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>
    <head>
		<link rel="stylesheet" href="mystyle.css" type="text/css" />
		<title><bean:message key="app.title"/></title>
	</head>
    <body>
	<h2><bean:message key="app.welcome"/></h2>
	<div class=boldred><html:errors property="invalid"/></div>
	<html:form action="/hello" method="post">
		<bean:message key="prompt.name"/> 
		<html:text property="username"/> <font class=boldred><html:errors property="username"/></font>
		<br><br><html:submit property="submit" value="Enter"/>
	</html:form>
	</body>
</html:html>
