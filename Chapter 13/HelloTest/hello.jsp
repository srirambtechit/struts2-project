<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html> 
	<head>
		<title>Struts2 Testing</title>
		<link rel="stylesheet" href="mystyle.css" type="text/css" />
		</head>	
    <body>
        <h2><s:property value="message" /></h2>
        <s:a href="helloAction.action">Click to Run Action</s:a>
    </body>
</html>

