package automart.employee;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnect {

	private static String url = "jdbc:mysql://localhost:3306/automart?autoReconnect=true&useSSL=false";
	private static String user = "root";
	private static String pass = "Dilanka000112";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,user,pass);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}
}