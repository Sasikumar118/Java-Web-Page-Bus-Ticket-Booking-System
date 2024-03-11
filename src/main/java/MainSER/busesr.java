package MainSER;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class busesr
 */
@WebServlet("/busesr")
public class busesr extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public busesr() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter(); 
		String from= request.getParameter("from");
		String to= request.getParameter("to");
	    String DATE=request.getParameter("DATE");
	    
	    try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/list","root","sasi2003");
	    	PreparedStatement pst=con.prepareStatement("select *from routebus where From_p=? and  To_p=? and t_date=?");
	    	pst.setString(1,from);
	    	pst.setString(2,to);
	    	pst.setString(3,DATE);
	    	out.println("<html>");
	    	out.println("<head>");
	    	out.println("<link rel=\"Stylesheet\"  href=\"style.css\">");
	    
	    	out.println("</head>");
	    	out.println("<body style=\"background-color:powderblue;\">");
	    	out.println("<nav>");
	    	out.println("<h2><i><b>TSK Bus Reservation</b></i></h2>");
	    	out.println("<ul>");
	    	out.println("<li><a href=\"busesr.html\">Home</a></li>");
	    	out.println("<li><a href=\"login.jsp\">Admin</a></li>");
	    	out.println("<li><a href=\"signup.jsp\">Sign up</a></li>");
	    	out.println("</ul>");
	    	out.println("</nav>");
	    	out.print("<div align =\"center\"><table  border: border=\"100px solid block\" >");
	    	out.print("<caption><h1>BUS RESERVATION<h1/></caption>");
	    	
	    	ResultSet rs=pst.executeQuery();
	    	ResultSetMetaData rsmd=rs.getMetaData();
	    	int totalColumn=rsmd.getColumnCount();
	    	out.print("<tr>");
	    	for(int i=1;i<=totalColumn;i++){
	    		out.print("<th>"+rsmd.getColumnName(i)+"</th>");
	    	} 
	    	out.print("</tr>");
	    while(rs.next()) {
	    	out.print("<tr><td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+"- </td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getTime(5)+"</td>"+"<td>"+rs.getTime(6)+"</td>"+"<td>"+rs.getString(7)+"   </td>"+"  <td>"+rs.getString(8)+"  <td><a href=\"login.jsp\"> BOOK</a></td><td><img src=\"download.jpeg\"  alt=\"BUS\" width=\"200\" height=\"100\"></td><td><hr></tb></tr>");
	    	
	    }
	    out.print("</table>");
	    	
	   	
	    	
	    }catch(Exception e) {
	    	
	    }
	}

}
