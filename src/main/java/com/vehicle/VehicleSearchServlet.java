package com.vehicle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VehicleSearchServlet
 */
@WebServlet("/VehicleSearchServlet")
public class VehicleSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String vehicle_no=request.getParameter("vno");
	
	
		

		boolean istrue;
		istrue=VehicleDBUtil.search(vehicle_no);

		if(istrue==true)
		{

		List<Vehicle>vehicledetails=VehicleDBUtil.getUpdateVehicle(vehicle_no);
		request.setAttribute("vehicledetails", vehicledetails);
		RequestDispatcher dis=request.getRequestDispatcher("displayvehicle.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
		dis2.forward(request,response);
		}
	}
}
	