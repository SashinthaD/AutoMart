package com.appointment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Appointmentinsert")
public class Appointmentinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Service_type = request.getParameter("type");
		String Vehicle_model = request.getParameter("model");
		String Time_slot = request.getParameter("time");
		String Required_date = request.getParameter("date");
		String Cid = request.getParameter("cid");
		
		boolean isTrue,isTrue1;
		
		isTrue = appointmentDbutil.insertappointment(Service_type,Vehicle_model,Time_slot,Required_date,Cid);
		isTrue1 = appointmentDbutil.validate(Cid);
		
		
		if(isTrue == true && isTrue1 == true) {
			List<customer> idCustom = appointmentDbutil.getCustomer(Cid); 
			request.setAttribute("idCustom", idCustom);
			
			List<appointmentdetails> apoid = appointmentDbutil.getAppointment(Cid); 
			request.setAttribute("apoid", apoid);
			
			RequestDispatcher dis = request.getRequestDispatcher("appointment_details.jsp");
			dis.forward(request, response);

			
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("userAcc.jsp");
			dis2.forward(request, response);
	
		}
		
	}

}
