<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>vehicle registration</title>
<link rel="stylesheet" href="web/css/deliver.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="web/css/deliver2.css">
<meta charset="ISO-8859-1">
<script src="web/js/de.js"> </script>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Dates in other months</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker({
      showOtherMonths: true,
      selectOtherMonths: true
    });
  } );
  </script>
  
   <script>
  $( function() {
    $( "#datepicker2" ).datepicker({
      showOtherMonths: true,
      selectOtherMonths: true
    });
  } );
  </script>
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


<form name="myForm" action="VehicleReg" onsubmit="return validateForm()" method="post" >


 <h2>Delivery Vehicle Registration</h2></center><br><br>

           <div class="billformInner">
<center><table>

   <tr>
   <th><h3>Vehicle No</h3></th> <th><input type="text"  name="vno" id="vno"  title="Enter your vehicle licen plate No" placeholder="XX-XXXX" ><br><br></th></tr>
    <tr>
    <th><h3>Vehicle type</h3></th> <th><select name="vtype" id="vtype">
			
 				 <option value="lorry">Lorry</option>
  				 <option value="bike">Bike</option>
                 <option value="three wheel">Three wheel</option>
                </select> <br><br></th></tr>
     <tr>
   <th> <h3>Vehicle brand</h3></th>  <th><input  type="text" name="vbrand" name="text" id="vbrand" placeholder="Vehicle brand"  required><br><br></th></tr>
    <tr>
     <th> <h3>Chassi No</h3></th>  <th><input  type="text" name="vchassi" name="text" id="vchassi" placeholder="Chassi No" required><br><br></th></tr>
    <tr>
     <th> <h3>Vehicle Mileage(Km)</h3></th>  <th><input  type="text" name="vmileage" name="text" id="vmileage"  placeholder="00Km" required><br><br></th></tr>
    <tr>
    <th><h3>Insurance Upto</h3></th> <th><input type="text"  name="vinsurance"  id="datepicker" placeholder="MM-DD-YYYY" required><br><br></th></tr>
     <tr>
    <th><h3>Emission Upto</h3></th> <th><input type="text"  name="vemission"  id="datepicker2" placeholder="MM-DD-YYYY" required><br><br></th></tr>
    
     </table>
     
     </div>


<br><br>

   
    <input type="submit" name="submit" value="Register"  id="submit" onclick="alert('You want to register this vehicle??');">
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
	
    


	
	
</body>
</html>