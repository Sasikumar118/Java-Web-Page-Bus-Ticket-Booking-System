<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking list</title>
<style>
table, th, td {
  border: 5px solid black;
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
<li><a href="#">About</a></li>


<li><a href="login.jsp">Login</a></li>
<li><a href="signup.jsp">Sign up</a></li>
</ul>
</nav>
 <div align="center">
  <h1>BUS RESERVATION</h1>
 <h2>Booked Tickets</h2>
 <table border: border="100px solid block">
	 <tr>
	 <th>ID</th>
	 <th>name</th>
	 <th>From</th>
	  <th>To</th>
	   <th>Date</th>
	 <th>Total Seats</th></tr>
 <%@ page import="java.sql.*" %>
 <% 
 ResultSet rs= null;
 Connection con=null;
 PreparedStatement ps=null;
 String query=    "select  id ,name,from_p,to_p,date_j,seat_number from booking1";
 try{
	 
	 Class .forName("com.mysql.jdbc.Driver");
	 con= DriverManager.getConnection("jdbc:mysql://localhost:3306/list","root","sasi2003");
	 ps=con.prepareStatement(query);
	 
	 rs=ps.executeQuery();
	 while(rs.next()){%>
	
	 <tr><td><%= rs.getInt(1) %></td>
	 <td><%= rs.getString(2)  %></td>
	  <td><%= rs.getString(3) %></td>
	   <td><%= rs.getString(4) %></td>
	     <td><%= rs.getString(5) %></td>
	       <td><%= rs.getString(6) %></td>
	   <td><h3>Booked</h3></td></tr>
	 
	 
	 
	 
		
		
		
	<% }
 }catch(Exception e){
	 out.print(e);
 
 }%>
 
 
 
 
 
 </table>
 
 
  </div>
</body>
</html>