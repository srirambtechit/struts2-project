<%@ page language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head><title><s:text name="app.title"/></title>
  <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>
  <body>
  <div align="center">
  <h2>Successfully Logged In!</h2>
  <br><br>
  User name set in Session : <s:property value="#session['struts.ScopeInterceptor:/:loginusername']"/>
  <br>Password set in Session : <s:property value="#session['struts.ScopeInterceptor:/:loginpassword']"/>

  <br><br><br>Welcome <s:property value="#session['struts.ScopeInterceptor:/:loginusername']"/> !
     
  <br><br><a href="index.jsp">Back to Index</a></div>
  </body>
</html>
