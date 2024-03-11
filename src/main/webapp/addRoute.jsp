<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
  border: 5px solid white;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
}
</style>
<link rel="Stylesheet"  href="style.css">
</head>
<body>
<nav>
<h2><i><b>TSK Bus Reservation</b></i></h2>
<ul>
<li><a href="admin.jsp">Home</a></li>
<li><a href="viewRoute.jsp">View Buses</a></li>



</ul>
</nav>
<div align="center">
<h1><b>BUS RESERVATION</b></h1>
<h2><b>Add Route Bus</b></h2>
<table >
<tr>
<td><img src="images.jpeg"  width="400" height="400"/></td><br><br>

<td>
<table>
       <form action="AddRouteServlet" method="post">
      <tr><td>   <b>From:</b> </td><td></td><td> <input type="text" name="from"></td></tr>
     <tr><td>  <b> To:</b> </td><td></td><td> <input type="text" name="to"></td></tr>
      <tr><td>  <b>Date:</b> </td><td></td><td> <input type="date" name="date"></td></tr>
      <tr><td>  <b> Start Time:</b> </td><td></td><td> <input type="time" name="startTime"></td></tr>
      <tr><td>  <b> End Time:</b> </td><td></td><td> <input type="time" name="endTime"></td></tr>
      <tr><td>  <b> Type: </b> </td><td></td><td><input type="text" name="type"></td></tr>
      <tr><td>  <b> Position:</b> </td><td></td><td> <input type="text" name="position"></td></tr>   
    
       <tr><td>  <input type="submit" value="Add Route Bus"></td></tr></table></td></tr>
    </form>
    </table>
    </div>

</body>
</html>