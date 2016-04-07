<%@ taglib prefix="s" uri="/struts-tags" %>
<center>
<s:form action="getProducts" method="post">
<s:select list="#request['categories']" name="catid" key="app.selectcatid" listKey="id" listValue="name" emptyOption="true" onchange="submit()"/>
</s:form>
<s:if test="#request['products'].size==0">
There is no product in this Category. 
</s:if>
<s:elseif test="#request['products']==null">
Please Select a category of your choice.
</s:elseif>
<s:else>
<table align="center" border="0" width="550" cellpadding="3" cellspacing="3">
<tr bgcolor="#670F88" class="whitebold">
<td>ProductID</td>
<td>Name</td>
<td>Description</td>
<td>Price</td>
<td>--</td>
</tr>
<s:iterator id="product" value="#request['products']">
	<tr>
	<td><s:property value="prodid"/></td>
	<td><s:property value="name"/></td>
	<td><s:property value="desc"/></td>
	<td><s:property value="price"/></td>
	<td>
	<s:url id="deleteurl" action="deletProduct">
	<s:param name="prodid"><s:property value="prodid"/></s:param>
	<s:param name="catid"><s:property value="catid"/></s:param>
	</s:url>
	<s:a href="%{deleteurl}" onclick="return confirm('Do you want to delete?')">Delete</s:a>
	</td>
	<td>
	&nbsp;
	</td>	
	</tr>
</s:iterator>
</table>
</s:else>
</center>


