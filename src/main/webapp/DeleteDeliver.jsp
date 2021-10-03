<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Deliver</title>
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
        <br>
        <br>
        <br>


<!--Open Content Area-->
		
		

<%
 String d_id= request.getParameter("d_id");
 String delivery_distance=request.getParameter("deliver_distance");
 String p_per_km=request.getParameter("p_per_km");
 String delivery_amount=request.getParameter("delivery_amount");
 String date=request.getParameter("date");
 String vehicle_no=request.getParameter("vehicle_no");
 String d_order_id=request.getParameter("d_order_id");
 String nic=request.getParameter("nic");

%>
<div class="topic">
<h1>Delete Deliver Details</h1>	
</div>			
		
		
		<center>
		<br>
		<br>
		<br>

<form name="myForm" action="DeleteDeliverServlet" onsubmit="return validateForm()" method="post" >

<table>
 <tr>
   <th> <h3>Delivery id</h3></th>  <th><input  type="text" name="d_id" name="text" id="d_id" placeholder="DE1" value="<%=d_id %>"><br><br></th></tr>
    <tr>
     <th> <h3>Delivery Distance</h3></th>  <th><input  type="text" name="delivery_distance" name="text" id="delivery_distance" placeholder="00Km" value="<%=delivery_distance %>"><br><br></th></tr>
    <tr>
     <th> <h3>Price Per Km</h3></th>  <th><input  type="text" name="p_per_km" name="text" id="p_per_km" placeholder="Rs" value="<%=p_per_km %>"><br><br></th></tr>
    <tr>
    <th><h3>Deliver Amount</h3></th> <th><input type="text"  name="delivery_amount" name="text" id="delivery_amount" placeholder="Rs" value="<%=delivery_amount %>"><br><br></th></tr>
     <tr>
    <th><h3>Date</h3></th> <th><input type="text"  name="ddistance" name="text" id="date" placeholder="YYYY-MM-DD" value="<%=date %>"><br><br></th></tr>
     <tr>
    <th><h3>Vehicle no</h3></th> <th><input type="text"  name="vno" name="text" id="vno" placeholder="XX-XXXX" value="<%=vehicle_no %>"><br><br></th></tr>
     <tr>
    <th><h3>Delivery order id</h3></th> <th><input type="text"  name="d_order_id" name="text" id="d_order_id" placeholder="D1" value="<%=d_order_id %>"><br><br></th></tr>
     <tr>
    <th><h3>Employee Nic</h3></th> <th><input type="text"  name="nic" name="text" id="nic" placeholder="0000000000v" value="<%=nic%>"><br><br></th></tr>
   
    
     </table>
    
       <input type="submit" name="update" value="Delete" id="delete" onclick="alert('Successfully Delete Delivery Details!!!');">
    <br><br>
     
     </form>
     
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
	</div>
	


</body>
</html>