package com.stock;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DeleteStockServlet")
public class DeleteStockServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String item_no= request.getParameter("item_no");
		
		boolean istrue;
		
		istrue=stockDBUtil.Delete(item_no);
		if(istrue==true)
		{

		List<stock>stockdetails=stockDBUtil.getstockdetails(item_no);
		request.setAttribute("stockdetails", stockdetails);
		RequestDispatcher dis=request.getRequestDispatcher("InsertStock.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
		dis2.forward(request,response);
		}
	}

}
