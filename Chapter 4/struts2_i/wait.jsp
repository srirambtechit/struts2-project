<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"/>
<html>
<head><title><s:text name="app.title"/></title>
<META HTTP-EQUIV="Refresh" CONTENT="4"> 
<link rel="stylesheet" href="mystyle.css" type="text/css" />
</head>
 <body>
<table width="300" align="center">
	<tr>
		<td width="150">&nbsp;</td>
		<td bgcolor="#9f1704" height="20">
		<font color="white"><strong>L o a d i n g . . .</strong></font>
		</td>
	</tr>
	<tr><td>&nbsp;</td></tr>
	<tr>
		<td colspan="2">
		The action is being processed.<br><br>
		If the page did not appear automatically, Click <s:a href="longAction.action">here</s:a>
		</td>
	</tr>
</table>   
</body>
</html>