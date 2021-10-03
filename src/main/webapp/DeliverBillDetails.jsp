<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<title>Bill Details</title>
	
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
	
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
  
	<link rel="preconnect" href="https://fonts.googleapis.com">
	
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">
 
	<link rel="stylesheet" href="css/userAcc.css">
	

</head>
<body>
	<div class="box-area">
		<header>
			<div class="wrapper">
	
				<nav>

				<a href="repair_and_deliver.jsp">Bills</a>
				<a href="AllbillHistory.jsp">Bill History</a>
				<a href="Emp.jsp">Employee Salaries</a>
				<a href="EmpHistory.jsp">Salary History</a>
				<a href="HomePage.jsp">Home</a>

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
			
<label for="cid">

		<strong>
			<h2> Deliver  Details </h2>
		</strong>
</label>

<br><br><br> <br> 
		
		

<center>
		<form method="post" action="DeliveryInsert">
	<table>
	
	<c:forEach var="deliverdetails" items="${deliverdetails}">
	
	
	<c:set var="orderID" value="${deliverdetails.oderID}"/>
	<c:set var="Cid" value="${deliverdetails.cusid}"/>
	<c:set var="Qty" value="${deliverdetails.qty}"/>
	<c:set var="address" value="${deliverdetails.address}"/>
	<c:set var="itemNo" value="${deliverdetails.itemNO}"/>
	<c:set var="unitprice" value="${deliverdetails.unitprice}"/>
	<c:set var="date" value="${deliverdetails.date}"/>
	
	
	

	

	
	
	<tr>
		<td>Deliver Order ID</td>
		<td> <input type="text" class="inputt"  name="did" value="${deliverdetails.oderID}" readonly> </td>
	</tr>
	
	<tr>
		<td>Customer ID</td>
		<td> <input type="text" class="inputt"  name="cid" value="${deliverdetails.cusid}" readonly> </td>
	</tr>
	
	
	<tr>
		<td>Address</td>
		<td><input type="text" class="inputt"  name="address" value="${deliverdetails.address}" readonly></td>
	</tr>
	
	<tr>
		<td>Item No</td>
		<td><input type="text" class="inputt"  name="ItemNo" value="${deliverdetails.itemNO}" readonly></td>
	</tr>
	
	
	<tr>
		<td>Unit Price</td>
		<td><input type="text" class="inputt"  name="unitPrice" value="${deliverdetails.unitprice}" readonly></td>
	</tr>
	
	
	<tr>
		<td>Quantity</td>
		<td><input type="text" name="qty" class="inputt" value="${deliverdetails.qty}"readonly></td>
	</tr>
	
	
	<tr>
		<td>Deliver Date</td>
		<td><input type="text" class="inputt"  name="deliverdate" value="${deliverdetails.date}" readonly></td>
	</tr>
	
	
	</c:forEach>
	
	
	

	<tr>
	
		<td>Date</td>
		<td> <input type="date" name="billdate" class="input"> </td>
	</tr>
	
	<tr>
		<td>Tax</td>
		<td><input type="text" name="tax" class="input"></td>
	</tr>
	
		<tr>
		<td>Delivery Cost</td>
		<td><input type="text" name="cost" class="input" ></td>
	</tr>
	

	</table>
	<br><br><br>
	<input type="submit" id="submit" name="Submit" value="Submit">
		</form>

</center>
	

	<br>
	<br>
	
	 <br><br>
	
 
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
