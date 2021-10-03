package com.Financial;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeliverBillDelete")
public class DeliverBillDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		String billID = request.getParameter("billID");
		String cusID = request.getParameter("cusid");
		String orderID = request.getParameter("orderID");
		String deliverdate = request.getParameter("orderDate");
		String billdate = request.getParameter("billDate");
		String tax = request.getParameter("tax");
		String cost = request.getParameter("cost");
		String total = request.getParameter("total");
		
		
		
		
		
		boolean isTrue;
		boolean IsTrue;
		
		
		isTrue = finacialDButill.insertToOtherdeliver(billID, cusID, orderID,deliverdate,billdate,tax,cost,total);

		IsTrue = finacialDButill.deletedeliverbills(billID);
		
		
		if (isTrue == true && IsTrue == true) {
			
			List<inserted_deliver_info> deliveridbill = finacialDButill.getdeliverbillhistory(billdate); 
			
			
			request.setAttribute("deliveridbill", deliveridbill);
			
		RequestDispatcher dis1 = request.getRequestDispatcher("DeliveryBillHistory.jsp");
		dis1.forward(request, response);
		}
		
		
		else {
		RequestDispatcher dis2 = request.getRequestDispatcher("DeliverBillDelete.jsp");
		dis2.forward(request, response);
		}
		
		
		
		
		
	}

}
