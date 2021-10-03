package com.appointment;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateappointmentServlet")
public class updateappointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String apoid = request.getParameter("apoid");
		String servicetype = request.getParameter("type");
		String vehiclemodel = request.getParameter("model");
		String timeslot = request.getParameter("time");
		String requireddate = request.getParameter("date");
		String cid = request.getParameter("cid");
		
		boolean isTrue;
		
		isTrue = appointmentDbutil.update_appointment_details(apoid, servicetype, vehiclemodel, timeslot, requireddate, cid);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("UpdateSuccess.jsp");
			dis.forward(request, response);

		}
		else {
			out.println("<script type= 'text/javascript'>");
			out.println("alert('your update process is unsuccessfull!! try again....!!');");
			out.println("location ='update_appointment_details.jsp'");
			out.println("</script>");
			
			//RequestDispatcher dis = request.getRequestDispatcher("error.jsp");
			//dis.forward(request, response);
			




		
	}

}
}