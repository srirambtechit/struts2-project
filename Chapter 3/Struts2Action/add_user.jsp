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
			Adding User!
			<br><br>
			<table bgcolor="#f0edd9">
				<tr><td>
						<s:actionerror />
						<s:form action="adduser">
							<s:textfield name="username" label="User Name" />
							<s:password name="password" label="Password" size="15" />
							<s:textfield name="city" label="City" />
							<s:textfield name="email" label="E-Mail" />
							<s:select label="Type" name="type" headerKey="- - -"
								headerValue="Select Type"
								list="#{'Admin':'Admin', 'Client':'Client'}" />
							<s:submit value="Add User" />
						</s:form>
					</td></tr>
			</table>
			<br>| <s:a href="index.jsp">Back</s:a> |
		</center>
	</body>
</html>
