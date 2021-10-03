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


	<c:forEach var="deliveridbill" items="${deliveridbill}">
	
	
	<c:set var = "billID" value="${deliveridbill.billID}"/>	
	<c:set var = "cusid" value="${deliveridbill.cusid}"/>	
	<c:set var = "orderID" value="${deliveridbill.orderID}"/>	
	<c:set var = "orderDate" value="${deliveridbill.orderDate}"/>	
	<c:set var = "billDate" value="${deliveridbill.billDate}"/>	
	<c:set var = "tax" value="${deliveridbill.tax}"/>	
	<c:set var = "cost" value="${deliveridbill.cost}"/>	
	<c:set var = "total" value="${deliveridbill.total}"/>	
	
	
<tr>


<td>${deliveridbill.billID} </td>
<td>${deliveridbill.cusid}</td>
<td>${deliveridbill.orderID}</td>
<td>${deliveridbill.orderDate}</td>
<td>${deliveridbill.billDate}</td>
<td>${deliveridbill.tax}</td>
<td>${deliveridbill.cost}</td>
<td>${deliveridbill.total}</td>


<c:url value = "DeliverBillUpdate.jsp" var = "DeliverBillUpdate">

<c:param name="billID" value = "${billID}"></c:param>
<c:param name="cusid" value = "${cusid}"></c:param>
<c:param name="orderID" value = "${orderID}"></c:param>
<c:param name="orderDate" value = "${orderDate}"></c:param>
<c:param name="billDate" value = "${billDate}"></c:param>
<c:param name="tax" value = "${tax}"></c:param>
<c:param name="cost" value = "${cost}"></c:param>
<c:param name="total" value = "${total}"></c:param>


</c:url>

<td>

<a href = "${DeliverBillUpdate}"> <input type="button" name="Submit" id="update" value="Update" > </a>

</td>






<c:url value = "DeliverBillDelete.jsp" var = "DeliverBillDelete">

<c:param name="billID" value = "${billID}"></c:param>
<c:param name="cusid" value = "${cusid}"></c:param>
<c:param name="orderID" value = "${orderID}"></c:param>
<c:param name="orderDate" value = "${orderDate}"></c:param>
<c:param name="billDate" value = "${billDate}"></c:param>
<c:param name="tax" value = "${tax}"></c:param>
<c:param name="cost" value = "${cost}"></c:param>
<c:param name="total" value = "${total}"></c:param>


</c:url>

<td>

<a href = "${DeliverBillDelete}">   <input type ="button" id="delete" name="delete"  value="Delete"> </a>

</td>







</tr>





</c:forEach>
</table>
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
