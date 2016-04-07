<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
  <head>
    <title>Validation Using Annotation - User Registered Successfully!</title>
	<link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>
  <body>
  <h3>User successfully added!</h3><br>
  <b>The new user details are:</b>
  <br><br>User ID  : <s:property value="username"/> 
  <br><br>Password : <s:property value="password"/> 
  <br><br>Name  : <s:property value="name"/>  
  <br><br>Age  : <s:property value="age"/> 
  <br><br>E-Mail ID : <s:property value="email"/> 
  <br><br>Country  : <s:property value="nation"/> 
  <br><br>Phone  : <s:property value="phone"/> <br><br>
  Click to <a href= "login.jsp">Login</a>
  </body>
</html>