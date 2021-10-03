<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>AUTOMART</title>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="css/leaveApproveDetails.css">
</head>

<body>
	<div class="box-area">
		<header>
			<div class="wrapper">
				<div class="content">
					<img class="img" src="images/logo.png" alt="logo image">
				</div>
				<nav>
					<a href="#">home</a>
					<a href="#">about</a>
					<a href="#">services</a>
					<a href="employeeLogin.jsp">Logout</a>
				</nav>
			</div>
		</header>
		<div class="banner-area"></div>

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
						
				<h2> Approving leaving applications </h2><br><br><br><br>
				
				<br><br><br><br>
			<form action="leavingApproval" method="post">
			<table>
				<tr>
					<th>Application ID</th>
					<th>NIC Number</th>
					<th>Reason for Absence</th>
					<th>Date of Absence</th>
					<th>Time Period (Days)</th>
					<th>Medical leaves left</th>
					<th>Casual leaves left</th>
					<th>More details</th>
					<th>Status</th>
					<th>Submit</th>
				</tr>
				
				<c:forEach var="leave" items="${leave}">
				<tr>
					<td><input type="text" name="id" value="${leave.id}" readonly></td>
					<td><input type="text" name="nic" value="${leave.nic}" readonly></td>
					<td><input type="text" name="reason" value="${leave.reason}" readonly></td>
					<td><input type="text" name="period" value="${leave.period}" readonly></td>
					<td><input type="text" name="date" value="${leave.date}" readonly></td>
					<td><input type="text" name="sick" value="${leave.sick}" readonly></td>
					<td><input type="text" name="casual" value="${leave.casual}" readonly></td>
					
					<td><textarea readonly>${leave.more}</textarea></td>
					
					<td><select name="status">
						<option value="" selected>Pending</option>
						<option value="Approved">Approved</option>
						<option value="Denied">Denied</option>
					</select></td>
					<td>
						<button type="submit" class="Approve" name="Approve" value="${leave.id}">Approve</button>
					</td>
				</tr>
				</c:forEach>	
			</table>
			
			<br><br><br>
			
			<label>reason to deny</label>&nbsp&nbsp&nbsp&nbsp&nbsp
			
			
			<textarea name="more" class="more"></textarea>

			</form>
			</div>
<!--Close Content Area-->
        
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