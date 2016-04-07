<%@ taglib prefix="s" uri="/struts-tags" %>
<table align="center" border="0" width="450" cellpadding="3" cellspacing="3">
<tr bgcolor="#670F88" class="whitebold">
<td>Category ID</td>
<td>Category Name</td>
<td> -- </td>
<td> -- </td>
</tr>
<s:iterator id="category" value="#request['categories']">
	<tr>
	<td><s:property value="id"/></td>
	<td><s:property value="name"/></td>
	<td>
	<s:url id="deleteurl" action="deletCategory">
	<s:param name="catid"><s:property value="id"/></s:param>
	</s:url>
	<s:a href="%{deleteurl}" onclick="return confirm('Do you want to delete?')">Delete</s:a>
	</td>
	<td>
	<s:url id="addprodurl" action="addprodform">
	<s:param name="catid"><s:property value="id"/></s:param>
	</s:url>
	<s:a href="%{addprodurl}">Add Product</s:a>
	</td>	
	</tr>
</s:iterator>
</table>

