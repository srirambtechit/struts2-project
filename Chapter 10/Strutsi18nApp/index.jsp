<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title><s:text name="app.title"/></title>
    <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>
  <body> 
  <table align="center" width=600>
  <tr><td colspan="3">
  <h2 align="center"><s:text name="app.title"/></h2>
  <div align="right"><s:text name="app.change"/> |
	 <a href="index.action?request_locale=de">German</a> |
	 <a href="index.action?request_locale=en">English</a> |  
     <a href="index.action?request_locale=fr">French</a> |
    </div>
   <br><br>
	<hr>
  </td></tr>  
    <tr>
    <td>
    <img src="images/world.jpg">
    </td>
    <td>
    
    <table cellpadding="20">
    <tr><td class="smalltext">
    <s:text name="app.welcome.note"/>
    </td></tr>
    </table>      
    
    </td>
    <td width="150">    
    
    <table bgcolor="#e8e7f8">
	<tr><td colspan="2"><div class="boldred"><s:actionerror/></div></td></tr>
	<tr><td align="center" colspan="2">Login!</td></tr>
	<tr><td >
	<s:form action="login" method="post">
	<s:textfield name="username" key="app.username" size="15" labelposition="top" />
	<s:password name="password" key="app.password" size="15" labelposition="top"/>
	<s:submit key="app.submit"/>
	</s:form>
	</td>
	</tr>
	</table>
	
    </td>    
    </tr>
    <tr><td colspan="3" align="center"><br><br>
	<hr>
	<s:text name="app.footer"/></td></tr>
  </table>  
  </body>
</html>
