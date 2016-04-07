<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>Editing Student</title>
    <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>  
  <body>
  <h2>Edit Student!</h2>
  <c:if test="${param.message!=null}">
  <div class='boldred'>${param.message}</div>
  </c:if>
  <form action="editStudent" method="post">
  <table>
  <tr>
  <td>Rollno.</td>
  <td><input type="text" name="roll" value="${requestScope.student.roll}" readonly="readonly"></td>
  </tr>
    <tr>
  <td>Name</td>
  <td><input type="text" name="name" value="${requestScope.student.name}"></td>
  </tr>
    <tr>
  <td>Course</td>
  <td><input type="text" name="course" value="${requestScope.student.course}"></td>
  </tr>
    <tr>
  <td>City</td>
  <td><input type="text"  name="city" value="${requestScope.student.city}"></td>
  </tr>
    <tr>
  <td colspan="2"><input type="submit" value="Edit"></td>
  </tr>
  </table>   
  </form>    
    <a href="search.jsp">Back</a>
  </body>
</html>
