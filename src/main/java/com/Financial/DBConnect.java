package com.Financial;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/automart?autoReconnect=true&useSSL=false";
	private static String userNmae = "root";
	private static String password = "Dilanka000112";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userNmae, password);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is failed");
		}
		
		return con;
		
	}
}


