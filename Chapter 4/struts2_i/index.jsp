<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"/>
<html>
<head><title><s:text name="app.title"/></title>
<link rel="stylesheet" href="mystyle.css" type="text/css" />
</head>
<body>
	<table align="center" width=400>
	<tr><td><h2>Sruts 2 Interceptors</h2></td></tr>
	
	<tr><td><s:a href="alias.jsp">Interceptor Example 1</s:a></td></tr>
	<tr><td>alias, basicStack </td></tr>
	<tr><td>&nbsp;</td></tr>
	<tr><td><s:a href="model.jsp">Interceptor Example 2</s:a></td></tr>
	<tr><td>
	exception, prepare, debugging, model-driven, params, conversionError, workflow	
	</td></tr>	
	<tr><td>&nbsp;</td></tr>
	<tr><td>
	<s:a href="servletAction.action">Interceptor Example 3</s:a>
	</td></tr>
	<tr><td>servlet-config, scoped-model-driven </td></tr>
	<tr><td>&nbsp;</td></tr>
	<tr><td><s:a href="longAction.action">Interceptor Example 4</s:a></td></tr>
	<tr><td>completeStack, execAndWait</td></tr>
	<tr><td>&nbsp;</td></tr>
	<tr><td><s:a href="login.jsp">Interceptor Example 5</s:a> </td></tr>
	<tr><td>basicStack, validation, workflow, scope </td></tr>
	</table>	
</body>
</html>