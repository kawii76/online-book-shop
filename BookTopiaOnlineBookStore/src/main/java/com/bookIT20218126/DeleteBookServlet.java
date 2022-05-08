package com.bookIT20218126;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteBookServelet")
public class DeleteBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("bookid");
		boolean isTrue;
		
		isTrue = BookDBUtil.deleteBook(id);
		

		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("bookinsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Book> bookDetails = BookDBUtil.getBookDetails(id);
			request.setAttribute("bookDetails", bookDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("bookaccount.jsp");
			dispatcher.forward(request, response);
		}
		
	}
		
		
}
