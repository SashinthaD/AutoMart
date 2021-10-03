<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer update</title>





<link rel="stylesheet" href="web/css/promotion.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="stylesheet" href="web/css/styless.css">
<script>


function valid()
{
if(document.getElementById("brand").value=="toyota")
{

	if((document.getElementById("model").value=="yaris") ||(document.getElementById("model").value=="hilux"))
	{
		alert ("correct!!");
		return true;
	}
	else
	{
		alert("model is not matching to the brand!!");
		return false;
	}
}
 
	else if(document.getElementById("brand").value=="bmw")
{

		if((document.getElementById("model").value=="x1" )|| (document.getElementById("model").value=="x2"))
	{
		alert ("correct!!");
		return true;
	}
	else
	{
		alert("model is not matching to the brand!!");
			return false;
	}
}

	else if(document.getElementById("brand").value=="honda")
{

	if((document.getElementById("model").value=="jazz") || (document.getElementById("model").value=="verna"))
	{
		alert ("correct!!");
		return true;
	}
	else
	{
		alert("model is not matching to the any brand!!");
			return false;
	}
}
 
 
 	else if(document.getElementById("brand").value=="suzuki")
{

 	if((document.getElementById("model").value=="swift")||(document.getElementById("model").value=="wagonr"))
	{
		alert ("correct!!");
		return true;
	}
	else
	{
		alert("model is not matching to the brand!!");
			return false;
	}
}

	else
	{
		alert("model is not matching to the brand!!");
			return false;
	}
}
</script>
</head>
<body>






	<div class="box-area">
		<header>
			<div class="wrapper">
				<div class="content">
						<img class="img" src="web/images/logo.png" alt="logo image">
					</div>
				<nav>
					<a href="Home.jsp">Home</a>
				<a href="#">Promotions & Offers</a>
				<a href="customerRegister.jsp">Registration</a>
				<a href="customerLogin">Login to your profile</a>
			

				</nav>
			</div>
		</header>
		<div class="bannerarea">

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
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	String brand=request.getParameter("brand");
	String model=request.getParameter("model");
	String plate=request.getParameter("plate");


%>		
		
<form action="CustomerUpdateServlet" method="post" class="form">


<div class="topic">
<h1><center>Update My Details</h1>	
</div>
<br><br>

		 
	<label> ID</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
	<input type="text" name="id"  value="<%=id%>" readonly><br><br>	
		
	<label>Full Name</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
	 <input type="text" name="name"  value="<%=name%>" ><br><br>


	<label>Email</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
	 <input type="text" name="email"  value="<%=email%>"  ><br><br>
	
	<label>Phone Number</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
	 <input type="text" name="phone"  value="<%=phone%>"><br><br>
	
	<label>Vehicle Brand</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
	   <select  id="brand"  class="input" name="brand">
	   <option  value="<%=brand%> "><%=brand%></option>
		<option value="toyota" >Toyota</option>
		<option value="bmw" >BMW</option>
		<option value="honda" >Honda</option>
		<option value="suzuki" >Suzuki</option>
	
	</select><br><br>
	
	
	<label>Vehicle Model</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
	 
	     <select  id="model"   class="input" name="model"  onchange="return valid()">
	    <option value="<%=model%>"><%=model%></option>
		<option value="x1" >BMW-X1</option>
		<option value="x2">BMW-X2</option>
		<option value="jazz">Honda-JAZZ</option>
		<option value="verna" >Honda-VERNA</option>
		<option value="yaris" >Toyota-YARIS</option>
		<option value="hilux" >Toyota-HILUX</option>
		<option value="swift">Suzuki-SWIFT</option>
		<option value="wagonr">Suzuki-WAGONR</option>
	</select><br><br>
	
	<label>Plate Number</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<input type="text" name="plate"  value="<%=plate%>"><br><br>
	
	
	
		
	
	    <input type="submit" name="submit" value="Update" class="update2">
	  
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
							<h4>Contact Us</h4>
							<ul>
								<li><a href="#">0112345672</a></li>
								<li><a href="#">0811234567</a></li>
								<li><a href="#">automart@gmail.com</a></li>

							</ul>
						</div>
						<div class="footer-col">
							<h4>online shop</h4>
							<ul>
								<li><a href="#">Inventory</a></li>

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