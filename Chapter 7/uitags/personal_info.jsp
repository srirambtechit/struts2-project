<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Struts 2 UI Tags</title >
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="mystyle.css" type="text/css" />
<s:head theme="simple"/>
</head>
<body>
<h2 align="center">Enter Personal Information</h2>
<table align="center" width="600" >
<tr>
<td bgcolor="#fbefd9" align="center" >
<s:actionerror/>

<s:form action="personalAction" method ="post" name="personalform" cssStyle="color:#7a3d3d">  

  <s:textfield name="username" label="User Name" size="15" cssClass="fieldtext"/>
  
  <s:password name="password" label="Password" size="15" cssClass="fieldtext"/>
  
  <s:textfield name="fullname" label="Name" size="25" cssClass="fieldtext"/>
  
  <s:datetimepicker name="dob" label="Date of Birth" adjustWeeks="true" displayFormat="dd MMMM, yyyy" toggleType="wipe"/>  
  
  <s:textarea name="address" label="Address" rows="4" cols="20" cssClass="fieldtext"/>  
  
  <s:doubleselect name="country" 
	label="Select Country and City" 	
	list="{'Australia','India'}" 
	doubleName="city" 
	doubleList="top == 'Australia'? {'Sydney', 'Melbourne','Brisbane','Perth'} : {'Delhi', 'Mumbai','Chennai','Kolkata'}" 
	cssClass="fieldtext" doubleCssClass="fieldtext"/>
	  
  
<s:select name="language" label="Preferred Language(s)" list="{'English', 'Hindi', 'French','German'}" cssClass="fieldtext"/>
  
  <s:radio name="mstatus" label="Marital Status" list="{'Single', 'Married', 'Divorcee'}" value="Single"  />
  
  <s:checkboxlist name="skill" label="Your Interest" list="{'Programming', 'Testing', 'Research','Web Designing'}"/>
  
  <s:submit value="Submit" align="center"/>


  
</s:form>
<s:a href="index.jsp">Back</s:a>
</td>
</tr>
</table>
</body>
</html>
