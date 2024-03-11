<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
  border: 5px solid block;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
}
</style>
</head>
<body>
<div align ="center">
<h1><b>BUS RESERVATION</b></h1>
<h2>View Route Buses</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>From</th>
            <th>To</th>
            <th>Date</th>
            <th>Start Time</th>
            <th>End Time</th>
            <th>Type</th>
            <th>Position</th>
        </tr>
        <% 
            try {
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/list", "root", "sasi2003");
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM routebus");
                while(rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("id") %></td>
            <td><%= rs.getString("From_p") %></td>
            <td><%= rs.getString("To_p") %></td>
            <td><%= rs.getDate("t_date") %></td>
            <td><%= rs.getTime("st") %></td>
            <td><%= rs.getTime("et") %></td>
            <td><%= rs.getString("type") %></td>
            <td><%= rs.getString("position") %></td>
        </tr>
        <%
                }
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        %>
    </table>
    </div>
</body>
</html>