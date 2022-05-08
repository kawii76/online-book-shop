package com.ordersIT20018764;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchSupplierServlet
 */
@WebServlet("/SearchSupplierServlet")
public class SearchSupplierServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String supplier = request.getParameter("supplierNamesearch");
			try {
				
				List<ordersup> supname = BookordersDBUtil.validatename(supplier);
				request.setAttribute("supname", supname);
				
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("PublisherOrderSearchPage.jsp");
			dis.forward(request, response);
		
	}

}
