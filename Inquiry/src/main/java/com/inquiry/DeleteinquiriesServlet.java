package com.inquiry;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteinquiriesServlet")
public class DeleteinquiriesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public DeleteinquiriesServlet() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("updateid");
		
		
		boolean result;
		
		result = InquiryDBUtill.deleteinquiryDetails(id);
		
		if(result == true)
		{			
			List<Inquiry> InquiryDetails = InquiryDBUtill.getInquiries();
			request.setAttribute("InquiryDetails", InquiryDetails);
			
			RequestDispatcher dis= request.getRequestDispatcher("InquiryList.jsp");
			dis.forward(request, response);
		}
		else
		{
			RequestDispatcher dis= request.getRequestDispatcher("Unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
