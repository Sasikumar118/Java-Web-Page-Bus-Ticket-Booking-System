package sign1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import SignupSer.demosignbean;

public class demosigndb {
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
	public String insert(demosignbean1 be) throws SQLException {
		// TODO Auto-generated method stub
		
		loadDriver(dbDriver);
		Connection con=getConnection();
		String result="you have successfully regsister";
				
	String qurry="insert into admin(uname,password,email,phone) values(?,?,?,?)";
	PreparedStatement ps;
	try {
		ps=con.prepareStatement(qurry);
		ps.setString(1,be.getUname());
		ps.setString(2,be.getPassword());
		ps.setString(3,be.getEmail());
		ps.setString(4,be.getPhone());
		ps.executeUpdate();		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		result ="Do not register";
	}
	return result;
	}
	}
