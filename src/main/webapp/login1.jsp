<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
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
<body >
<nav>
<h2><i><b>TSK Bus Reservation</b></i></h2>
<ul>
<li><a href="busesr.html">Home</a></li>

<li><a href="signup1.jsp">Create Account</a></li>

</ul>
</nav>
<div align="center">
<h1>BUS RESERVATION</h1>
<table >
<tr>
<td><img src="images.jpeg"  width="400" height="400"/></td><br><br>

<td>
 <table >

<CENTER><h2>USER LOGIN</h2></CENTER>
<form action ="login1" method ="post">


<tr> <td> <b>User Name</b>  </td><td>:<input type="text" name="username" placeholder="uname"></td></tr><br> 
 <tr><td><b>Password</b> </td><td> :<input type="password" name="password" placeholder="Password"> </td></tr><br>
<tr><td> <input type="Submit" value="login"> </td></tr></table></td>
</tr>
</table>

</form>
</div>

</body>
</html>