<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>Adding Student</title>
    <link rel="stylesheet" href="mystyle.css" type="text/css" />
  </head>  
  <body>
  <h2>Adding Student!</h2>

  <c:if test="${param.message!=null}">
  <div class='boldred'>${param.message}</div>
  </c:if>

  <form action="addStudent" method="post">
  <table>
  <tr>
  <td>Rollno.</td>
  <td><input type="text" name="roll"></td>
  </tr>
    <tr>
  <td>Name</td>
  <td><input type="text" name="name"></td>
  </tr>
    <tr>
  <td>Course</td>
  <td><input type="text" name="course"></td>
  </tr>
    <tr>
  <td>City</td>
  <td><input type="text"  name="city"></td>
  </tr>
    <tr>
  <td colspan="2"> <input type="submit" value="Add"></td>
  </tr>
  </table> 
  </form>   
  <a href="index.jsp">Back</a>
  </body>
</html>
