package com.appointment;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteappointmentServlet")
public class deleteappointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		

		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		
		String apoid = request.getParameter("apoid");
		String servicetype = request.getParameter("stype");
		String vehiclemodel = request.getParameter("vmodel");
		String timeslot = request.getParameter("timeslot");
		String requireddate = request.getParameter("rdate");
	
		boolean isTrue, isTrue1;
		
		isTrue1 = appointmentDbutil.deletedappointments(apoid, servicetype, vehiclemodel,timeslot, requireddate);
		isTrue = appointmentDbutil.delete(apoid);
		
		if (isTrue1 == true && isTrue == true) {
			
		RequestDispatcher dis1 = request.getRequestDispatcher("HomePage.jsp");
		dis1.forward(request, response);
		}
		
		else {
			
			out.println("<script type= 'text/javascript'>");
			out.println("alert('your delete process is unsuccessfull!! try again....!!');");
			out.println("location ='delete_apoid.jsp'");
			out.println("</script>");
			
			
		//RequestDispatcher dis2 = request.getRequestDispatcher("error.jsp");
		//dis2.forward(request, response);
		}
		
	}
	
	

}
