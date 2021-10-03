<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Delivery Details</title>
<link rel="stylesheet" href="web/css/deliver.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="web/css/deliver2.css">
<meta charset="ISO-8859-1">

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


<form name="myForm" action="DeliverInsertServlet" onsubmit="return validateForm()" method="post" >

 <h2> Insert Deliver Details</h2></center><br><br>

           <div class="billformInner">

<%

 	Class.forName("com.mysql.jdbc.Driver").newInstance();
     Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/automart","root","SHD123");
     String d_order_id=request.getParameter("d_order_id");
     
     
     String sql="SELECT d_order_id from deliver_order where d_order_id='"+d_order_id+"'";
     Statement st=conn.createStatement();
     ResultSet rs=st.executeQuery(sql);

 

     while(rs.next()){
         
         %>

<center><table>
 <tr>
   <th> <h3>Delivery id</h3></th>  <th><input  type="text" name="d_id" name="text" id="d_id" placeholder="DE1"required><br><br></th></tr>
    <tr>
     <th> <h3>Delivery Distance</h3></th>  <th><input  type="text" name="delivery_distance" name="text" id="delivery_distance" placeholder="00Km" required><br><br></th></tr>
    <tr>
     <th> <h3>Price Per Km</h3></th>  <th><input  type="text" name="p_per_km" name="text" id="p_per_km" placeholder="Rs" required><br><br></th></tr>
    
     <tr>
    <th><h3>Date</h3></th> <th><input type="text"  name="date" name="text" id="datepicker" placeholder="MM-DD-YYYY" required><br><br></th></tr>
     <tr>
    <th><h3>Vehicle no</h3></th> <th><input type="text"  name="vno" name="text" id="vno" placeholder="XX-XXXX" required><br><br></th></tr>
     <tr>
    <th><h3>Delivery order id</h3></th> <th><input type="text"  name="d_order_id" name="text" id="d_order_id" value="<%=rs.getString(1)%>" placeholder="D1"><br><br></th></tr>
     <tr>
    <th><h3>Employee Nic</h3></th> <th><input type="text"  name="nic" name="text" id="nic" placeholder="0000000000v" required><br><br></th></tr>
   
    
     </table>
     
             <%
     }
       
   
%>
    
      <input type="submit" name="submit" value="Insert"  id="submit2" onclick="alert('Order Details Insert!!');">
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