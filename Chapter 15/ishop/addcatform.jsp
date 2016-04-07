<%@ taglib prefix="s" uri="/struts-tags" %>
<table border="1" bordercolor="#843f8b" align="center" width="380">
<tr>
<td align="center"><br>
| Adding New Category |
<br><s:actionerror cssClass="boldred"/>
<s:form action="addCategory" method="post">
	<s:textfield name="catid" key="app.catid"/>
	<s:textfield name="catname" key="app.catname"/>
	<s:submit value="Add Category"/>
</s:form>
</td></tr>
</table>