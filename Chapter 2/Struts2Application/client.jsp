<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
	  <title>Welcome - Submitted Successfully.</title>
	  <link rel="stylesheet" href="mystyle.css" type="text/css" />
	</head>
	<body>
	Thank you! <b><s:property value="name"/></b>. 
	<br><br>Your Age : <b><s:property value="age"/></b>
	<br><br>Your Salary : <b><s:property value="salary"/> $</b>
	</body>
</html>
