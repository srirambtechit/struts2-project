<%@ taglib prefix="s" uri="/struts-tags" %>
<table align="center" border="0" width="450" cellpadding="3" cellspacing="3">
<tr bgcolor="#670F88" class="whitebold">
<td>Name</td>
<td>Price</td>
<td>Unit</td>
<td>SubTotal</td>
<td>--</td>
</tr>
<s:iterator id="orderitems" value="#session['orderitems']">
	<tr>
	<td><s:property value="name"/></td>
	<td><s:property value="price"/></td>
	<td><s:property value="unit"/></td>
	<td><s:property value="subtotal"/></td>
	<td>
	<s:url id="deleteurl" action="deleteFromCart">
	<s:param name="prodid"><s:property value="prodid"/></s:param>
	</s:url>
	<s:a href="%{deleteurl}" onclick="return confirm('Do you want to delete?')">Delete</s:a>
	</td>	
	</tr>
</s:iterator>
</table>
<hr>
| <s:a href="checkout.action">Checkout</s:a> | <s:a href="showproducts.action">Add More Product</s:a> |


