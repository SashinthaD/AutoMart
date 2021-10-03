<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<title>Fixed Header with html and css | Collapsing Header Tutorial</title>
	
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
	
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
  
	<link rel="preconnect" href="https://fonts.googleapis.com">
	
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">
 
	<link rel="stylesheet" href="css/update_appointment_details.css">
	

</head>
<body>
	<div class="box-area">
		<header>
			<div class="wrapper">
				
				<nav>
				
				<div class="logo">
				<img class="img" src="images/logo.png" alt="logo image">
				</div>
				
				<a href="#">home</a>
				<a href="#">about</a>
		
				<a href="#">services</a>
				<a href="#">contact</a>

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

<div class="form">
<form action="updateappointmentServlet" method="post">
	
	<% 
		String apoid = request.getParameter("apoid");
		String type = request.getParameter("type");
		String model = request.getParameter("model");
		String time = request.getParameter("time");
		String date = request.getParameter("date");
		String cid = request.getParameter("cid");
		
	%>	
			
<label for="upd"><strong><h2> Update Appointment Details </h2></strong></label><br><br><br> <br> 
 

 <label for="aid">Appointment ID:</label>
 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
 <input class="input" type="text" id="id" name="apoid" value="<%=apoid %> "readonly><br><br>
 

 <label id="lbl">Service Type: </label>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   
<select id="type" name="type" class="input" value="<%=type%>"required>
	<option>--</option>
    <option>Full Service</option>
	<option>Oil Change</option>
	<option>Interior Cleanup</option>
	<option>Engine Tune Up</option>
</select>
 
  <br>
  <br>
  
    
 <label id="lbl">Vehicle Model: </label> 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
 <select id="type" name="model" class="input" value="<%=model%>" required>
	<option>--</option>
    <option>Motor Bicycle</option>
	<option>Three Wheel</option>
	<option>Motor Car</option>
	<option>Dual Purpose Vehicle</option>
	<option>Heavy Duty Vehicle</option>
</select>
 
 <br>
 <br>
 
  <label id="lbl">Required Time: </label> 
  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
 <select id="type" name="time" class="input" value="<%=time%>"required>
	<option>--</option>
    <option>8am-10am</option>
	<option>10am-12pm</option>
	<option>1pm-3pm</option>
	<option>3pm-5pm</option>
 </select>

<br>
<br>

 <label id="lbl">Required Date:</label>
 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
 <input type="date" id="date" name="date" input="date" class="input" value="<%=date%>"required><br><br>

<br> 
<br>  
<br>
<br>
<br>
<br>

<input type="submit" name="Submit" id="submit" value="Confirm">

</form>
</div>	 
     
  <br>  
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
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
