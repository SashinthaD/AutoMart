package com.stock;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seller.Order;

@WebServlet("/orderServlet")
public class orderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out =response.getWriter(); 
		response.setContentType("text/html");
		
		
		String item_no =  request.getParameter("item");
		
		
		
		boolean isTrue;  
		isTrue =stockDBUtil.validationstoid(item_no);  // call validate method
		
		if(isTrue== true)
		{
			List<Order> stDetails = stockDBUtil.getorderstid(item_no); //navigate userRegister form
			request.setAttribute("stDetails", stDetails);
			

			RequestDispatcher rs = request.getRequestDispatcher("statusCheck.jsp");
			rs.forward(request, response);
		}else
		{
			out.println("<script type= 'text/javascript'>");   
			out.println("alert('details are incorrect');");
			out.println("location ='Newitem.jsp'");
			out.println("</script>");
		
		
	}
	}
}

