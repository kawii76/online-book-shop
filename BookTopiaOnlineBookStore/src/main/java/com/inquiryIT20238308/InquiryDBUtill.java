package com.inquiryIT20238308;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class InquiryDBUtill {
	
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	//Insert inquiries
	
	  public static boolean insertinquiries( String title, String inquiry) {
	    	
	    	boolean isSuccess = false;
	    	
	    	System.out.println("Line 23");
	    	
	    	try {
	    		con = DBConnecter.getConnection();	
	    		stmt = con.createStatement();
	    	    String sql = "insert into inquiries values ( 0,'"+title+"','"+inquiry+"',0)";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    }
	  
	  
	//Get All inquiries 
	 
		
		public static List<Inquiry> getInquiries() {
			  
			ArrayList<Inquiry> inq = new ArrayList<>();
			  
			  try {
				  
				  con = DBConnecter.getConnection();
				  stmt = con.createStatement();
				  String sql ="select * from inquiries";
				  rs = stmt.executeQuery(sql);
				  
				  while(rs.next()) {
					  int id = rs.getInt(1); 
					  String title = rs.getString(2);
					  String inquiry = rs.getString(3);
					  String answer = rs.getString(4);
			
					 
					  Inquiry e = new Inquiry(id, title, inquiry, answer);
					  
					  inq.add(e);
				  }

			  }
			  catch(Exception e) {
				  e.printStackTrace(); 
			  }
			return inq;
		}
		
		//Get All inquiries By Search 
		
		public static List<Inquiry> getInquiryDetailsBySearch(String titles)
		{
			ArrayList<Inquiry> out = new ArrayList<>();
			
			try
			{
				con = DBConnecter.getConnection();
				stmt = con.createStatement();
				String sql = "select * from inquiries where title='"+titles+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next())
				{
					int id = rs.getInt(1);
					String title = rs.getString(2);
					String inquiry = rs.getString(3);
					String answer = rs.getString(4);
				
					
					Inquiry e = new Inquiry(id, title, inquiry,answer);
					
					out.add(e);
				}
				
				
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return out;
		}
		
		//inquiries details Update
		
		public static boolean updateinquiriesDetails(String id,String title, String inquiry)
		{
			boolean Success=false;
			
			try
			{
				con = DBConnecter.getConnection();
				stmt = con.createStatement();
				String sql = "update inquiries set title='"+title+"', inquiry='"+inquiry+"' where inquiryid='"+id+"'";
				
				int sus = stmt.executeUpdate(sql);
				
				if(sus > 0)
				{
					Success=true;
				}
				else
				{
					Success=false;
				}
				
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return Success;
			
		}
		
		//Get a inquiry
		
		public static List<Inquiry> getInquiryDetails(String pid)
		{
			int Cid = Integer.parseInt(pid);
			ArrayList<Inquiry> out = new ArrayList<>();
			
			try
			{
				con = DBConnecter.getConnection();
				stmt = con.createStatement();
				String sql = "select * from inquiries where inquiryid='"+Cid+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next())
				{
					int id = rs.getInt(1);
					String title = rs.getString(2);
					String inquiry = rs.getString(3);
					  String answer = rs.getString(4);
				
					
					Inquiry e = new Inquiry(id, title, inquiry,answer);
					
					out.add(e);
				}
				
				
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return out;
		}
		
		//Delete 
		public static boolean deleteinquiryDetails(String nic)
		{
			
			boolean DSuccess=false;
			
			try
			{
				con = DBConnecter.getConnection();
				stmt = con.createStatement();
				String sql = "DELETE FROM inquiries WHERE inquiryid='"+nic+"'";
				
				int sus = stmt.executeUpdate(sql);
				
				if(sus > 0)
				{
					DSuccess=true;
				}
				else
				{
					DSuccess=false;
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		
			return DSuccess;
			
		}
		
		
		
		//Add Answer
		
		public static boolean AddAnswer(String id, String answer)
		{
			boolean Success=false;
			
			try
			{
				con = DBConnecter.getConnection();
				stmt = con.createStatement();
				String sql = "UPDATE inquiries SET answer='"+answer+"' WHERE inquiryid ='"+id+"'";
				
				System.out.println("SQL is " + sql);
				
				int sus = stmt.executeUpdate(sql);
				
				if(sus > 0)
				{
					Success=true;
				}
				else
				{
					Success=false;
				}
				
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return Success;
			
		}
	  

}
