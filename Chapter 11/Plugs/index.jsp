<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
	<head>
		<title><s:text name="app.title" /></title>
		<link rel="stylesheet" href="mystyle.css" type="text/css" />
	</head>
	<body bgcolor="3366cc" class="white">
	<h1>Welcome</h1>		
	<table cellspacing="5" cellpadding="5">
	<tr><td bgcolor="ffffff" >
	<s:a href="login.jsp">Codebehind Plugin</s:a>
	</td></tr>
	<tr><td bgcolor="ffffff" >
	<s:a href="login1.jsp">Struts 1 Plugin</s:a>	
	</td></tr>	
	<tr><td bgcolor="ffffff" >
	<s:a href="chartAction.action">JFreeChart Plugin </s:a>	
	</td></tr>	
	<tr><td bgcolor="ffffff" >
	<s:a href="config-browser/index.action">Config Browser Plugin </s:a>
	</td></tr>
	</table>		
	</body>
</html>
