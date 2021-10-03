<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deliver Order Table</title>
<link rel="stylesheet" href="web/css/deliver.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="web/css/Report.css">
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

<div class="topic">
					<h1>Delivery Order</h1>	
				</div>	


<table class="center"><br>






<tr>
<th>Delivery order id</th>
<th>phone no </th>
<th>Address</th>
<th>Item no</th>
<th>Quantity</th>
<th>Unit price</th>
<th>Date</th>
<th>Customer id</th>

<th>Delete</th>
<th>Deliver</th>

</tr>



<%
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/automart","root","SHD123");
String sql="Select * from deliver_order" ;
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
while(rs.next()){

%>
<tr>
<td name="d_order_id"><%=rs.getString(1)%></td>
<td name="phone_no"><%=rs.getString(2)%></td>
<td name="address"><%=rs.getString(3)%></td>
<td name="item_no"><%=rs.getString(4)%></td>
<td name="qty"><%=rs.getString(5)%></td>
<td name="unit_price"><%=rs.getString(6)%></td>
<td name="date"><%=rs.getString(7)%></td>
<td name="cid"><%=rs.getString(8)%></td>


<td><a href='DeleteDeliverOrder.jsp?d_order_id=<%=rs.getString(1) %> '  id="delete2">Delete </a></td>
<td><a href='insertDeliveryDetails.jsp?d_order_id=<%=rs.getString(1) %>' id="deliver2">Deliver</a></td>
</tr>
<%
}


}catch(Exception e)
{
e.printStackTrace();
}
%>

</table>

<br><br><br>

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