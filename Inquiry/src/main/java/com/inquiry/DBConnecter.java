package com.inquiry;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnecter {
	
	//create bd
	
			private	static String url="jdbc:mysql://localhost:3306/inquiry";
			private	static String user="root";
			private	static String pass ="kaumadi";
			
			public static Connection con;
			
			public static Connection getConnection()
			{
				try
				{
					Class.forName("com.mysql.jdbc.Driver");
					
					con = DriverManager.getConnection(url,user,pass);

				}
				catch(Exception e)
				{
					System.out.println("Database Connect is not success");
				}
				return con;
			}

}
