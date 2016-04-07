<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
		<title>Struts 2 Application</title>
  		<link rel="stylesheet" href="mystyle.css" type="text/css" />
	</head> 
 	<body>  
 	<h1>Struts 2 Application</h1>
 	Enter Client Details:
 		<s:form action="clientAction" method="post">
     			<s:textfield label="Name" name="name"/>
	     		<s:textfield label="Age" name="age"/>
     			<s:textfield label="Salary" name="salary"/>
	     		<s:submit/>
 		</s:form>
	 </body>
 </html>
