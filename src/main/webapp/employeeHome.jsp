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
	<link rel="stylesheet" href="css/employeeHome.css">
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
			
		<c:forEach var="emp" items="${empProf}">
		
			<c:set var="nic" value="${emp.nic}"/>
			<c:set var="name" value="${emp.name}"/>
			<c:set var="position" value="${emp.section}"/>
			
		<form name="form" id="form" action="employeeProfile" method="post">
 			
 			<img src="images/profile.png" alt="profile"><br>
 			
 			<button type="submit" name="submit" id="profile" value="${emp.nic}">${emp.name} Profile</button>
		
		</form>
	    
	    <div class="form"><br><br><br>
	    <c:choose>
	    	<c:when test="${emp.section=='EmployeeManagement'}">
	        		<button type="button" onclick="document.location.href='employeeManagement.jsp'" name="em" id="submit">Employee Management
	        		</button>
	   			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Repair Management
	        		</button>
	        	<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Financial Management
	        		</button>
	       		<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit"  style="box-shadow:none" disabled>Delivery Management
	        		</button>
	        	<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Stock Management
	    			</button>
	    			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Appointment Management
	    			</button>
	    			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='mainpromotion.jsp'" name="em" id="submit" style="box-shadow:none" disabled>Promotion Management
	    			</button>
	    	</c:when>
	    	
	    	<c:when test="${emp.section=='RepairManagement'}">
	    			<button type="button" onclick="document.location.href='employeeManagement.jsp'" name="em" id="submit" style="box-shadow:none" disabled>Employee Management
	        		</button>
	   			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit">Repair Management
	        		</button>
	        	<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Financial Management
	        		</button>
	       		<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit"  style="box-shadow:none" disabled>Delivery Management
	        		</button>
	        	<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Stock Management
	    			</button>
	    			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Appointment Management
	    			</button>
	    			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='mainpromotion.jsp'" name="em" id="submit" style="box-shadow:none" disabled>Promotion Management
	    			</button>
	    	</c:when>
	    	
	    	<c:when test="${emp.section=='FinancialManagement'}">
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Employee Management
	        		</button>
	   			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Repair Management
	        		</button>
	        	<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='financialHomePage.jsp'" name="em" id="submit">Financial Management
	        		</button>
	       		<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit"  style="box-shadow:none" disabled>Delivery Management
	        		</button>
	        	<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Stock Management
	    			</button>
	    			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Appointment Management
	    			</button>
	    			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='mainpromotion.jsp'" name="em" id="submit" style="box-shadow:none" disabled>Promotion Management
	    			</button>
	    	</c:when>
	    	
	    	<c:when test="${emp.section=='DeliveryManagement'}">
	    			<button type="button" onclick="document.location.href='employeeManagement.jsp'" name="em" id="submit" style="box-shadow:none" disabled>Employee Management
	        		</button>
	   			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Repair Management
	        		</button>
	        	<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit"  style="box-shadow:none" disabled>Financial Management
	        		</button>
	       		<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='DeliveryHome.jsp'" name="em" id="submit">Delivery Management
	        		</button>
	        	<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Stock Management
	    			</button>
	    			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Appointment Management
	    			</button>
	    			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='mainpromotion.jsp'" name="em" id="submit" style="box-shadow:none" disabled>Promotion Management
	    			</button>
	    	</c:when>
	    	
	    	<c:when test="${emp.section=='StockManagement'}">
	    			<button type="button" onclick="document.location.href='employeeManagement.jsp'" name="em" id="submit" style="box-shadow:none" disabled>Employee Management
	        		</button>
	   			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Repair Management
	        		</button>
	        	<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit"  style="box-shadow:none" disabled>Financial Management
	        		</button>
	       		<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Delivery Management
	        		</button>
	        	<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit">Stock Management
	    			</button>
	    			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Appointment Management
	    			</button>
	    			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='mainpromotion.jsp'" name="em" id="submit" style="box-shadow:none" disabled>Promotion Management
	    			</button>
	    	</c:when>
	    	
	    	<c:when test="${emp.section=='AppointmentManagement'}">
	    			<button type="button" onclick="document.location.href='employeeManagement.jsp'" name="em" id="submit" style="box-shadow:none" disabled>Employee Management
	        		</button>
	   			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Repair Management
	        		</button>
	        	<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit"  style="box-shadow:none" disabled>Financial Management
	        		</button>
	       		<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Delivery Management
	        		</button>
	        	<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Stock Management
	    			</button>
	    			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='reportnav.jsp'" name="em" id="submit">Appointment Management
	    			</button>
	    			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='mainpromotion.jsp'" name="em" id="submit" style="box-shadow:none" disabled>Promotion Management
	    			</button>
	    	</c:when>
	    	
	    	<c:when test="${emp.section=='PromotionManagement'}">
	    			<button type="button" onclick="document.location.href='employeeManagement.jsp'" name="em" id="submit" style="box-shadow:none" disabled>Employee Management
	        		</button>
	   			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Repair Management
	        		</button>
	        	<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit"  style="box-shadow:none" disabled>Financial Management
	        		</button>
	       		<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Delivery Management
	        		</button>
	        	<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='#'" name="em" id="submit" style="box-shadow:none" disabled>Stock Management
	    			</button>
	    			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='reportnav.jsp'" name="em" id="submit" style="box-shadow:none" disabled>Appointment Management
	    			</button>
	    			
	    			<br><br><br><br>
	        
	        		<button type="button" onclick="document.location.href='mainpromotion.jsp'" name="em" id="submit">Promotion Management
	    			</button>
	    	</c:when>
	    
	    </c:choose>
	       
	    <br><br><br><br>
	        
        </div><br><br><br><br>
         
         <form action="getLeavingInfo" method="post">
        	<button type="submit" name="leave" id="leav" value="${emp.nic}">Apply for Leave of Absence</button>
		</form>
       </c:forEach> 
      
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