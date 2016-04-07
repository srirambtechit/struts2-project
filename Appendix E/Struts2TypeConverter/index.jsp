<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>

	<head>
    <title>Struts 2 Custom TypeConverter</title>
	</head>

	<body>
	  <hr/>
		<h4>Enter Edge (String) of Square to convert it into Square object</h4> 
		<s:form action="CustomTypeConverter" method="POST">
    	<s:textfield name="square" label='Square "S:e5"'/>
     	<s:submit/>
		</s:form>	
	 	  <hr/> 
		
	</body>
	
</html>