package com.inquiry;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateinquiriesServlet")
public class UpdateinquiriesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateinquiriesServlet() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("updateid");
		String type = request.getParameter("updatetitle");
		String inquiry = request.getParameter("updateinquiry");
		

		
		boolean value;
		
		value = InquiryDBUtill.updateinquiriesDetails(id, type, inquiry);
		
		if(value == true)
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
