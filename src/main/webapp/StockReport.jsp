<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@page import="java.sql.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
 <% 
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "automart";
String userid = "root";
String password = "Malshi1999";
String year = request.getParameter("year");
String month = request.getParameter("month");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
     
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Stock report</title>

<link rel="stylesheet" href="web/css/stock.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="stylesheet" href="web/css/styles.css">

<script src="web/js/jquery-3.6.0.min.js"></script>
<script src="web/js/html2pdf.bundle.min.js"></script>


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


<div id="content">
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
String sql="Select * from deliver_order where date like '"+year+"-"+month+"%'" ;
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
String sql="Select * from repairs where date like '"+year+"-"+month+"%'" ;
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


<button   id ="downloadbtn" onclick="alert('You want to download?');" >Download Report</button><br><br></div>

       


<script>
$('#downloadbtn').click(function () {
var element = document.getElementById('content');
$("#downloadbtn").hide();
//html2pdf(element);
var opt = {
margin: 1,
filename: 'stockreport.pdf',
image: { type: 'jpeg', quality: 1.0 },
html2canvas: { scale: 2 },
jsPDF: { unit: 'in', format: 'letter', orientation: 'portrait' }
};

// New Promise-based usage:
//html2pdf().set(opt).from(element).save();

// Old monolithic-style usage:
html2pdf(element, opt);
$("#downloadbtn").show();

});

// This code is collected but useful, click below to jsfiddle link.
</script>

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