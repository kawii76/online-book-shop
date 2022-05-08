package com.bookIT20218126;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BookInsert")
public class BookInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bookname = request.getParameter("bookname");
		String category = request.getParameter("category");
		String author = request.getParameter("author");
		String price= request.getParameter("price");
		String description = request.getParameter("description ");
		
		
		
		boolean isTrue;
		
	isTrue = BookDBUtil.insertbook(bookname,category,author,price,description );	
	
	if(isTrue == true) {
		RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
		dis.forward(request, response);
	}else {
		
		RequestDispatcher dis2 =request.getRequestDispatcher("unsuccess.jsp");
		dis2.forward(request, response);
	}
		

	}

}
