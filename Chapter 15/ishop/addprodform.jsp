<%@ taglib prefix="s" uri="/struts-tags" %>
<table border="1" bordercolor="#843f8b" align="center" width="380">
<tr>
<td align="center"><br>
| Adding New Product |

<br><s:actionerror cssClass="boldred"/>
<s:form action="addProduct" method="post">
	<s:textfield name="prodid" key="app.prodid" size="5"/>
	<s:textfield name="name" key="app.prodname"/>
	<s:textarea name="desc" key="app.description"/>	
	<s:textfield name="price" key="app.price"/>
	<s:select list="#request['categories']" name="catid" key="app.catid" listKey="id" listValue="name" emptyOption="true"/>

	<s:submit value="Add Product"/>
</s:form>
</td>
</tr>
</table>