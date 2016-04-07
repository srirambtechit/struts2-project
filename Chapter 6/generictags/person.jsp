<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title><s:text name="app.title"/></title>
<link rel="stylesheet" href="mystyle.css" type="text/css" />
</head>
<body> 
	<s:include value="header.jsp"/>	
	<br><br><b>Running Action and its result</b><br><br>
	<s:action name="personAction" executeResult="true"/>	
	
	<br><br><b>Using bean tag</b><br><br>
	<s:bean name="com.kogent.action.PersonAction">
		<s:param name="name">Kogent</s:param>
		<s:param name="address">Ansari Road, Dariyaganj</s:param>
		<s:param name="city">Delhi</s:param>
		User's Name: <s:property value="name"/><br><br>
		Address: <s:property value="address"/><br></br>
		City: <s:property value="city"/>
	</s:bean>
	<s:include value="footer.jsp"/>			
	</body>	
</html>



