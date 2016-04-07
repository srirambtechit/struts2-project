<%@ page language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head><title><s:text name="app.title"/></title>
<link rel="stylesheet" href="mystyle.css" type="text/css"/>
</head>
<body>
	<h2>Student Information</h2>
	Entollment No. : <s:property value="rollno"/><br><br>
	Student's Name : <s:property value="name"/><br><br>
	Student's Password : <s:property value="password"/><br><br>
	Course : <s:property value="course"/><br><br>
	City : <s:property value="city"/><br><br>
    <a href="index.jsp">Back to Index</a>
</body>
</html>
