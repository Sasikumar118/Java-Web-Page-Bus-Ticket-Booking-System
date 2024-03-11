package login1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class logindb {
	private String dbUrl="jdbc:mysql://localhost:3306/list";;
	private String dbuname="root";
	private String dbPassword="sasi2003";
	private String dbDriver="com.mysql.cj.jdbc.Driver";
	
	public void loadDriver( String dbDriver) {
		
		 try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public Connection getConnection() throws SQLException {
		Connection con = DriverManager.getConnection(dbUrl, dbuname, dbPassword);
		
		
		return con;
		
		
	}

	public boolean validate(loginbean1 loginbean11) throws SQLException {
		// TODO Auto-generated method stub
	loadDriver(dbDriver);
		
		Connection con=getConnection();
		boolean status=false;
		String qurey="select *from  admin  where uname=? and password=?";
		PreparedStatement ps;
		try {
			ps=con.prepareStatement(qurey);
			ps.setString(1, loginbean11.getUsername());
			ps.setString(2, loginbean11.getPassword());
			ResultSet rs=ps.executeQuery();
			status =rs.next();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}

}
