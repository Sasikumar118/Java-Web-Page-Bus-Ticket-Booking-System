<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>signup</title>
<style>
table, th, td {
  border: 30px solid white;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
}
</style>
<link rel="Stylesheet"  href="style.css">
</head>

<body ">
<nav>
<h2><i><b>TSK Bus Reservation</b></i></h2>
<ul>
<li><a href="busesr.html">Home</a></li>

<li><a href="login.jsp">login</a></li>

</ul>
</nav>
<div align=center>
<h1 ><b> Bus Reservation</b></h1>


<table  >
<tr><td><img src="images.jpeg"  width="700" height="400"/></td><br>
<td>
<table    >

<center> <h2 ><b>SIGN UP</b></h2></center>
<form action ="Register" method ="post">

<tr><td>Username:</td><td><input type="text" name="uname" placeholder="uname"></td></tr>
<tr><td>password:</td><td><input type="password" name="password" placeholder="Password"></td></tr>
<tr><td>Email:</td><td><input type="email" name="email" placeholder="Email"></td></tr>
<tr><td>phone:</td><td><input type="phone" name="phone" placeholder="Mobile"></td></tr>
<tr><td></td><td><input type="submit" value="register"></tr></tr></table></td></tr>
</table>
</form>
</div>


</body>
</html>