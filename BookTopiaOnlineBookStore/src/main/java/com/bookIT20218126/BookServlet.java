package com.bookIT20218126;

import java.io.IOException;
import java.util.List;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bookname = request.getParameter("bookname");
		
		
		try {
		List<Book> bookDetails = BookDBUtil.validate(bookname);
		request.setAttribute( "bookDetails",bookDetails);
		
		}
		catch(Exception b){
			b.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("bookaccount.jsp");
		dis.forward(request, response);
		
		
	}

}