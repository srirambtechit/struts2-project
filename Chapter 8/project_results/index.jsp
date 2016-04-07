<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title><s:text name="app.title"/></title>
<link rel="stylesheet" href="mystyle.css" type="text/css" />
</head>
 <body>
 
 <h2><s:text name="app.welcome"/></h2>
 
  <s:url id="url1" action="action1"/>
  <s:a href="${url1}">dispatcher</s:a>

  <br><br>
  <s:url id="url2" action="action2"/>
  <s:a href="${url2}">chain</s:a>
  
  <br><br>
  <s:url id="url3" action="action3"/>
  <s:a href="${url3}">redirect</s:a>
  
  <br><br>
  <s:url id="url4" action="action4"/>
  <s:a href="${url4}">redirect-action</s:a>
   
  <br><br>
  <s:url id="url5" action="action5"/>
  <s:a href="${url5}">freemarker</s:a>
    
  <br><br>
  <s:url id="url6" action="action6"/>
  <s:a href="${url6}">myresult</s:a>
 
 </body> 
</html>
