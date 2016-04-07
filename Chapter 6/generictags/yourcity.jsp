<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Select Your City</title>    
    <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>  
  <body>
  <s:form action="cityAction" method="post">
 	<s:select key="app.city" name="city" 
 		list="#{'Delhi':'Delhi', 'Paris':'Paris', 'Pune':'Pune', 'Colombo':'Colombo'}" />
 	<s:submit/>
  </s:form>
  
	<s:if test="city!=null">
  	  <s:if test="city=='Delhi'">
  	  	<hr width="400" align="left">
	   	<b>Using if tag:</b> Delhi is Capital of India.
	  </s:if>
	 
	  <hr width="400" align="left">
	  <b>Using if and else tag:</b> 
	  <s:if test="city=='Paris'">
	 	Paris is Capital of France.
	  </s:if>
	  <s:else>
		 This is not the capital of France. 
	  </s:else>
	  
	  <hr width="400" align="left">
	  <b>Using if elseif and else tag:</b>
	  <s:if test="city=='Delhi'">
	  	Capital of India.
	  </s:if>
	  <s:elseif test="city=='Pune'">
	  	An Indian city.
	  </s:elseif>
	  <s:else>
	  	A Non-Indian city. 
	  </s:else>
	</s:if>
	
	<br><br><s:a href="index.jsp">Back</s:a>  
  </body>
</html>
