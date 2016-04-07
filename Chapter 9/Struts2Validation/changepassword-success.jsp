<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
		<title>Using Non-Field Validators-Password Changed</title>
		<link rel="stylesheet" href="mystyle.css" type="text/css" />
	</head>
   <body>
   <h3>Password changed successfully</h3>       
 	You new Password is : <b><s:property value="password2"/></b>
    <br><br>| <s:a href="index.jsp">Home</s:a> |
   </body>
</html>

