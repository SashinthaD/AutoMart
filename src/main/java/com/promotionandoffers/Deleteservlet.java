package com.promotionandoffers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Deleteservlet")
public class Deleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String id=request.getParameter("id");
		
		
		boolean istrue;
		istrue=PromoDButil.deletepromotion(id);
		
		if(istrue==true)
		{

		
			RequestDispatcher dis=request.getRequestDispatcher("mainpromotion.jsp");
			dis.forward(request,response);
		}
		else
		{
			//RequestDispatcher dis2=request.getRequestDispatcher("deletepromotion.jsp");
			//dis2.forward(request,response);
			out.println("<script type='text/javascript'>");
			out.println("alert('Promotion given time period is not expired.');");
			out.println("location='mainpromotion.jsp'");
			out.println("</script>");
		}
		
		
		
		
	}

}
