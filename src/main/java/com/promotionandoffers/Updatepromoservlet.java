package com.promotionandoffers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Updatepromoservlet")
public class Updatepromoservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id=request.getParameter("id");
		String details=request.getParameter("details");
		String precentage=request.getParameter("precentage");
		String time=request.getParameter("time");
		String time2=request.getParameter("time2");
	
		
		boolean istrue;
		istrue=PromoDButil.Updatepromotion(id,details,precentage,time,time2);
		
		if(istrue==true)
		{

		
			RequestDispatcher dis=request.getRequestDispatcher("mainpromotion.jsp");
			dis.forward(request,response);
		}
		else
		{
			RequestDispatcher dis2=request.getRequestDispatcher("updatepromotion.jsp");
			dis2.forward(request,response);
		}
		
		
		
	}

}
