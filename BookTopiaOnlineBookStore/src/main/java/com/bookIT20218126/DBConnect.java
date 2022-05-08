package com.bookIT20218126;


import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DBConnect {
	
	

		private static String url = "jdbc:mysql://localhost:3306/store";
		private static String userName = "root";
		private static String password = "ndksliit";
		private static Connection con;
		

		public static Connection getConnection() {
			
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				
				
				
				con = DriverManager.getConnection(url,userName,password);
			}
			catch (Exception b) {
				System.out.println("Database connectionIT20218126 is not success!!!");
			}
			
			return con;
		}

}
