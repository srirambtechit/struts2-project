<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insertTemplate template="/layout.jsp">
  <tiles:putAttribute name="title"  value="Welcome to www.ishop.com " type="string"/>
  <tiles:putAttribute name="header" value="/header.jsp" />
  <tiles:putAttribute name="menu" value="/adminmenu.jsp"/>
  <tiles:putAttribute name="body"   value="/adminbody.jsp" />
  <tiles:putAttribute name="footer" value="/footer.jsp" />
</tiles:insertTemplate>