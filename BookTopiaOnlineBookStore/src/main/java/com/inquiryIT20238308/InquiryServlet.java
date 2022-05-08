package com.inquiryIT20238308;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InquiryServlet")
public class InquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public InquiryServlet() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String inquiry = request.getParameter("inquiry");
		
		
		boolean isTrue;
		
		isTrue = InquiryDBUtill.insertinquiries(title, inquiry);
		
		if(isTrue == true) {
			 List<Inquiry> InquiryDetails = InquiryDBUtill.getInquiries();
			 request.setAttribute("InquiryDetails", InquiryDetails);
			 

			
			RequestDispatcher dis = request.getRequestDispatcher("InquiryList.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
