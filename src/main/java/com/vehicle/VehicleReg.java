package com.vehicle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/VehicleReg")
public class VehicleReg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Vehicle_no=request.getParameter("vno");
		String Vehicle_type=request.getParameter("vtype");
		String Vehicle_Brand=request.getParameter("vbrand");
		String Chassi_no=request.getParameter("vchassi");
		String Vehicle_mileage=request.getParameter("vmileage");
		String Insurance=request.getParameter("vinsurance");
		String Emission=request.getParameter("vemission");
		
		boolean isTrue;
		
		isTrue=VehicleDBUtil.insertvehicle(Vehicle_no, Vehicle_type, Vehicle_Brand, Chassi_no, Vehicle_mileage, Insurance, Emission);
		
		if(isTrue == true) {
			
			List<Vehicle>vehicledetails=VehicleDBUtil.getVehicledetails(Vehicle_no);
			request.setAttribute("vehicledetails", vehicledetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("displayvehicle.jsp");
			dis.forward(request, response);
	}
	else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	
	}
}
