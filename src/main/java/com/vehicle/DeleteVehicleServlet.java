package com.vehicle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteVehicleServlet")
public class DeleteVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String vehicle_no= request.getParameter("vno");
		
		boolean istrue;
		
		istrue=VehicleDBUtil.Delete(vehicle_no);
		if(istrue==true)
		{

		List<Vehicle>vehicledetails=VehicleDBUtil.getVehicledetails(vehicle_no);
		request.setAttribute("vehicledetails", vehicledetails);
		RequestDispatcher dis=request.getRequestDispatcher("VehicleRegistration.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
		dis2.forward(request,response);
		}
		
	}

}
