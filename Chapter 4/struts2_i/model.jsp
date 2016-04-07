<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html> 
	<head>
		<title><s:text name="app.title"/></title>
		<link rel="stylesheet" href="mystyle.css" type="text/css" />
	</head>
	<body>
	<table align="center" width="300">
	<tr><td colspan="2"><s:actionerror/></td></tr>
	<tr><td align="center" colspan="2">Enter Student Details</td></tr>
	<tr><td align="center">
	<s:form action="modelAction.action?debug=xml" method="post">
	<s:textfield name="rollno" key="app.rollno"/>
	<s:textfield name="name" key="app.name"/>
	<s:password name="password" key="app.password"/>	
	<s:textfield name="course" key="app.course"/>
	<s:textfield name="city" key="app.city"/>	
	<s:submit value="Submit" align="center"/>
	</s:form>
	</td>
	</tr>
	<tr><td align="center" colspan="2"><a href="index.jsp">B a c k</a></td></tr>
	</table>		
	</body>
</html>

