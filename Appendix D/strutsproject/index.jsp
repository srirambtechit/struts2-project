<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
  <head>
    <title>Personal Info</title>
    <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>
  <body>
	<h2><s:text name="app.welcome"/></h2>
    <s:form action="displayAction">
    <s:textfield key="app.username" name="username" />
    <s:textfield key="app.city" name="city" />
    <s:submit key="button.save"/>
    </s:form>
  </body>
</html:html>
