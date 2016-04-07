<%@ taglib prefix="s" uri="/struts-tags" %>
<center>
<s:form action="getProducts1" method="post">
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
<tr bgcolor="#670F88" class="whitebold" align="center">
<td>Name</td>
<td>Description</td>
<td>Price</td>
<td>--</td>

</tr>
<s:iterator id="product" value="#request['products']">
	<tr>
	<td><s:property value="name"/></td>
	<td><s:property value="desc"/></td>
	<td align="center"><s:property value="price"/></td>
	<td align="center">
	<s:url id="addtocarturl" action="getProduct">
	<s:param name="prodid"><s:property value="prodid"/></s:param>	
	</s:url>
	<s:a href="%{addtocarturl}">Add to Cart</s:a>
	</td>
	<td>
	&nbsp;
	</td>	
	</tr>
</s:iterator>
</table>
</s:else>
<hr>
<table align="left">
<tr>
<td>
<img src="images/cart.jpg" border="1" width="50" height="50">
</td>
<td>
<s:a href="showcart.action">Show Shopping Cart</s:a>
</td>
</tr>

</table>

</center>


