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
	<link rel="stylesheet" href="css/employeeProfile.css">
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
	
		<div class="form" id="form">
		
		<h2>Employee Profile</h2><br><br><br><br>
			
		<table>
				
		<c:forEach var="emp" items="${empProf}">
		
			<c:set var="nic" value="${emp.nic}"/>
			<c:set var="name" value="${emp.name}"/>
			<c:set var="mobile" value="${emp.mobile}"/>
			<c:set var="email" value="${emp.email}"/>
			<c:set var="dob" value="${emp.dob}"/>			
			
				<tr>
					<td><label>Employee's name :</label></td>
					<td><label>${emp.name}</label></td>
				</tr>
				<tr>
					<td><label>NIC number :</label></td>
					<td><label>${emp.nic}</label></td>
				</tr>
				<tr>
					<td><label>Date of birth :</label></td>
					<td><label>${emp.dob}</label></td>
				</tr>
				<tr>
					<td><label>Mobile number :</label></td>
					<td><label>${emp.mobile}</label></td>
				</tr>
				<tr>
					<td><label>E-mail address :</label></td>
					<td><label>${emp.email}</label></td>
				</tr>
				<tr>
					<td><label>Position :</label></td>
					<td><label>${emp.position}</label></td>
				</tr>
				<tr>
					<td><label>Working on section :</label></td>
					<td><label>${emp.section}</label></td>
				</tr>
				<tr>
					<td><label>Basic Salary :</label></td>
					<td><label>${emp.basicSalary}</label></td>
				</tr>
				<c:forEach var="leave" items="${empLeav}">
					<tr>
						<td><label>Leavings of Absences Left :</label></td>
					</tr>
						<tr>
							<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								<label>Medical Leavings</label></td>
							<td><label>${leave.sick}</label></td>
						</tr>
						<tr>
							<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								<label>Casual Leavings</label></td>
							<td><label>${leave.casual}</label></td>
						</tr>
				</c:forEach>
        </c:forEach>
        </table>
        
        <c:url value="employeeUpdate.jsp" var="employeeUpdate">
  			<c:param name="name" value="${name}"/>
  			<c:param name="mobile" value="${mobile}"/>
  			<c:param name="email" value="${email}"/>
  			<c:param name="nic" value="${nic}"/>
  			<c:param name="dob" value="${dob}"/>
  		</c:url>
  		<br><br><br><br><br>
  		
  		<a href="${employeeUpdate}" >
  			<input type="button" name="update" id="update" value="Edit Profile">
  		</a>
  
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