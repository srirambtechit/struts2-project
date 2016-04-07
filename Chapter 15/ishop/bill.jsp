<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<table border="1" bordercolor="#843f8b" align="center" width="380">
<tr>
<td align="center" colspan="2"><br>| Your Bill Details |</td>
</tr>
<tr>
<td>Order ID</td><td><c:out value="${sessionScope.order.orderid}"/></td>
</tr>
<tr>
<td>Customer Name</td><td><c:out value="${sessionScope.order.cname}"/></td>
</tr>
<tr>
<td>Credit Card Number</td><td><c:out value="${sessionScope.order.cardno}"/></td>
</tr>
<tr>
<td>Total Amount</td><td><c:out value="${sessionScope.order.total}"/></td>
</tr>
</table>
<center><h4>Thank You for your shopping!</h4></center>