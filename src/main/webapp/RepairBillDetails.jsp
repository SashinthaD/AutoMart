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
				<div class="logo">
				<img class="img" src="images/" alt="logo image">
				</div>
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
			<h2> Customer Details </h2>
		</strong>
</label>

<br><br><br> <br> 
		
		
		<center>

		<form method="post" action="RepairInsert">
	<table>
	<c:forEach var="repair" items="${idCustom}">
	<c:set var="Rid" value="${repair.rid}"/>
	<c:set var="Total_Repair_Price" value="${repair.billamount}"/>
	<c:set var="Qty" value="${repair.qty}"/>
	
	

	

	
	
	<tr>
		<td>Repair ID</td>
		<td> <input type="text" class="inputt"  name="repair" value="${repair.rid}" readonly> </td>
	</tr>
	
	
	<tr>
		<td>Bill Amount</td>
		<td><input type="text" class="inputt"  name="billamount" value="${repair.billamount}" readonly></td>
	</tr>
	
	
	<tr>
		<td>Quantity</td>
		<td><input type="text" name="qty" class="inputt" value="${repair.qty}"></td>
	</tr>
	
	
	</c:forEach>
	
	
	
	
	
	
	
	<c:forEach var = "discount" items = "${iddiscount}">
	
	
	<c:set var="After_Discount" value="${discount.discount}"/>
	<tr>
		<td>After Discount</td>
		<td> <input type="text" class="inputt"  name="discount" value="${discount.discount}" readonly> </td>
	</tr>
	
		</c:forEach>
	<tr>
	
		<td>Date</td>
		<td> <input type="date" name="date" class="input"> </td>
	</tr>
	
	<tr>
		<td>Spare Part Price</td>
		<td><input type="text" name="sparepart" class="input" pattern="[0-9]"></td>
	</tr>
	
		<tr>
		<td>Service Charges</td>
		<td><input type="text" name="service" class="input" pattern="[0-9]"></td>
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
