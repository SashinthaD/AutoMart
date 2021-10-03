package com.deliver;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DeliverInsertServlet")
public class DeliverInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String d_id=request.getParameter("d_id");
		
		int delivery_distance= Integer.parseInt(request.getParameter("delivery_distance"));
		double p_per_km =Double.parseDouble(request.getParameter("p_per_km"));
		
		String date=request.getParameter("date");
		String vehicle_no=request.getParameter("vno");
		String d_order_id=request.getParameter("d_order_id");
		String nic=request.getParameter("nic");
		boolean isTrue;
		
		isTrue=deliverDBUtil.insertDeliver(d_id, delivery_distance, p_per_km, date, vehicle_no, d_order_id, nic);
		
		if(isTrue == true) {
			
			List<Deliver>Deliverdetails=deliverDBUtil.getDeliverdetails(d_id);
			request.setAttribute("Deliverdetails", Deliverdetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("displayDeliver.jsp");
			dis.forward(request, response);
	}
	else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
