<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stock Table</title>
<link rel="stylesheet" href="web/css/stock.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="stylesheet" href="web/css/styles.css">
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
					<h1>Stock</h1>	
				</div>	


<table class="center"><br>



<tr>
<th>Item no</th>
<th>vehicle brand </th>
<th>vehicle model</th>
<th>vehicle year</th>
<th>category</th>
<th>quantity</th>
<th>limited stock</th>
<th>less item</th>
<th>unit price</th>
<th>warranty</th>
<th>status</th>
<th>update</th>
<th>delete</th>

</tr>



<%
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/automart","root","Malshi1999");
String sql="Select * from stock" ;
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
while(rs.next()){

%>
<tr>
<td name="item_no"><%=rs.getString(1)%></td>
<td name="vehicle_brand"><%=rs.getString(2)%></td>
<td name="vehicle_model"><%=rs.getString(3)%></td>
<td name="vehicle_year"><%=rs.getString(4)%></td>
<td name="category"><%=rs.getString(5)%></td>
<td name="qty"><%=rs.getString(6)%></td>
<td name="limit_stock"><%=rs.getString(7)%></td>
<td name="less_item"><%=rs.getString(8)%></td>
<td name="unit_price"><%=rs.getString(9)%></td>
<td name="warranty"><%=rs.getString(10)%></td>
<td name="status"><%=rs.getString(11)%></td>

<td><a href='updateStock.jsp?item_no=<%=rs.getString(1) %>' class="update"  id="update">Update</a></td>
<td><a href='DeleteStock.jsp?item_no=<%=rs.getString(1) %>' class="update" id="delete">Delete</a></td>
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

<center>

<div class="topic">
					<h1>Stock Delivery Details</h1>	
				</div>	


<table class="center"><br>




<tr>
<th>Delivery order id</th>
<th>Item no</th>
<th>Quantity</th>
<th>Date</th>




</tr>



<%
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/automart","root","Malshi1999");
String sql="Select * from deliver_order" ;
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
while(rs.next()){

%>
<tr>
<td name="d_order_id"><%=rs.getString(1)%></td>
<td name="item_no"><%=rs.getString(4)%></td>
<td name="qty"><%=rs.getString(5)%></td>
<td name="date"><%=rs.getString(7)%></td>
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

<center>

<div class="topic">
					<h1>Stock Repairs Details</h1>	
				</div>	


<table class="center"><br>




<tr>
<th>Repair id</th>
<th>Part number</th>
<th>Part name</th>
<th>Quantity</th>
<th>Date</th>




</tr>



<%
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/automart","root","Malshi1999");
String sql="Select * from repairs" ;
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
while(rs.next()){

%>
<tr>
<td name="Rid"><%=rs.getString(1)%></td>
<td name="Part_no"><%=rs.getString(5)%></td>
<td name="Part_name"><%=rs.getString(6)%></td>
<td name="qty"><%=rs.getString(7)%></td>
<td name="date"><%=rs.getString(10)%></td>




</tr>
<%
}


}catch(Exception e)
{
e.printStackTrace();
}
%>

</table>

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