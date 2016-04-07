<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head><title><s:text name="app.title"/></title>
  <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>
  <body>
  <h2>Request and Sesion Attributes..</h2>
  Printing <b>Request</b> Attributes..
  <br><br>The action class used : <b><s:property value="#request.action"/></b>
  <br><br>The interceptor used: <b><s:property value="#request.interceptor"/> </b>
  
  <br><br><br>Printing <b>Session</b> Attributes..
  <br><br>User Name : <b><s:property value="#session.username"/></b>
  <br><br>Company : <b><s:property value="#session.company"/></b>
  
  <br><br><br>Printing Student Details from <b>Session</b> scope. <br><br>
  	Entollment No. : <s:property value="#session.student.rollno"/><br><br>
	Student's Name : <s:property value="#session.student.name"/><br><br>
	Student's Password : <s:property value="#session.student.password"/><br><br>
	Course : <s:property value="#session.student.course"/><br><br>
	City : <s:property value="#session.student.city"/><br><br>
 
  <br><a href="scopedmodelAction.action">Invoke a ScopedModelDriven Action</a>
  <br><br>
  <a href="index.jsp">Back to Index</a>
  </body>
</html>
