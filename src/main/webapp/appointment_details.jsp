<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<title>Fixed Header with html and css | Collapsing Header Tutorial</title>
	
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
	
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
  
	<link rel="preconnect" href="https://fonts.googleapis.com">
	
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">


	<link rel="stylesheet" href="css/appointment_details.css">
	

</head>
<body>
	<div class="box-area">
		<header>
			<div class="wrapper">
				
				<nav>
				
				<div class="logo">
				<img class="img" src="images/logo.png" alt="logo image">
				</div>
				
				<a href="#">home</a>
				<a href="#">about</a>
				
				<a href="#">services</a>
				<a href="#">contact</a>

				</nav>
			</div>
		</header>
		<div class="banner-area">

		</div>

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
<div class="form">
			

  <body>


<br>
<br>
<br>
<br>

<label for="cid"><strong> Remaining Appointments </strong></label><br><br><br>
	<br>

	<c:forEach var="app" items="${apoid}">
	
	<c:set var="Apo_id" value="${app.apoid}"/>
	<c:set var="Service_type" value="${app.servicetype}"/>
	<c:set var="Vehicle_model" value="${app.vehiclemodel}"/>
	<c:set var="Time_slot" value="${app.timeslot}"/>
	<c:set var="Required_date" value="${app.requireddate}"/>
	
	<table>
	
	<tr>
		<th>Appointment ID</th>
		<th>Service Type</th>
		<th>Vehicle Model</th>
		<th>Reserved Time</th>
		<th>Reserved Date</th>
	</tr>
	
	<tr>
		<td>${app.apoid}</td>
		<td>${app.servicetype}</td>
		<td>${app.vehiclemodel}</td>
		<td>${app.timeslot}</td>
		<td>${app.requireddate}</td>
	</tr>
	

	</table>
	<br>
	<br>
	<br>
	<br>
	</c:forEach>
	
	
	
	


</body>
  <br>
  <br>
<input type="submit" name="Submit" id="update" value="Update an Appointment" onclick="document.location = 'apoid.jsp'">
  <br>
  <br>
<input type="submit" id="submit" name="Submit" onclick="document.location = 'HomePage.jsp'" value="Submit">
  </div>	 
     
     
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br><br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br><br>
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
							<h4>Contact Us</h4>
							<ul>
								<li><a href="#">0112345672</a></li>
								<li><a href="#">0811234567</a></li>
								<li><a href="#">automart@gmail.com</a></li>

							</ul>
						</div>
						<div class="footer-col">
							<h4>online shop</h4>
							<ul>
								<li><a href="#">Inventory</a></li>

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
