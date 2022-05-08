package com.book;


import java.io.IOException;
import java.util.List;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateBookServlet")
public class UpdateBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String bookname = request.getParameter("bookname");
		String category = request.getParameter("category");
		String author = request.getParameter("autor");
		String price= request.getParameter("price");
		String description = request.getParameter("description ");

		boolean isTrue  ;
		
		isTrue = BookDBUtil.updatebook(id,bookname,category,author,price,description);
		
		
		if(isTrue == true) {
			
			List<Book> bookDetails = BookDBUtil.getBookDetails(id);
			request.setAttribute("bookDetails", bookDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("bookaccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Book> bookDetails = BookDBUtil.getBookDetails(id);
			request.setAttribute("bookDetails", bookDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("bookaccount.jsp");
			dis.forward(request, response);
		}
		
		
			}

}
