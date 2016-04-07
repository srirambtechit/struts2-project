<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
       <title>Select An Item</title>
	   <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>
  <body> 
  <h2>Using OGNL Expression</h2>    
  <table cellspacing="5" >
  <tr>
	<td align="center" valign="top" bgcolor="#ffe8dd">
		<br>Select an Item and Quantity
		<s:actionerror/>
		<s:form action="addProduct">  
		<s:select 
		         label="Items"
		         list="{'Sandwich', 'Pastry', 'Patties', 'Pizza'}"
		         name="productname"
		         headerKey="None"
		         headerValue="None"/>
		<s:textfield 
		        label="Quantity" 
		        name="quantity"/> 
		<s:submit/>  
		</s:form>
	</td>
  
  <td align="center" valign="top">
		| Accessing Bean Properties |<br><br>
		<table cellpadding="2" cellspacing="0" width="200">
		<tr bgcolor="#cdf3f5"><td>Item</td><td>Quantity</td></tr>
		<tr>
		<td><s:property value="productname"/></td>
		<td><s:property value="quantity"/></td>
		</tr>
		</table>
  </td>
  
  <td align="center" valign="top">
		| Accessing Request |<br><br>
		<table cellpadding="2" cellspacing="0" width="200">
		<tr bgcolor="#cdf3f5"><td>Item</td><td>Quantity</td></tr>
		<tr>
		<td><s:property value="#request['bean'].productname"/></td>
		<td><s:property value="#request['bean'].quantity"/></td>
		</tr>
		</table>
  </td>
  
  <td align="center" valign="top">
		| Accessing Session |<br><br>
		<table cellpadding="2" cellspacing="0" width="200">
		<tr bgcolor="#cdf3f5"><td>Item</td><td>Quantity</td></tr>
		<s:iterator id="beans" value="#session['beans']">
			<tr>
				<td><s:property value="productname"/></td>
				<td><s:property value="quantity"/></td>
			</tr>
		</s:iterator>
		</table>
  </td>
  
  </tr>
  </table>
</body>
</html>