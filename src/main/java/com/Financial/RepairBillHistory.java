package com.Financial;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RepairBillHistory")
public class RepairBillHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String date = request.getParameter("date");
				
				
		List<billhistory> idbill = finacialDButill.gethistory(date); 
		
	
		request.setAttribute("idbill", idbill);
		
		
		
		RequestDispatcher rs = request.getRequestDispatcher("RepairBillHistory.jsp");
		
		rs.forward(request, response);
		
		
	}

}
