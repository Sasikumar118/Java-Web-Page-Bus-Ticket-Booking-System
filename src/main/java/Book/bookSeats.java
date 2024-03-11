package Book;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class bookSeats
 */
@WebServlet("/bookSeats")
public class bookSeats extends HttpServlet {


	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/list";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "sasi2003";
    private static final int TOTAL_SEATS = 10; // Total number of seats
    private static final double TICKET_PRICE = 350.0; // Price per seat

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new IllegalStateException("Failed to load JDBC driver");
        }
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String name = request.getParameter("name");
		 String phone = request.getParameter("phone");
		 String email = request.getParameter("email");
		 String type = request.getParameter("type");
		 String from = request.getParameter("from");
		 String to= request.getParameter("to");
		 String date = request.getParameter("date");
		 String  st = request.getParameter("st");
		
		
	
	        String[] selectedSeats = request.getParameterValues("seat");

	        if (selectedSeats != null && selectedSeats.length > 0) {
	            // Check if all selected seats are available
	            if (areSeatsAvailable(selectedSeats)) {
	                int numSeats = selectedSeats.length;
	                double totalPrice = TICKET_PRICE * numSeats;

	                

	                try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
	                    String sql = "INSERT INTO booking1 (name, phone,email,  type,from_p,to_p,date_j,start_time, seat_number, total_price) VALUES (?, ?,?, ?,?, ?,?,?,?,?)";
	                    try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
	                        pstmt.setString(1, name);
	                        pstmt.setString(2, phone);
	                        pstmt.setString(3, email);
	                        pstmt.setString(4, type);
	                        pstmt.setString(5, from);
	                        pstmt.setString(6, to);
	                        pstmt.setString(7, date);
	                        pstmt.setString(8,st);
	                        
	                        pstmt.setInt(9, numSeats);
	                        pstmt.setDouble(10, totalPrice);
	                        pstmt.executeUpdate();
	                    }
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                    response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
	                    return;
	                         }

	                response.setContentType("text/html");
	                PrintWriter out = response.getWriter();
	                out.println("<html><body >");
	             
	                out.println("<div align =\"center\">");
	                out.println("<h1>BUS RESERVATION</h1>");
	                
	                out.println("<h1>Tickets Booked Successfully!</h1>");
	                out.println("<table    border=\"50px solid black\" length=100;>");
	                out.println("<tr><td><img src=images.jpeg  width=300 height=300></td>");
	                
	                out.println("<td><table    border=\"50px solid black\" length=100;>");
	                out.println("<tr><td>From:</td> " +"<td>" + from + "</td></tr>");
	                out.println("<tr><td>To:</td> " +"<td>" + to + "</td></tr>");
	                out.println("<tr><td>Starting Time:</td> " +"<td>" + st + "</td></td> ");
	                out.println("<tr><td>Journey of Date:</td> " +"<td>" + date+ "</td></tr>");
	                out.println("<tr><td>Name:</td> " +"<td>" + name + "</td></tr>");
	                out.println("<tr><td>Mobile:</td> " +"<td>" + phone + "</td></tr>");
	                out.println("<tr><td>Email:</td> " +"<td>" + email + "</td></tr>");

	                out.println("<tr><td>BusType:</td> " +"<td>" +type + "</td></tr>");
	              
	                out.println("<tr><td>Number of Seats: </td>" +"<td>" + numSeats + "</td></tr>");
	                out.println("<tr><td>Price per Seat: $</td>"+"<td>"  + TICKET_PRICE + "</td></tr>");
	                out.println("<tr><td>Total Price: $</td>" +"<td>" + totalPrice + " </td><tr>");
	                
	                out.println("</table><td>");
	               
	                out.println("<img src='download%20(1).jpeg' alt='Booked Seat Image'>");
	                out.println("</table>");
	               
	                
	                out.println("<h1 style=color=red>Thank you!!!</h1>");
	                out.println("</div>");
	                out.println("</body></html>");
	                 
	                }else{
	                response.setContentType("text/html");
	                PrintWriter out = response.getWriter();
	                out.println("<html><body >");
	                out.println("<div align =\"center\">");
	                out.println("<h1>BUS RESERVATION</h1>");
	                out.println("<h1>Seats are not available!</h1>");
	                out.println("<p>One or more selected seats are already booked.</p>");
	                out.println("</div>");
	                out.println("</body></html>");
	                
	                }
	          }else{
	            response.setContentType("text/html");
	            PrintWriter out = response.getWriter();
	            out.println("<html><body>");
	            out.println("<div align =\"center\">");
                out.println("<h1>BUS RESERVATION</h1>");
	            out.println("<h2>No seats selected!</h2>");
	            out.println("<p>Please select at least one seat.</p>");
	            out.println("</div>");
	            out.println("</body></html>");
	        }
	}

	    private boolean areSeatsAvailable(String[] selectedSeats) {
	        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
	            String sql = "SELECT COUNT(*) FROM booking1 WHERE seat_number = ?";
	            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
	                for (String seat : selectedSeats) {
	                    pstmt.setInt(1, Integer.parseInt(seat));
	                    ResultSet rs = pstmt.executeQuery();
	                    if (rs.next() && rs.getInt(1) > 0) {
	                        return false; // Seat is already booked
	                    }
	                }
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false; // Assume seats are not available in case of database error
	        }
	        return true;	
	}

}
