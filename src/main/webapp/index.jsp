<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    int TOTAL_SEATS = 10; // Define the total number of seats
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seat Selection</title>
    <link rel="Stylesheet"  href="style.css">
</head>
<body ">
<nav>
<h2><i><b>TSK Bus Reservation</b></i></h2>
<ul>
<li><a href="busesr.html">Home</a></li>


<li><a href="login.jsp">login</a></li>

<li><a href="signup.jsp">Create Account</a></li>

</ul>
</nav>
<div align="center"  border ="1px solid black  text-decoration:none";
	color :"white;">
<h1>BUS RESERVATION</h1><br>
<table border="50px solid black" length=100;>
<tr><td><img src=images.jpeg  width=500 height=500></td>
	                
	               
<td><table  border="50px solid white"; length=500 wideth=500 body >
   <form action="bookSeats" method="post" >
   
        <tr><td><label for="name"><b>Name</b>:</label></td>
        <td><input type="text" id="name" name="name" required><br></td></tr>
           <tr><td><label for="phone"><b>Mobile</b>:</label></td>
       <td> <input type="phone" id="phone" name="phone" required><br></td></tr>
        <tr><td><label for="email"><b>Email</b>:</label></td>
       <td> <input type="email" name="email"   required><br></td></tr>
       
              <tr><td><label for=type><b>BusType</b>:</label></td>
       <td> <input type="checkbox"  name="type" value ="AC">AC<br>
        <input type="checkbox"  name="type" value ="Non/AC">Non/AC<br>   </td></tr>
        <tr><td><label for="from"><b>From</b>:</label></td>
       <td> <input type="text" name="from"   required><br></td></tr>
        <tr><td><label for="to"><b>To</b>:</label></td>
       <td> <input type="text" name="to"   required><br></td></tr>
        <tr><td><label for="date"><b>Journey of the date</b>:</label></td>
       <td> <input type="date" name="date"   required><br></td></tr>
       
        <tr><td><label for="time"><b>Starting Time</b>:</label></td>
       <td> <input type="time" name="st"   required><br></td></tr>
                                                
        <tr><td><h4>Select Seats:</h4></td>
        <!-- Here you can dynamically generate checkboxes for each seat -->
       <td> <%
        
            for (int i = 1; i <= TOTAL_SEATS; i++) {
        %>
            <input type="checkbox" name="seat" value="<%= i %>"> Seat <%= i %><br>
        <% } %></td></tr>
        
        <tr><td><input type="submit" value="Book Tickets"></td></tr></td></table></tr></table>
    </form></div>
   

</body>
</html>