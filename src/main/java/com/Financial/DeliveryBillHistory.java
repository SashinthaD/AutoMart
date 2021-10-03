package com.Financial;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeliveryBillHistory")
public class DeliveryBillHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		String deliverydate = request.getParameter("deliverydate");
				
		
		
		List<inserted_deliver_info> deliveridbill = finacialDButill.getdeliverbillhistory(deliverydate); 
		
	
		request.setAttribute("deliveridbill", deliveridbill);
		
		
		
		RequestDispatcher rs = request.getRequestDispatcher("DeliveryBillHistory.jsp");
		
		rs.forward(request, response);
		
	}

}
