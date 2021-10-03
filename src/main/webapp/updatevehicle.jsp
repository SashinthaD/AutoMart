<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle Update</title>

<link rel="stylesheet" href="web/css/deliver.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="stylesheet" href="web/css/deliver2.css">
	
	

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
        <br>
        <br>
        <br>
        <br>


<!--Open Content Area-->
		
			
		
		
		<center>
		<br>
		<br>
		<br>
		
		
<%
 String vehicle_no= request.getParameter("vehicle_no");
 String vehicle_type=request.getParameter("vehicle_type");
 String vehicle_brand=request.getParameter("vehicle_brand");
 String chassi_no=request.getParameter("chassi_no");
 String vehicle_mileage=request.getParameter("vehicle_mileage");
 String insurance=request.getParameter("insurance");
 String emission=request.getParameter("emission");

%>
<form name="myForm" action="UpdateVehicleServlet" onsubmit="return validateForm()" method="post" >

<div class="topic">
<h1><center>Update Vehicle Details</h1>	
</div>

<table>
   <tr>
   <th><h3>Vehicle No</h3></th> <th><input type="text"  name="vno" id="vno" placeholder="XX-XXXX" value="<%=vehicle_no %>" readonly><br><br></th></tr>
    <tr>
    <th><h3>Vehicle type</h3></th><th><select name="vtype" id="vtype"   >
			<option  value="<%=vehicle_type%>" ><%=vehicle_type%>  </option>
 				 <option  value="Lorry">Lory</option>
  				 <option value="bike" >Bike </option>
                 <option value="three wheel">Three wheel </option>
                  </select> <br><br></th></tr>
     <tr>
   <th> <h3>Vehicle brand</h3></th>  <th><input  type="text" name="vbrand" name="text" id="vbrand" placeholder="Vehicle brand" value="<%=vehicle_brand %>"readonly><br><br></th></tr>
    <tr>
     <th> <h3>Chassi No</h3></th>  <th><input  type="text" name="vchassi" name="text" id="vchassi" placeholder="Chassi No" value="<%=chassi_no %>"readonly><br><br></th></tr>
    <tr>
     <th> <h3>Vehicle Mileage(Km)</h3></th>  <th><input  type="text" name="vmileage" name="text" id="vmileage" placeholder="00Km" value="<%=vehicle_mileage %>"required><br><br></th></tr>
    <tr>
    <th><h3>Insurance Upto</h3></th> <th><input type="text"  name="vinsurance"  id="datepicker" placeholder="MM-DD-YYYY"  value="<%=insurance %>"required><br><br></th></tr>
     <tr>
    <th><h3>Emission Upto</h3></th> <th><input type="text"  name="vemission"  id="datepicker2" placeholder="MM-DD-YYYY"  value="<%=emission %>" required><br><br></th></tr>
     </table>
    
     <input type="submit" name="update" value="Update" id="update"  onclick="alert('Successfully Update Vehicle Details!');">
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