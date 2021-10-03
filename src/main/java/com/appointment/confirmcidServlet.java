package com.appointment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/confirmcidServlet")
public class confirmcidServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		
		String idCustomer = request.getParameter("cid");
		boolean isTrue;
			 
		isTrue = appointmentDbutil.validate(idCustomer);
		
		if(isTrue== true)
		{
			
		List<customer> idCustom = appointmentDbutil.getCustomer(idCustomer);
		request.setAttribute("idCustom", idCustom);
		
		for (int i = 0; i < idCustom.size(); i++) {
            System.out.println(idCustom.get(i).getFullName());
        }

	
		try {

		RequestDispatcher rs = request.getRequestDispatcher("userAcc.jsp");
	
		rs.forward(request, response);
			}catch (Exception e) {
				e.printStackTrace();
				System.out.println("aaa");			}
		}else
		{
			
			out.println("<script type= 'text/javascript'>");
			out.println("alert('your customer ID is invalid. try again....!!');");
			out.println("location ='cusid.jsp'");
			out.println("</script>");
			
			
		//RequestDispatcher rs = request.getRequestDispatcher("error.jsp");
		//rs.forward(request, response);
		}
		

		
		
	}

}
