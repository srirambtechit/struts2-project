<%@ taglib prefix="s" uri="/struts-tags" %>
<table border="1" bordercolor="#843f8b" align="center" width="380">
<tr>
<td align="center"><br>
| Login |
<br><s:actionerror cssClass="boldred"/>
<s:form action="login" method="post" cssClass="text">
	<s:textfield name="loginid" key="app.loginid" size="15"/>
	<s:password name="password" key="app.password" size="17"/>
	<s:submit value="Login"/>
</s:form>
</td></tr>
</table>