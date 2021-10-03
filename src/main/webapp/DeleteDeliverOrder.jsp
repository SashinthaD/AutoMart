<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Delivery Order</title>
<link rel="stylesheet" href="web/css/deliver.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="web/css/deliver2.css">
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


<form name="myForm" action="DeleteDeliverOrderServlet" onsubmit="return validateForm()" method="post" >

<div class="topic">
<h1>Delete Deliver Order Details</h1>	

</div>			
		
		
		<center>
		<br>
		<br>
		<br>
<%

Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/automart","root","SHD123");
String d_order_id=request.getParameter("d_order_id");

String sql="Select * from deliver_order where d_order_id='"+d_order_id+"'" ;
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery(sql);

 while(rs.next()){
%>
<table>
 <tr>
   <th> <h3>Delivery order id</h3></th>  <th><input  type="text" name="d_order_id" name="text" id="d_order_id" placeholder="D1"value="<%=rs.getString(1)%>"><br><br></th></tr>
    <tr>
     <th> <h3>Phone no</h3></th>  <th><input  type="text" name="phone_no" name="text" id="phone_no" placeholder="Phone number"value="<%=rs.getString(2)%>"><br><br></th></tr>
    <tr>
     <th> <h3>Address</h3></th>  <th><input  type="text" name="address" name="text" id="address" placeholder="Address"value="<%=rs.getString(3)%>"><br><br></th></tr>
    <tr>
    <th><h3>Item no</h3></th> <th><input type="text"  name="item_no"  id="item_no" placeholder="ST001"value="<%=rs.getString(4)%>"><br><br></th></tr>
     <tr>
    <th><h3>Quantity</h3></th> <th><input type="text"  name="qty"  id="qty" placeholder="00"value="<%=rs.getString(5)%>"><br><br></th></tr>
    <tr>
    <th><h3>Unit Price</h3></th> <th><input type="text"  name="unit_price"  id="unit_price" placeholder="Rs"value="<%=rs.getString(6)%>"><br><br></th></tr>
    <tr>
    <th><h3>Date</h3></th> <th><input type="text"  name="date"  id="date" placeholder="YYYY-MM-DD"value="<%=rs.getString(7)%>"><br><br></th></tr>
     <tr>
    <th><h3>Customer id </h3></th> <th><input type="text"  name="cid"  id="cid" placeholder="0"value="<%=rs.getString(8)%>"><br><br></th></tr>
     
                    <% 
 }
 %>
 
     </table>
      
      <input type="submit" name="update" value="Delete" id="delete" onclick="alert('Successfully Delete Delivery Order Details!!!');" >
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
	</div>
	
     
     

</body>
</html>