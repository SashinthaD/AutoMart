package com.Financial;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeliverBillUpdate")
public class DeliverBillUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		String diliverBillid = request.getParameter("diliverBillid");
		String billDate = request.getParameter("billDate");
		String tax = request.getParameter("tax");
		String cost = request.getParameter("cost");
		String total = request.getParameter("total");
		
		
		
	

		boolean isTrue;

		isTrue = finacialDButill.updatdeliverbill(diliverBillid, billDate, tax,cost,total);

		if (isTrue == true) {
			
			List<inserted_deliver_info> deliveridbill = finacialDButill.getdeliverbillhistory(billDate); 
			
			
			request.setAttribute("deliveridbill", deliveridbill);
			
			
		RequestDispatcher dis1 = request.getRequestDispatcher("DeliveryBillHistory.jsp");
		dis1.forward(request, response);
		}
		else {
		RequestDispatcher dis2 = request.getRequestDispatcher("DeliverBillUpdate.jsp");
		dis2.forward(request, response);
		}
		
		
	}

}
