<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<title>Validation Using Annotation - Registering New User!</title>
<link rel="stylesheet" href="mystyle.css" type="text/css" />
</head>
<body>
<h3>Please Enter New User Details</h3>
<s:actionerror/>
<s:form action="addUser" validate="true" >
    <s:textfield label="Username" name="username"/>
    <s:password label="Password" name="password"/>
    <s:textfield label="Name" name="name"/>
    <s:textfield label="Age" name="age"/>    
    <s:textfield label="Email" name="email"/>
    <s:textfield label="Nationality" name="nation"/>
    <s:textfield label="Phone" name="phone"/>
    <s:submit value="Add User"/>	
</s:form>
| <s:a href="login.jsp">Login</s:a> | <s:a href="index.jsp">Home</s:a> |
</body>
</html>
