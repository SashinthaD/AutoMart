package com.deliverorder;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DeliverOrderInsertServlet")
public class DeliverOrderInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String d_order_id=request.getParameter("d_order_id");
		String phone_no=request.getParameter("phone_no");
		String address=request.getParameter("address");
		String item_no=request.getParameter("item_no");
		String qty=request.getParameter("qty");
		String unit_price=request.getParameter("unit_price");
		String date=request.getParameter("date");
		String cid=request.getParameter("cid");
	
		boolean isTrue;
		
		isTrue=deliverOrderDBUtil.insertdeliverorder(d_order_id, phone_no, address, item_no, qty, unit_price, date, cid);
		
		if(isTrue == true) {
			
			List<DeliverOrder>DeliverOrder=deliverOrderDBUtil.getdeliverorderdetails(d_order_id);
			request.setAttribute("DeliverOrder", DeliverOrder);
			
			RequestDispatcher dis=request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
	}
	else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

	}


