<%@taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <title>Using Non-Field Validator-Changing Password</title>        
        <link rel="stylesheet" href="mystyle.css" type="text/css" />       
    </head>
    <body> 
	<h3>Changing Password</h3>
    <s:actionerror />    
    <s:form action="changePassword" validate="true">
        <s:password name="password" label="Current Password" />
        <s:password name="password2" label="Enter New Password" />  
        <s:password name="password3" label="Re-Enter New Password Again" />
        <s:submit value="Change Password"/>
    </s:form>
    <br>| <s:a href="index.jsp">Home</s:a> |
    </body>
</html>