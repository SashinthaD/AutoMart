<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>AUTOMART</title>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="css/employeeSignup.css">
</head>

<body>
	<div class="box-area">
		<header>
			<div class="wrapper">
				<div class="content">
					<img class="img" src="images/logo.png" alt="logo image">
				</div>
				<nav>
					<a href="#">home</a>
					<a href="#">about</a>
					<a href="#">services</a>
					<a href="employeeLogin.jsp">Logout</a>
				</nav>
			</div>
		</header>
		<div class="banner-area"></div>

		<div class="content-area">
			<div class="wrapper">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>

<!--Open Content Area-->
 
        <form name="form" class="form" method="post" action="employeeInsert">
					
					<h2>Employee Sign up</h2><br><br><br>
					
					<label>Full Name :</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<input type="text" name="fname" id="fname" pattern="[A-Za-z]{2,}" required><br><br><br>
						
					<label>NIC Number :</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<input type="text" name="nic" id="nic" pattern="[0-9V]{10}" required><br><br><br>
						
					<label>E-mail address: </label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<input type="text" name="email" id="email" pattern = "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required><br><br><br>
						
					<label>Position :</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						
						<select name="position" id="position" required>
						
						<option value="" selected="selected">Position</option>
	    				<%
	    					try {
				    			Class.forName("com.mysql.jdbc.Driver").newInstance();
				    			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/automart?autoReconnect=true&useSSL=false", "root", "Dilanka000112");
				    			Statement stt = con.createStatement();
				    			ResultSet rs = stt.executeQuery("select * from position");
				    			
		    					while (rs.next()) {
		    					%>
		    						<option value="<%=rs.getString("position") %>"
		    						<%
		    						if (request.getParameter("pID") != null) {
		    							if (rs.getInt("pID") == Integer.parseInt(request.getParameter("position"))) {
		    								out.println("selected");
		    							}
		    						}
		    						%> > <%=rs.getString("position") %></option>
		    						<%
		    					}
		    						con.close();
		    						rs.close();
	    					}
	    					catch (Exception e){
	    						e.printStackTrace();
	    					}
	    					%> </select><br><br>
	    					
	    				<a href="newPosition.jsp">
	    					<input type="button" name="new" id="new" value="new">
	    				</a>	
	    				<br><br><br>
	    				
	    			<label>Working on section :</label> &nbsp&nbsp&nbsp&nbsp&nbsp
	    				<select name="section" id="section" required>
	    					<option value="" selected="selected">Section</option>
	    					<option value="EmployeeManagement">Employee Management</option>
	    					<option value="RepairManagement">Repair Management</option>
	    					<option value="FinancialManagement">Financial Management</option>
	    					<option value="DeliveryManagement">Delivery Management</option>
	    					<option value="StockManagement">Stock Management</option>
	    					<option value="AppointmentManagement">Appointment Management</option>
	    					<option value="PromotionManagement">Promotion Management</option>
	    					
	    				</select>
	    				<br><br><br>
					
					<label>Basic Salary :</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<input type="text" name="salary" id="salary" pattern = "[0-9]{2,}"><br><br><br>
					<%
						
						 String candidateChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
						 int length = 8;
							
							try {
								StringBuilder sb = new StringBuilder();
							    Random random = new Random();
							  
							    for (int i = 0; i < length; i++) {
							        sb.append(candidateChars.charAt(random.nextInt(candidateChars.length())));
							    }
							    
								 sb.toString();
						
							    %>
							    	<label>Password :</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
									<input type="text" name="password" id="password" value="<%=sb.toString()%>" readonly><%
								
							    
							}catch (Exception e){
								e.printStackTrace();
							}
					
					%>						
						<br><br><br><br><br>
						
					<input type="submit" id="submit" name="Submit" value="SIGN UP"> <br><br><br>
        </form>
        
<!--Close Content Area-->
        
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
				</div>
      <footer class="footer">
      	 <div class="container">
      	 	<div class="row">
      	 		<div class="footer-col">
      	 			<h4>company</h4>
      	 			<ul>
      	 				<li><a href="#">about us</a></li>
      	 				<li><a href="#">our services</a></li>
      	 				<li><a href="#">privacy policy</a></li>
      	 				<li><a href="#">affiliate program</a></li>
      	 			</ul>
      	 		</div>
      	 		<div class="footer-col">
      	 			<h4>get help</h4>
      	 			<ul>
      	 				<li><a href="#">FAQ</a></li>
      	 				<li><a href="#">shipping</a></li>
      	 				<li><a href="#">returns</a></li>
      	 				<li><a href="#">order status</a></li>
      	 				<li><a href="#">payment options</a></li>
      	 			</ul>
      	 		</div>
      	 		<div class="footer-col">
      	 			<h4>online shop</h4>
      	 			<ul>
      	 				<li><a href="#">watch</a></li>
      	 				<li><a href="#">bag</a></li>
      	 				<li><a href="#">shoes</a></li>
      	 				<li><a href="#">dress</a></li>
      	 			</ul>
      	 		</div>
      	 		<div class="footer-col">
      	 			<h4>follow us</h4>
      	 			<div class="social-links">
      	 				<a href="#"><i class="fab fa-facebook-f"></i></a>
      	 				<a href="#"><i class="fab fa-twitter"></i></a>
      	 				<a href="#"><i class="fab fa-instagram"></i></a>
      	 				<a href="#"><i class="fab fa-linkedin-in"></i></a>
      	 			</div>
      	 		</div>
      	 	</div>
      	 </div>
      </footer>


		</div>
	</div>

</body>
</html>