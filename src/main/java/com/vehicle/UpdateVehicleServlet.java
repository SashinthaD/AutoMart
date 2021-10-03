package com.vehicle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/UpdateVehicleServlet")
public class UpdateVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vehicle_no=request.getParameter("vno");
		String vehicle_type=request.getParameter("vtype");
		String vehicle_brand=request.getParameter("vbrand");
		String chassi_no=request.getParameter("vchassi");
		String vehicle_mileage=request.getParameter("vmileage");
		String insurance=request.getParameter("vinsurance");
		String emission=request.getParameter("vemission");

		boolean istrue;
		istrue=VehicleDBUtil.UpdateVehicle(vehicle_no,vehicle_type,vehicle_brand,chassi_no,vehicle_mileage,insurance,emission);

		if(istrue==true)
		{

		List<Vehicle>vehicledetails=VehicleDBUtil.getVehicledetails(vehicle_no);
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


