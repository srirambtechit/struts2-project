<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html>
<head>
<title>Struts2 UI Tags</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="mystyle.css" type="text/css" />
</head>
<body>
<table cellspacing="5" bgcolor="#fdf5ea">
<tr>
<td colspan="2" bgcolor="#fbefd9" height="25" align="center">General Details</td>
</tr>
<tr>
<td bgcolor="#fbefd9" height="25">Selected Platform</td>
<td><s:property value="platform"/></td>
</tr>
<tr>
<td bgcolor="#fbefd9" height="25">Selected Servers</td>
<td><s:property value="servers"/></td>
</tr>
<tr>
<td bgcolor="#fbefd9" height="25">Programming Language</td>
<td><s:property value="language"/></td>
</tr>
<tr>
<td bgcolor="#fbefd9" height="25">Technologies</td>
<td><s:property value="technology"/></td>
</tr>
<tr>
<td bgcolor="#fbefd9" height="25">File Uploaded</td>
<td>
<s:property value="file" />
</td>
</tr>
</table>  
<s:a href="index.jsp">Back</s:a>
</body>
</html>
