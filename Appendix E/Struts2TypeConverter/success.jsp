<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>

	<head>
    <title>Custom TypeConverter Successfully Implemented</title>
	</head>

	<body>
		  <hr/>
		<h4>Congratulations! You have used a custom converter to create a Square object
			from a string and back to a string.  </h4>
			
			<p> You created a square with edge equal to <s:property value="square.edge"/></p>
			 
			Just to check the outgoing data conversion, here's the square back in the string syntax <s:property value="square"/> 
			  <hr/>
	</body>
	
</html>