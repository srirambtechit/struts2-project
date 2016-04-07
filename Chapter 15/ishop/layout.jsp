<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
<title><tiles:getAsString name="title"/></title>
<link rel="stylesheet" href="mystyle.css" type="text/css" />
</head>
<body topmargin="0">
<br>
<table width="800" cellspacing="0" align="center" border="0" >
  <tr>
     <td colspan="2" height="70"><tiles:insertAttribute name="header"/></td>
  </tr>
  <tr height="280">
  	<td valign="top" align="left"><tiles:insertAttribute name="menu"/></td>
    <td width="640" valign="top">
    <p>&nbsp;</p>
    <tiles:insertAttribute name="body"/></td>
  </tr>
   <tr>
     <td colspan="2"><tiles:insertAttribute name="footer"/></td>
  </tr>
</table> 
</body>
</html>
          