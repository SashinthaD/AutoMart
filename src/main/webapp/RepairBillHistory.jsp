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
			<th>Repair ID</th>
			<th>Spare Part Price</th>
			<th>Date</th>
			<th>Service Charges</th>
			<th>Total</th>
		</tr>


	<c:forEach var="billhistory" items="${idbill}">
	<c:set var = "billID" value ="${ billhistory.billID }"/>
	<c:set var = "sparePartPrice" value ="${billhistory.sparePartPrice}"/>
	<c:set var = "date" value ="${billhistory.date}"/>
	<c:set var = "serviceCharges" value ="${ billhistory.serviceCharges }"/>
	<c:set var = "total" value ="${ billhistory.total }"/>
	
		

	
	
	
	
	
<tr>
<td>${billhistory.billID}</td>
<td>${billhistory.rid}</td>
<td>${billhistory.sparePartPrice}</td>
<td>${billhistory.date}</td>
<td>${billhistory.serviceCharges}</td>
<td>${billhistory.total}</td>


<c:url value = "RepairBillUpdate.jsp" var = "RepairBillUpdate">

		<c:param name = "RepairBillID" value = "${billID}"/>
		<c:param name = "RepairSPPrice" value = "${sparePartPrice}"/>
		<c:param name = "RepairDate" value = "${date}"/>
		<c:param name = "RepairSCharges" value = "${serviceCharges}"/>
		<c:param name = "RepairTotal" value = "${total}"/>
	

</c:url>



<td>
 <a href = "${RepairBillUpdate}">   <input type="button" name="Submit" id="update" value="Update" >   </a>
</td>



<c:url value = "RepairBillDelete.jsp" var = "RepairBillDelete">

		<c:param name = "RepairBillID" value = "${billID}"/>
		<c:param name = "RepairSPPrice" value = "${sparePartPrice}"/>
		<c:param name = "RepairDate" value = "${date}"/>
		<c:param name = "RepairSCharges" value = "${serviceCharges}"/>
		<c:param name = "RepairTotal" value = "${total}"/>
	

</c:url>






<td> 
	  <a href = "${RepairBillDelete}"> <input type ="button" id="delete" name="delete" value="Delete"></a>
	
</td>


</tr>


</c:forEach>
</table>
<br><br><br>


<form action="RepairBillReport" method="post">
			
<label for="cid"><strong>Generate Report :-</strong></label><br><br>
  <br>
  <br>



 	
 
 		<input type="date" id="rid" name="date"><br><br>
	 	
         <input type ="submit" id="submit" value="Print Report">
         	
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
