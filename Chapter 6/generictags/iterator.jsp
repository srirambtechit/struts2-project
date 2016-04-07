<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Iteration using Tags</title>
    <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>  
  <body>
  
    <b>Using iterator tag:</b> 
    <s:iterator status="stat" value="{23, 12, 34, 12, 15, 89}" >
		[ <s:property value="#stat.index" /> | <s:property value="top" /> ]
		<s:if test="#stat.last==false">, </s:if>
	</s:iterator>
	<br><br>
   	
   	<b>Using generator and iterator tag:</b> 
	<s:generator val="%{'Mon,Tue,Wed,Thu,Fri,Sat,Sun'}" count="6" separator="," id="someid">
	 <s:iterator>
	 	<s:property />
	 </s:iterator>
	</s:generator>
	
	<br><br><b>Iterating over ArrayList:</b><br>
	ArrayList fruits: 
	<s:iterator value="fruits">
		<s:property/>	
	</s:iterator>
	<br>ArrayList cities: 
	<s:iterator value="cities">
		<s:property/>	
	</s:iterator>
	<br>ArrayList colors: 
	<s:iterator value="colors">
		<s:property/>	
	</s:iterator>
	
	<br><br><b>Appending Iterators:</b><br>
	<s:append id="appendedItr">
		<s:param   value="%{fruits}"/>
		<s:param   value="%{cities}"/>
		<s:param   value="%{colors}"/>
	</s:append>
	<s:iterator value="%{#appendedItr}">
		<s:property />, 
	</s:iterator>
	<br><br><b>Merging Iterators:</b><br>
	<s:merge id="mergedItr">
		<s:param   value="%{fruits}"/>
		<s:param   value="%{cities}"/>
		<s:param   value="%{colors}"/>
	</s:merge>
	<s:iterator value="%{#mergedItr}">
		<s:property />, 
	</s:iterator>
	
	<br><br><b>Using subset and iterator tag:</b><br>
	With count=3: 
	<s:subset source="cities" count="3">
	<s:iterator>
		<s:property />
	</s:iterator>
	</s:subset>
	<br>With count=2: 
	<s:subset source="cities" count="2">
	<s:iterator>
		<s:property />
	</s:iterator>
	</s:subset>	
	<br>With count=2 and start=1: 
	<s:subset source="cities" start="1" count="2">
	<s:iterator>
		<s:property />
	</s:iterator>
	</s:subset>	
	<br><br><s:a href="index.jsp">Back</s:a>
</body>
</html>
