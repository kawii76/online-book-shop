package com.inquiry;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InquiryGetBySearch")
public class InquiryGetBySearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public InquiryGetBySearch() {
        super();
      
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String title = request.getParameter("searchtitle");
		
		try {
			
			 List<Inquiry> InquiryDetails = InquiryDBUtill.getInquiryDetailsBySearch(title);
			 request.setAttribute("InquiryDetails", InquiryDetails);
			 
			 }
		catch (Exception e)
			 {
				 e.printStackTrace();
			 }
			 
			RequestDispatcher dis = request.getRequestDispatcher("InquiryList.jsp");
			 dis.forward(request, response);
	}

}
