<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customer registration</title>
<link rel="stylesheet" href="web/css/promotion.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="web/css/styless.css">
<script>
		
function validateForm(){
	
	var name=document.myform.name.value;
	var email=document.myform.email.value;
	var phone=document.myform.phone.value;
	var brand=document.myform.brand.value;
	var model=document.myform.model.value;
	var plate=document.myform.plate.value;
	var pw=document.myform.pw.value;
	
	var pw=document.myform.pw.value;
	var pw2=document.myform.pw2.value;
	
	
 if(name==""){
		alert("Name can't be empty!");
		return false;
	}else if(email==""){
		alert("email can't be empty!");
		return false;
	}else if(phone==""){
		alert("Phone can't be empty!");
		return false;
	}else if(brand==""){
		alert("Brand can't be empty!");
		return false;
	}else if(model==""){
		alert("model can't be empty!");
		return false;
	}
	else if(plate==""){
		alert("plate number can't be empty!");
		return false;
	}
	else if(pw.length<6){
		alert("Password must be at least 6 characters long!");
		return false;
	}else if(pw != pw2){
		alert("Password did not match! Try again!");
		return false;
	}
}


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
		<a href="customerRegister.jsp">Registration</a>
		<a href="customerLogin.jsp">Login to your profile</a>
			

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
			



      <form action="CustomerRegisterServlet" method="post" name="myform"  onsubmit="return validateForm()" class="form">
          
           <center>

           <h2> Registration</h2></center><br><br>

           <div class="billformInner">


      <lable class="lable">Full Name </lable>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
      <input type="text" name="name"><br><br>


      <lable class="lable">Email </lable>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
      <input type="text" name="email"><br><br>

      <lable class="lable">Phone No </lable>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
      <input type="text" name="phone" pattern="07[1,2,5,6,7,8][0-9]+" maxlength="10"><br><br>

      <lable class="lable">Vehicle Brand </lable>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
    
      <select  id="brand"  class="input" name="brand">
		<option value="toyota" >Toyota</option>
		<option value="bmw" >BMW</option>
		<option value="honda" >Honda</option>
		<option value="suzuki" >Suzuki</option>
	
	</select><br><br>


     <lable class="lable">Vehicle Model </lable>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
    
       <select  id="model"   class="input" name="model" onchange="return valid()">
		<option value="x1" >BMW-X1</option>
		<option value="x2">BMW-X2</option>
		<option value="jazz">Honda-JAZZ</option>
		<option value="verna" >Honda-VERNA</option>
		<option value="yaris" >Toyota-YARIS</option>
		<option value="hilux" >Toyota-HILUX</option>
		<option value="swift">Suzuki-SWIFT</option>
		<option value="wagonr">Suzuki-WAGONR</option>
	</select><br><br>

     <lable class="lable">Plate Number</lable>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
     <input type="text" name="plate"><br><br>

    <lable class="lable">Password </lable>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
    <input type="password" name="pw" ><br><br>

    <lable class="lable">Confirm Password</lable>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
    <input type="password" name="pw2"  ><br><br>

</div>


<br><br>
<center>
   <input type="submit" name="submit" value="Register"  id="submit"></center>
       
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