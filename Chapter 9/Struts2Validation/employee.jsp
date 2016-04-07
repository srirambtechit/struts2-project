<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
	<title>Using Field Validators-Employee Added</title>
	<link rel="stylesheet" href="mystyle.css" type="text/css" />
	</head>
    <body>
    <h3>Employee added successfully</h3>
       <table cellspacing="5">
       <tr>
	       <td>Employee ID: </td>
	       <td><s:property value="empid"/></td></tr>
       <tr>
	       <td>Password: </td>
	       <td><s:property value="password"/></td></tr>
       <tr>
	       <td>Employee Name: </td>
	       <td><s:property value="empname"/></td></tr>
       <tr>
	       <td>Date of Joining: </td>
	       <td><s:property value="doj"/></td></tr>
       <tr>
	       <td>Age: </td>
	       <td><s:property value="age"/> years</td></tr>
       <tr>
	       <td>City: </td>
	       <td><s:property value="city"/></td></tr>
       <tr>
	       <td>E-Mail: </td>
	       <td><s:property value="email"/></td></tr>
       </table>       
       <br><br>| <s:a href="index.jsp">Home</s:a> |
    </body>
</html>

