<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customer profile</title>
<link rel="stylesheet" href="web/css/promotion.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="web/css/styless.css">
</head>
<body>
<div class="box-area">
<header>
	<div class="wrapper">
		<div class="content">
						<img class="img" src="web/images/logo.png" alt="logo image">
					</div>
		<nav>
			<a href="Home.jsp">Home</a>
		<a href="customerRegister.jsp">Registration</a>
		<a href="customerLogin.jsp">Login to your profile</a>
			<a href="Customerprofile.jsp">Profile</a>
			

		</nav>
	</div>
</header>
<div class="bannerarea">

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
		<h2>My Profile</h2><br><br>	

	<table>
	<c:forEach var="cusDetails" items="${cusDetails}">
    <c:set var="id" value="${cusDetails.idCustomer}"/>
	<c:set var="name" value="${cusDetails.full_Name}"/>
	<c:set var="email" value="${cusDetails.email}"/>
	<c:set var="phone" value="${cusDetails.phone_No}"/>
	<c:set var="brand" value="${cusDetails.brand}"/>
	<c:set var="model" value="${cusDetails.model}"/>
	<c:set var="plate" value="${cusDetails.plateNumber}"/>
	
	<tr>
		<td>ID</td>
		<td>${cusDetails.idCustomer}</td>
	</tr>

	<tr>
		<td> Name</td>
		<td>${cusDetails.full_Name}</td>
	</tr>
	<tr>
		<td> Email</td>
		<td>${cusDetails.email}</td>
	</tr>
	<tr>
		<td> Phone Number</td>
		<td>${cusDetails.phone_No}</td>
	</tr>

    <tr>
		<td>Vehicle Brand</td>
		<td>${cusDetails.brand}</td>
	</tr>
	
	<tr>
		<td>Vehicle Model</td>
		<td>${cusDetails.model}</td>
	</tr>
	
	<tr>
		<td>Plate Number</td>
		<td>${cusDetails.plateNumber}</td>
	</tr>
	</c:forEach>
	</table>
<c:url value="CustomerUpdate.jsp" var="update">

<c:param name="id" value="${id}"/>
<c:param name="name" value="${name}"/>
<c:param name="email" value="${email}"/>
<c:param name="phone" value="${phone}"/>
<c:param name="brand" value="${brand}"/>
<c:param name="model" value="${model}"/>
<c:param name="plate" value="${plate}"/>
</c:url><br><br>

<a href="${update}">
<input type="button" name="update" value="Change My Details" class="update2">
</a>


<c:url value="CustomerDelete.jsp" var="delete">

<c:param name="id" value="${id}"/>
<c:param name="name" value="${name}"/>
<c:param name="email" value="${email}"/>
<c:param name="phone" value="${phone}"/>
<c:param name="brand" value="${brand}"/>
<c:param name="model" value="${model}"/>
<c:param name="plate" value="${plate}"/>
</c:url>

<a href="${delete}">
<input type="button" name="delete" value="Remove My Details" class="delete2">
</a><br><br>


<c:url value="cusid.jsp" var="app">

<c:param name="id" value="${id}"/>

</c:url>

<a href="${app}">
<input type="button" name="appointment" value="Make an Appointment" id="submit">
</a>

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