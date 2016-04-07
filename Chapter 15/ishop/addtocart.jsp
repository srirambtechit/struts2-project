<%@ taglib prefix="s" uri="/struts-tags" %>
<table border="1" bordercolor="#843f8b" align="center" width="380">
<tr>
<td align="center"><br>
| Adding to Shopping Cart |
<br><s:actionerror cssClass="boldred"/>
<s:form action="addToCart" method="post">
	

	<s:textfield name="prodid" key="app.prodid" size="5" readonly="true"/>
	<s:textfield name="name" key="app.prodname" readonly="true"/>
	<s:textarea name="desc" key="app.description" readonly="true"/>	
	<s:textfield name="price" key="app.price" readonly="true"/>
	<s:textfield name="unit" key="app.unit"/>	
	<s:submit value="Add to Cart"/>
</s:form>
</td>
</tr>
</table>