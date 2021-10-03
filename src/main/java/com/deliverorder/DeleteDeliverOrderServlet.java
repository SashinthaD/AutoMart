package com.deliverorder;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteDeliverOrderServlet")
public class DeleteDeliverOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String d_order_id= request.getParameter("d_order_id");
		
		boolean istrue;
		
		istrue=deliverOrderDBUtil.Delete(d_order_id);
		if(istrue==true)
		{

		List<DeliverOrder>deliverorderdetails=deliverOrderDBUtil.getdeliverorderdetails(d_order_id);
		request.setAttribute("deliverorderdetails", deliverorderdetails);
		RequestDispatcher dis=request.getRequestDispatcher("success.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
		dis2.forward(request,response);
		}
		
	}

}
