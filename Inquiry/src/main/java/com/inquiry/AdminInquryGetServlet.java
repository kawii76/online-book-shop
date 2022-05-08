package com.inquiry;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminInquryGetServlet")
public class AdminInquryGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AdminInquryGetServlet() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			System.out.println("Get ");
			 List<Inquiry> InquiryDetails = InquiryDBUtill.getInquiries();
			 request.setAttribute("InquiryDetails", InquiryDetails);
			 
			 }
		catch (Exception e)
			 {
				 e.printStackTrace();
			 }
			 
			RequestDispatcher dis = request.getRequestDispatcher("AdminInquiryList.jsp");
			 dis.forward(request, response);
	}

}
