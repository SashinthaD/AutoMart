package com.Financial;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RepairInsert")
public class RepairInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String date = request.getParameter("date");
		String sparepart = request.getParameter("sparepart");
		String service = request.getParameter("service");
		String discount = request.getParameter("discount");
		String repair = request.getParameter("repair");
		String qty = request.getParameter("qty");
		String amount = request.getParameter("billamount");
		
		
	

		boolean isTrue;

		isTrue = finacialDButill.insertrepairbill(date, sparepart, service,discount,repair,qty,amount);

		if (isTrue == true) {
		RequestDispatcher dis1 = request.getRequestDispatcher("repair_and_deliver.jsp");
		dis1.forward(request, response);
		}
		else {
		RequestDispatcher dis2 = request.getRequestDispatcher("RepairBillDetails.jsp");
		dis2.forward(request, response);
		}
		
		
		
		
	}

}
