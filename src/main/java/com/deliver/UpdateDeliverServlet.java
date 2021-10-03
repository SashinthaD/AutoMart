package com.deliver;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/UpdateDeliverServlet")
public class UpdateDeliverServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String d_id=request.getParameter("d_id");
		String delivery_distance=request.getParameter("delivery_distance");
		String p_per_km=request.getParameter("p_per_km");
		String delivery_amount=request.getParameter("delivery_amount");
		String date=request.getParameter("date");
		String vehicle_no=request.getParameter("vno");
		String d_order_id=request.getParameter("d_order_id");
		String nic=request.getParameter("nic");

		boolean istrue;
		istrue=deliverDBUtil.UpdateDeliver(d_id, delivery_distance, p_per_km, delivery_amount, date, vehicle_no, d_order_id, nic);

		if(istrue==true)
		{

		List<Deliver>Deliverdetails=deliverDBUtil.getDeliverdetails(d_id);
		request.setAttribute("Deliverdetails", Deliverdetails);
		RequestDispatcher dis=request.getRequestDispatcher("displayDeliver.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
		dis2.forward(request,response);
		}

	}

	}

