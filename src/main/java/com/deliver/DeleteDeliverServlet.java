package com.deliver;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DeleteDeliverServlet")
public class DeleteDeliverServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String d_id= request.getParameter("d_id");
		
		boolean istrue;
		
		istrue=deliverDBUtil.Delete(d_id);
		if(istrue==true)
		{

		List<Deliver>Deliverdetails=deliverDBUtil.getDeliverdetails(d_id);
		request.setAttribute("Deliverdetails", Deliverdetails);
		RequestDispatcher dis=request.getRequestDispatcher("insertDeliveryDetails.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
		dis2.forward(request,response);
		}
		
	}

}
