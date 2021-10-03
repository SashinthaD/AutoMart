package com.stock;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/UpdateStockServlet")
public class UpdateStockServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String item_no=request.getParameter("item_no");
		String vehicle_brand=request.getParameter("vehicle_brand");
		String vehicle_model=request.getParameter("vehicle_model");
		String vehicle_year=request.getParameter("vehicle_year");
		String category=request.getParameter("category");
		int qty= Integer.parseInt(request.getParameter("qty"));
		int  limit_stock =Integer.parseInt(request.getParameter("limit_stock"));
		
		String unit_price=request.getParameter("unit_price");
		String warranty=request.getParameter("warranty");
		String status=request.getParameter("status");
		
		boolean istrue;
		istrue=stockDBUtil.Updatestock(item_no, vehicle_brand, vehicle_model, vehicle_year, category, qty, limit_stock,  unit_price, warranty, status);

		if(istrue==true)
		{

		List<stock>stockdetails=stockDBUtil.getstockdetails(item_no);
		request.setAttribute("stockdetails", stockdetails);
		RequestDispatcher dis=request.getRequestDispatcher("displayStock.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
		dis2.forward(request,response);
		}
		
	}

}
