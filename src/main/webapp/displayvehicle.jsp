<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle Details</title>
<link rel="stylesheet" href="web/css/deliver.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="stylesheet" href="web/css/deliver2.css">
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
	<script src="web/js/de.js"> </script>
</head>
<body>

				
<div class="box-area">
		<header>
		<div class="wrapper">
		
		<nav>
		
    <div class="content">
<img class="img" src="web/images/log.png" alt="logo image">
</div>
		
		<a href="HomePage.jsp">Home</a>
		<a href="#">About</a>
		<a href="DeliveryHome.jsp">Delivery</a>
		<a href="#">Services</a>
		<a href="#">Contact</a>
		
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
       


<!--Open Content Area-->
		

		
		<center>

<div class="topic">
					<h1>Vehicle Details</h1>	
				</div>	
<table class="center"><br>

 
        <br>
        <br>

<c:forEach var="vehicledetails" items="${vehicledetails}">


<c:set var="vno" value="${vehicledetails.vehicle_no}"/>
<c:set var="vtype" value="${vehicledetails.vehicle_type}"/>
<c:set var="vbrand" value="${vehicledetails.vehicle_brand}"/>
<c:set var="vchassi" value="${vehicledetails.chassi_no}"/>
<c:set var="vmileage" value="${vehicledetails.vehicle_mileage}"/>
<c:set var="vinsurance" value="${vehicledetails.insurance}"/>
<c:set var="vemission" value="${vehicledetails.emission}"/>

<tr>
     <td>Vehicle No</td>
<td>${vehicledetails.vehicle_no}</td>
</tr> 
<tr> 
<tr>
     <td>Vehicle type</td>
<td>${vehicledetails.vehicle_type}</td>
</tr> 
<tr> 
<tr>
     <td>Vehicle brand</td>
<td>${vehicledetails.vehicle_brand}</td>
</tr> 
<tr> 
<tr>
     <td>Chassi no</td>
<td>${vehicledetails.chassi_no}</td>
</tr> 
<tr> 
<tr>
     <td>Vehicle mileage</td>
<td>${vehicledetails.vehicle_mileage}</td>
</tr> 
<tr> 
<tr>
     <td>Insurance</td>
<td>${vehicledetails.insurance}</td>
</tr> 
<tr> 
<tr>
     <td>Emission</td>
<td>${vehicledetails.emission}</td>
</tr> 
<tr> 

</c:forEach>
 
</table>
<c:url value="updatevehicle.jsp" var="update">
<c:param name="vehicle_no" value="${vno }"></c:param>
<c:param name="vehicle_type" value="${vtype }"></c:param>
<c:param name="vehicle_brand" value="${vbrand }"></c:param>
<c:param name="chassi_no" value="${vchassi }"></c:param>
<c:param name="vehicle_mileage" value="${vmileage}"></c:param>
<c:param name="insurance" value="${vinsurance }"></c:param>
<c:param name="emission" value="${vemission }"></c:param>
</c:url>
<a  href="${update }">

<button type="submit"  name="submit"  id="update" ><i class="fa fa-wrench"></i> &nbsp Update</button>
 
</a>

<c:url value="deletevehicle.jsp" var="delete">
<c:param name="vehicle_no" value="${vno }"></c:param>
<c:param name="vehicle_type" value="${vtype }"></c:param>
<c:param name="vehicle_brand" value="${vbrand }"></c:param>
<c:param name="chassi_no" value="${vchassi }"></c:param>
<c:param name="vehicle_mileage" value="${vmileage}"></c:param>
<c:param name="insurance" value="${vinsurance }"></c:param>
<c:param name="emission" value="${vemission }"></c:param>


</c:url>


<a href="${delete}">

<button type="submit"  name="delete"  id="delete" ><i class="fa fa-trash-alt"></i> &nbsp Delete</button>

</a>

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