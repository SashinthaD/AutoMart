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
 
	<link rel="stylesheet" href="css/delete_an_appointment.css">
	

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
			
<label for="cid"><strong><h2> Appointment Details </h2></strong></label><br><br><br> <br> 
 
<form action="deleteappointmentServlet" method="post">
<table>
	<c:forEach var="apo" items="${apoid}">
	
	<c:set var="apoid" value="${apo.apoid}"/>
	<c:set var="servicetype" value="${apo.servicetype}"/>
	<c:set var="vehiclemodel" value="${apo.vehiclemodel}"/>
	<c:set var="timeslot" value="${apo.timeslot}"/>
	<c:set var="requireddate" value="${apo.requireddate}"/>
	
	
	<tr>
		<td>Appointment ID</td>
		<td><input class="input" type="number" name="apoid" pattern = "[0-9]{1,}" value="${apo.apoid}"readonly></td>
	</tr>
	<tr>
		<td>Service Type</td>
		<td><input class="input" type="text" name="stype" value="${apo.servicetype}"readonly></td>
	</tr>
	<tr>
		<td>Vehicle Model</td>
		<td><input class="input" type="text" name="vmodel" value="${apo.vehiclemodel}"readonly></td>
	</tr>
	<tr>
		<td>Time Slot</td>
		<td><input class="input" type="text" name="timeslot" value="${apo.timeslot}"readonly></td>
	</tr>
	<tr>
		<td>Required Date</td>
		<td><input class="input" type="text" name="rdate" value="${apo.requireddate}"readonly></td>
	</tr>


	</c:forEach>
	</table>
	
	<br>
	<br>

<input type ="submit" id="delete" name="delete" value="Delete">
</form>
<br>
	<br>
	

</div>	 
     
  <br>  
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
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
