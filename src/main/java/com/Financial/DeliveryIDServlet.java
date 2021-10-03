package com.Financial;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeliveryIDServlet")
public class DeliveryIDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String did = request.getParameter("did");
		
		
		List<deliver> deliverdetails = finacialDButill.getdeliverdetails(did); 
		
	
		request.setAttribute("deliverdetails", deliverdetails);
		
		
		
		RequestDispatcher rs = request.getRequestDispatcher("DeliverBillDetails.jsp");
		
		rs.forward(request, response);

	}

}
