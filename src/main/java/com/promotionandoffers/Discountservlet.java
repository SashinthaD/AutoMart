package com.promotionandoffers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Customer.customerDButil;


@WebServlet("/Discountservlet")
public class Discountservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String id=request.getParameter("id");
		String promoid=request.getParameter("promoid");
		double discount =Double.parseDouble(request.getParameter("discount"));
		double amount =Double.parseDouble(request.getParameter("amount"));
	
	
	
		
		
		boolean istrue;
		istrue=PromoDButil.insertdiscount(id, promoid, discount, amount);
		if(istrue==true)
		{

		
			RequestDispatcher dis=request.getRequestDispatcher("Success.jsp");
			dis.forward(request,response);
		}
		else
		{
			//RequestDispatcher dis2=request.getRequestDispatcher("selectrepaircustomers.jsp");
			//dis2.forward(request,response);
			out.println("<script type='text/javascript'>");
			out.println("alert('Calculation Is not successfull.');");
			out.println("location='DiscountMain.jsp'");
			out.println("</script>");
		}
		
		
		
	}

}
