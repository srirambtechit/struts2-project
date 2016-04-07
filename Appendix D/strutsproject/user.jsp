<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
  <head>
    <title>User Info</title>
    <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>
  <body>
	<h2>User Information</h2>
    <s:form action="show">
    <s:textfield key="app.name" name="name" />
    <s:textfield key="app.age" name="age" />
    <s:submit key="button.save"/>
    </s:form>
  </body>
</html:html>
