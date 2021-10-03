<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Bill History</title>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="css/finance7.css">

</head>
<body>
	<div class="box-area">
		<header>
			<div class="wrapper">
	
				<nav>
									<div class="content">
						<img class="img" src="images/logo.png" alt="logo image">
					</div>
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
				<h2>Bill History</h2><br><br>
    
					<br>					<br>					<br>					<br>					<br>


					
				
				<%
String billID = request.getParameter("billID");
String cusid = request.getParameter("cusid");
String orderID = request.getParameter("orderID");
String orderDate = request.getParameter("orderDate");
String billDate = request.getParameter("billDate");
String tax = request.getParameter("tax");
String cost = request.getParameter("cost");
String total = request.getParameter("total");
%>
				
				
					
			<form action="DeliverBillDelete" method="post">	
	<table>
								
		<tr>
			<th>Bill ID</th>
			<th>Customer ID</th>
			<th>Order ID</th>
			<th>Order Date</th>
			<th>Bill Date</th>
			<th>Tax</th>
			<th>Delivery Cost</th>
			<th>Total</th>
		</tr>


	
	
	
	
	
	
	
<tr>
<td><input name="billID" value="<%=billID %>" readonly> </td>
<td><input name="cusid" value = "<%= cusid%>"readonly></td>
<td><input name = "orderID" value="<%=orderID %>"readonly></td>
<td><input name = "orderDate" value="<%=orderDate %> "readonly></td>
<td><input name="billDate" value="<%=billDate %>"readonly></td>
<td><input name="tax" value="<%=tax %> "readonly></td>
<td><input name = "cost" value="<%=cost %>"readonly></td>
<td><input name="total" value="<%= total%> "readonly></td>

</tr>



</table>
<br><br>
<input type ="submit" id="delete" name="delete"  value="Delete">
</form>	

<br>
  <br>
  <br>
  <br>
 
  
  <!--Close content Area-->



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
