<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Stock Item</title>

<link rel="stylesheet" href="web/css/stock.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="web/css/styles.css">
<meta charset="ISO-8859-1">
<script>
function valid()
{
if(document.getElementById("vehicle_brand").value=="TOYOTA")
{

 if((document.getElementById("vehicle_model").value=="TOYOTA Yaris") ||(document.getElementById("vehicle_model").value=="TOYOTA Hilux"))
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
else if(document.getElementById("vehicle_brand").value=="BMW")
{

 if((document.getElementById("vehicle_model").value=="BMX X1" )|| (document.getElementById("vehicle_model").value=="BMW X2"))
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

 else if(document.getElementById("vehicle_brand").value=="Honda")
{

 if((document.getElementById("vehicle_model").value=="Honda Jazz") || (document.getElementById("vehicle_model").value=="Honda Verna"))
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

else if(document.getElementById("vehicle_brand").value=="Suzuki")
{

 if((document.getElementById("vehicle_model").value=="Suzuki Swift")||(document.getElementById("vehicle_model").value=="Suzuki WagonR"))
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



				<nav>
					<div class="content">
						<img class="img" src="web/images/logo.png" alt="logo image">
					</div>
				<a href="HomePage.jsp">Home</a>
				<a href="#">About</a>
				<a href="StockHome.jsp">Stock</a>
				<a href="#">Services</a>
				<a href="#">Contact</a>

				</nav>
	</div>
	
</header>
</div>
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



 

<form name="myForm" action="StockInsertServlet" onsubmit="return validateForm()" method="post" >
<h2> Insert New Stock Item</h2></center><br><br>

           <div class="billformInner"></div>
<table>

   <tr>
   <th><h3>Item No</h3></th> <th><input  type="text"  name="item_no" id="item_no" placeholder="ST001" required ><br><br></th></tr>
    <tr>
    <th><h3>Vehicle Brand</h3></th> <th><select name="vehicle_brand" id="vehicle_brand" required>
				<option value="***********">***********</option>
 				 <option value="TOYOTA">TOYOTA</option>
  				 <option value="BMW">BMW</option>
                 <option value="Honda">Honda</option>
                 <option value="Suzuki">Suzuki</option>
                </select> <br><br></th></tr>
     <tr>
      <tr>
    <th><h3>Vehicle Model</h3></th> <th><select name="vehicle_model"  id="vehicle_model" onchange="return valid()" required>
			
				<option value="***********">***********</option>
 				 <option value="BMX X1">BMW X1</option>
  				 <option value="BMW X2">BMW X2</option>
                 <option value="Honda Jazz">Honda Jazz</option>
                 <option value="Honda Verna">Honda Verna</option>
                 <option value="TOYOTA Yaris">TOYOTA Yaris</option>
                 <option value="TOYOTA Hilux">TOYOTA Hilux</option>
                 <option value="Suzuki Swift">Suzuki Swift</option>
                 <option value="Suzuki WagonR">Suzuki WagonR</option>
                 </select> <br><br></th></tr>
     <tr>
     <th><h3>Vehicle year</h3></th> <th><select name="vehicle_year" id="vehicle_year" required>
			
			<option value="***********">***********</option>
			 <option value="2018">2018</option>
  				 <option value="2019">2019</option>
                 <option value="2020">2020</option>
                
                 </select> <br><br></th></tr>
    <tr>
    <th><h3>categories</h3></th> <th><select name="category" id="category" required>
			
				<option value="***********">***********</option>
 				 <option value="Bonnet">Bonnet</option>
  				 <option value="Dash">Dash</option>
                 <option value="Engine">Engine</option>
                 <option value="Body">Body</option>
                </select> <br><br></th></tr>
      <tr>
   <th> <h3>Quantity</h3></th>  <th><input  type="text" name="qty" name="text" id="qty" placeholder="Qty" required><br><br></th></tr>
    <tr>
   <th> <h3>Limited Stock</h3></th>  <th><input  type="text" name="limit_stock" name="text" id="limit_stock" placeholder="number" pattern="[50]{1,2}" title="Limited stock is 50" required><br><br></th></tr>
   
     <tr>
   <th> <h3>Unit Price</h3></th>  <th><input  type="text" name="unit_price" name="text" id="unit_uprice" placeholder="Rs" required><br><br></th></tr>
    <tr>
     <th> <h3>Warranty</h3></th>  <th><input  type="text" name="warranty" name="text" id="warranty" placeholder="YYYY-YYYY" title="Entert warranty period" required><br><br></th></tr>
    <tr>
    <th><h3>Status</h3></th> <th><select name="status" id="status">
			
				<option value="***********">***********</option>
 				 <option value="stock is full">stock is full</option>
  				 <option value="Not Ordered">Not Ordered</option>
                 <option value="pending order">pending order</option>
                
                </select> <br><br></th></tr>
    
     </table>
    
      <input type="submit" name="submit" value="Insert"  id="submit" onclick="alert('You want to insert this item??');">
       
    <br><br>


	</form>
	

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