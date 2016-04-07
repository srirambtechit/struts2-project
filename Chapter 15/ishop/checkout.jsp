<%@ taglib prefix="s" uri="/struts-tags" %>
<table border="1" bordercolor="#843f8b" align="center" width="380">
<tr>
<td align="center"><br>
| Enter Payment Details |
<br><s:actionerror cssClass="boldred"/>
<s:form action="placeOrder" method="post">
	<s:textfield name="orderid" key="app.orderid" size="5"/>
	<s:textfield name="custname" key="app.cname"/>
	<s:textfield name="cardno" key="app.cardno"/>
	<s:submit value="Order Items"/>
</s:form>
</td></tr>
</table>

<table align="center" border="0" width="450" cellpadding="3" cellspacing="3">
<tr bgcolor="#670F88" class="whitebold">
<td>Name</td>
<td>Price</td>
<td>Unit</td>
<td>SubTotal</td>
</tr>
<s:iterator id="orderitems" value="#session['orderitems']">
	<tr>
	<td><s:property value="name"/></td>
	<td><s:property value="price"/></td>
	<td><s:property value="unit"/></td>
	<td><s:property value="subtotal"/></td>	
	</tr>
</s:iterator>
</table>


