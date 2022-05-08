package com.bookIT20218126;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class BookDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt= null;
	private static ResultSet rs = null;
	
	
	
	
	public static List<Book> validate(String bookname){
		
		ArrayList<Book> book = new ArrayList<>();
		
		
		
		
		//validate
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "select * from books where bookname='"+bookname+"'";
				rs = stmt.executeQuery(sql);
			
				if(rs.next()) {
					int id = rs.getInt(1);
					String bookname1 = rs.getString(2);
					String category= rs.getString(3);
					String author = rs.getString(4);
					String price = rs.getString(5);
					String description = rs.getString(6);
					
					Book b = new Book(id,bookname1,category,author,price,description);
				   book.add(b);
				}
				
			}
			catch(Exception b) {
				b.printStackTrace();
			}
				
			return book;
			
		}
		
		  public static boolean insertbook(String bookname,String category,String author, String price, String description) {
		    	
		    	boolean isSuccess = false;
		    	
		    
		    	//validate
				try {

					con = DBConnect.getConnection();
		    		stmt = con.createStatement();	
					
					String sql = "insert into books values(0,'"+ bookname+"','"+ category+"','"+ author+"','"+ price+"','"+ description+"')";
					int rs = stmt.executeUpdate(sql);
					
					if(rs > 0) {
						isSuccess = true;
					}else {
						isSuccess = false;
					}
					
				} 
				
				catch (Exception b) {
		    		b.printStackTrace();
		    	}
		 	
		    	
		    	return isSuccess;
		    }

		
		
		
		public static boolean updatebook(String id, String bookname, String category, String author, String price,
				String description) {
			  try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "update books set name='"+bookname+"', category='"+category+"',author='"+author+"',price='"+price+"',description='"+description+"'"
		    				+ "where id='"+id+"'";
		    		int rs = stmt.executeUpdate(sql);
		    		
		    		if(rs > 0) {
		    			isSuccess = true;
		    		}
		    		else {
		    			isSuccess = false;
		    		}
		    		
		    	}
		    	catch(Exception b) {
		    		b.printStackTrace();
		    	}
		    	
		    	return isSuccess;
			  
			 
		  }

		
		public static List<Book> getBookDetails(String id) {

			int convertedID = Integer.parseInt(id);
			ArrayList<Book> book = new ArrayList<>();
	    	
			try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from books where id='"+convertedID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id1 = rs.getInt(1);
	    			String bookname = rs.getString(2);
	    			String category = rs.getString(3);
	    			String author= rs.getString(4);
	    			String price = rs.getString(5);
	    			String description = rs.getString(6);
	    			
	    			
	    			Book b = new Book(id1,bookname,category,author,price,description);
	    			book.add(b);
	    		}
	    		
	    	}
	    	catch(Exception b) {
	    		b.printStackTrace();
	    	}	
			return book;
		}

public static boolean deleteBook(String id){
	  
	  int convId = Integer.parseInt(id);
	  
	  try {
		  
		  con=DBConnect.getConnection();
		  stmt = con.createStatement();
		  String sql = "delete from books where id='"+convId+"'";
		  int r = stmt.executeUpdate(sql);
		 
		  if(r>0) {
			  isSuccess = true;
			  
		  }else {
			isSuccess =false;  
			  
		  }
		  
	  }catch(Exception e) {
  		e.printStackTrace();
  	}	
	  return isSuccess;
}

}


		