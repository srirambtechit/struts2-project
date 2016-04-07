<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html> 
	<head>
		<title><s:text name="app.title"/></title>
		<link rel="stylesheet" href="mystyle.css" type="text/css" />
		</head>
	<body>
	<table align="center" width="300">
	<tr><td colspan="2"><div class="boldred"><s:actionerror/></div></td></tr>
	<tr><td align="center" colspan="2">Login!</td></tr>
	<tr><td align="center">
	<s:form action="login" method="post">
	<s:textfield name="username" key="app.username"/>
	<s:password name="password" key="app.password"/>
	<s:submit value="Login"/>
	</s:form>
	</td>
	</tr>
	<tr><td align="center" colspan="2"><a href="index.jsp">B a c k</a></td></tr>
	</table>		
	</body>
</html>

