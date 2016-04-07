<%@ page language="java" import="com.kogent.action.Student" pageEncoding="ISO-8859-1" %>

<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head><title><s:text name="app.title"/></title>
  	<link rel="stylesheet" href="mystyle.css" type="text/css"/>
  </head>
  <body>
  <br>Printing Student Details from <b>Session</b> scope. <br><br>
  Entollment No. : <s:property value="#session.student.rollno"/><br><br>
  Student's Name : <s:property value="#session.student.name"/><br><br>
  Student's Password : <s:property value="#session.student.password"/><br><br>
  Course : <s:property value="#session.student.course"/><br><br>
  City : <s:property value="#session.student.city"/><br><br>
  <a href="index.jsp">Back to Index</a>
  </body>
</html>
 