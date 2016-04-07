<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>List of Students</title>
    <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>  
 <body>
 
 <c:if test="${param.message!=null}">
 	<div class='boldred'>${param.message}</div>
 </c:if>

 <h2>Student List</h2>
 <table width="600" cellpadding="3" cellspacing="0">
 <tr bgcolor="#dfecf7" style="font-weight:bold">
 <td>Roll No.</td><td>Name</td><td>Course</td><td>City</td>
 </tr>
	 <c:forEach var="student" items="${requestScope.students}">
	 <tr>
		 <td><c:out value="${student.roll}"/></td>
		 <td><c:out value="${student.name}"/></td>
		 <td><c:out value="${student.course}"/></td>
		 <td><c:out value="${student.city}"/></td>
	 </tr>
	 </c:forEach>
 <tr bgcolor="#dfecf7">
 <td colspan="4">&nbsp;</td>
 </tr>
 </table>
 <a href="index.jsp">Back</a>
 </body>
</html>
