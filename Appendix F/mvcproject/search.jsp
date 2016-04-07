<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>Searching Student</title>
    <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>  
  <body>
  <h2>Search Student!</h2>
 <c:if test="${param.message!=null}">
  <div class='boldred'>${param.message}</div>
  </c:if>
    <form action="getStudent" method="post">
  Student Rollno.	<input type="text" name="roll">
  <input type="submit" value="Search">
  </form>
     <a href="index.jsp">Back</a> 
  </body>
</html>
