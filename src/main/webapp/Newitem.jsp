<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="web/css/stock.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="web/css/styles.css">
<meta charset="ISO-8859-1">
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



<form name="myForm" action="orderServlet" method="post" >
<h2> Insert Item Number</h2></center><br><br>

           <div class="billformInner"></div>
<table>

   <tr>
   <th><h3>Item No</h3></th> <th><input  type="text"  name="item_no" id="item_no" placeholder="ST001" required ><br><br></th></tr>
    <tr>
    
     
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