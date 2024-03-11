

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddRouteServlet
 */
@WebServlet("/AddRouteServlet")
public class AddRouteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddRouteServlet() {
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
		String from = request.getParameter("from");
        String to = request.getParameter("to");
        String date = request.getParameter("date");
        String startTime = request.getParameter("startTime");
        String endTime = request.getParameter("endTime");
        String type = request.getParameter("type");
        String position = request.getParameter("position");
        
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/list", "root", "sasi2003");
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO routebus (From_p, To_p, t_date, st, et, type, position) VALUES (?, ?, ?, ?, ?, ?, ?)");
            pstmt.setString(1, from);
            pstmt.setString(2, to);
            pstmt.setString(3, date);
            pstmt.setString(4, startTime);
            pstmt.setString(5, endTime);
            pstmt.setString(6, type);
            pstmt.setString(7, position);
            pstmt.executeUpdate();
            conn.close();
            response.sendRedirect("viewRoute.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}

}
