<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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
	<link rel="stylesheet" href="css/profileDelete.css">
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
	
		<%
			String nic = request.getParameter("nic");
			String name = request.getParameter("name");
			String mobile = request.getParameter("mobile");
			String email = request.getParameter("email");
			String position = request.getParameter("position");
			String dob = request.getParameter("dob");
		%>

	 	<form name="form" class="form" action="profileDelete" method="post">
	 	
	 	<h2>Delete Profile</h2><br><br><br><br><br>
	 		
	 		<label>NIC number :</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	 			<input type="text" name="nic" id="nic" value="<%= nic %>" readonly>
			<br><br><br>
			
			<label>Employee's name :</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				<input type="text" name="name" id="name" value="<%= name %>" readonly>
			<br><br><br>
			
			<label>Date of birth :</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				<input type="text" name="dob" id="dob" value="<%= dob %>" readonly>
			<br><br><br>
		
			<label>E-mail address :</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				<input type="text" name="email" id="email" value="<%= email %>" readonly>
			<br><br><br>
		
			<label>Mobile number :</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				<input type="number" name="mobile" id="mobile" value="<%= mobile %>" readonly>
			<br><br><br>
	
			<label>Position :</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				<input type="text" name="position" id="position" value="<%= position %>" readonly>
			<br><br><br><br><br>
			
			<label>Are you sure you want to delete this account?</label>
			<br><br><br><br><br>
	 		
	 		<label>The day employee resigns :</label> &nbsp&nbsp&nbsp&nbsp&nbsp
	 			<input type="date" name="date" required>
	 		<br><br><br><br><br><br>
	 		
	 		<input type="submit" id="yes" name="Yes" value="Yes">
	 		
	 		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	 		
	 		<a href="employeeManagement.jsp">
  				<input type="button" id="no" name="No" value="No">
			</a><br><br><br>
	 	
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