<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
	<head>
		<title><s:text name="app.title" />
		</title>
		<link rel="stylesheet" href="mystyle.css" type="text/css" />
	</head>
	<body>
		<center>
		Enter User Name and Password.<br><br>
			<table bgcolor="#f0edd9">
				<tr><td>
						<s:form action="struts1_login">
							<s:textfield name="username" label="User Name"/>
							<s:password name="password" label="Password" />
							<s:submit value="Login"/>
						</s:form>
				</td></tr>
			</table>
			<br>| <s:a href="index.jsp">Home</s:a> |
		</center>
	</body>
</html>
