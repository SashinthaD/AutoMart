<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deliver Details</title>
<link rel="stylesheet" href="web/css/deliver.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="stylesheet" href="web/css/deliver2.css">
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
					<h1>Deliver Details</h1>	
				</div>	
<table class="center"> <br>
 		<br>
        <br>
      


<c:forEach var="Deliverdetails" items="${Deliverdetails}">


<c:set var="d_id" value="${Deliverdetails.d_id}"/>
<c:set var="delivery_distance" value="${Deliverdetails.delivery_distance}"/>
<c:set var="p_per_km" value="${Deliverdetails.p_per_km}"/>
<c:set var="delivery_amount" value="${Deliverdetails.delivery_amount}"/>
<c:set var="date" value="${Deliverdetails.date}"/>
<c:set var="vno" value="${Deliverdetails.vehicle_no}"/>
<c:set var="d_order_id" value="${Deliverdetails.d_order_id}"/>
<c:set var="nic" value="${Deliverdetails.nic}"/>

<tr>
     <td>deliver id</td>
<td>${Deliverdetails.d_id}</td>
</tr> 
<tr> 
<tr>
     <td>delivery distance</td>
<td>${Deliverdetails.delivery_distance}</td>
</tr> 
<tr> 
<tr>
     <td>price per km</td>
<td>${Deliverdetails.p_per_km}</td>
</tr> 
<tr> 
<tr>
     <td>delivery amount</td>
<td>${Deliverdetails.delivery_amount}</td>
</tr> 
<tr> 
<tr>
     <td>date</td>
<td>${Deliverdetails.date}</td>
</tr> 
<tr> 
<tr>
     <td>vehicle no</td>
<td>${Deliverdetails.vehicle_no}</td>
</tr> 
<tr> 
<tr>
     <td>deliver order id</td>
<td>${Deliverdetails.d_order_id}</td>
</tr> 

<td>employee nic</td>
<td>${Deliverdetails.nic}</td>

<tr> 

</c:forEach>

 
</table>
<c:url value="DeliverUpdate.jsp" var="update">

<c:param name="d_id" value="${d_id }"></c:param>
<c:param name="delivery_distance" value="${delivery_distance }"></c:param>
<c:param name="p_per_km" value="${p_per_km }"></c:param>
<c:param name="delivery_amount" value="${delivery_amount }"></c:param>
<c:param name="date" value="${date}"></c:param>
<c:param name="vehicle_no" value="${vno}"></c:param>
<c:param name="d_order_id" value="${d_order_id }"></c:param>
<c:param name="nic" value="${nic }"></c:param>
</c:url>
<a  href="${update }">

<button type="submit"  name="update"  id="update" ><i class="fas fa-shipping-fast"></i> &nbsp Update</button>
  
</a>

<c:url value="DeleteDeliver.jsp" var="delete">

<c:param name="d_id" value="${d_id }"></c:param>
<c:param name="delivery_distance" value="${delivery_distance }"></c:param>
<c:param name="p_per_km" value="${p_per_km }"></c:param>
<c:param name="delivery_amount" value="${delivery_amount }"></c:param>
<c:param name="date" value="${date}"></c:param>
<c:param name="vehicle_no" value="${vno}"></c:param>
<c:param name="d_order_id" value="${d_order_id }"></c:param>
<c:param name="nic" value="${nic }"></c:param>

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
	

</body>
</html>