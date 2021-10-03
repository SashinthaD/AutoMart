<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<title>Employee Details</title>
	
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
	
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
  
	<link rel="preconnect" href="https://fonts.googleapis.com">
	
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">


	<link rel="stylesheet" href="css/cusid.css">
	

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
<form action="EmpSalaryDelete"  method="post">		
	<table>
								
		<tr>
			<th>Salary ID</th>
			<th>NIC</th>
			<th>ETF</th>
			<th>EPF</th>
			<th>Over Time</th>
			<th>Bonus</th>
			<th>Total</th>
			
		</tr>


	<c:forEach var="emp" items="${emp}">
		
	
<c:set var = "salID" value="${emp.salID}" />	
<c:set var = "nic" value="${emp.nic}" />	
<c:set var = "etf" value="${emp.etf}" />	
<c:set var = "epf" value="${emp.epf}" />	
<c:set var = "ot" value="${emp.ot}" />	
<c:set var = "bonus" value="${emp.bonus}" />	
<c:set var = "total" value="${emp.total}" />	
	
	
	
	
<tr>
<td> <input type = "text" name = "salID" value="${emp.salID}"readonly>  </td>
<td> <input type = "text" name = "nic" value="${emp.nic}"readonly></td>
<td>${emp.etf}</td>
<td>${emp.epf}</td>
<td>${emp.ot}</td>
<td>${emp.bonus}</td>
<td>${emp.total}</td>


	<c:url value = "EmpSalaryUpdate.jsp" var = "EmpSalaryUpdate">
	
	<c:param name = "salID" value = "${salID}"/>
	<c:param name = "nic" value = "${nic}"/>
	<c:param name = "etf" value = "${etf}"/>
	<c:param name = "epf" value = "${epf}"/>
	<c:param name = "ot" value = "${ot}"/>
	<c:param name = "bonus" value = "${bonus}"/>
	<c:param name = "total" value = "${total}"/>
	
	
	</c:url>

	<td> 	
	<a href = "${EmpSalaryUpdate}" ><input type="button" name="Submit" id="update" value="Update" > </a>
	</td>
<td>
<button type="submit" id="delete" name="Submit">Delete</button>
</td>
</tr>

<br><br><br><br><br>



	

	
	

	 
     </c:forEach>
     
</table>

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
