<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
	<head>
		<title>Validation Using Annotation - Login</title>
		<link rel="stylesheet" href="mystyle.css" type="text/css" />
	</head>
	<body>
		<h3>Validation Using Annotation</h3>
		<table bgcolor="#fcf3e2">
		<tr><td align="center">Please Login</td></tr>
		<tr><td><s:actionerror/></td></tr>
		<tr><td>
		<s:form action="login" validate="true" >
			<s:textfield label="User Name" name="username"/>
		    <s:password label="Password" name="password"/>
			<s:submit value="Login"/>
		</s:form>
		</td></tr>
		</table>
		<br>
		<b>Not Registered?</b></font> Click here to <s:a href="register.jsp"><b>Register</b></s:a> 
		<br><br>| <s:a href="index.jsp">Home</s:a> |
	</body>
</html>
