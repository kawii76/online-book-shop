package com.orders;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/onlinebookstore";
	private static String user = "root";
	private static String pass = "ndksliit";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, pass);
			
		}
		catch (Exception e) {
			System.out.println("Database Connection is not Successful");
		}
		return con;
	}
	
}
