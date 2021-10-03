package com.Customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.promotionandoffers.PromoDButil;


@WebServlet("/CustomerRegisterServlet")
public class CustomerRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String full_Name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone_No=request.getParameter("phone");
		String brand=request.getParameter("brand");
		String model=request.getParameter("model");
		String plateNumber=request.getParameter("plate");
		String password=request.getParameter("pw");
		
		
		boolean istrue;
		istrue=customerDButil.insertCustomer(full_Name, email, phone_No, brand, model, plateNumber, password);
		if(istrue==true)
		{

		
			RequestDispatcher dis=request.getRequestDispatcher("customerLogin.jsp");
			dis.forward(request,response);
		}
		else
		{
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Registration is not successfull');");
			out.println("location='customerRegister.jsp'");
			out.println("</script>");

		}
		
		
		
		
		
	}

}
