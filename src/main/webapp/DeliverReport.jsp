<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "automart";
String userid = "root";
String password = "SHD123";

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
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="stylesheet" href="web/css/Report.css">
	<link rel="stylesheet" href="web/css/st.css">

<script src="web/js/jquery-3.6.0.min.js"></script>
<script src="web/js/html2pdf.bundle.min.js"></script>
</head>
<body>

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
				<a href="insertDeliverOrder.jsp">Customer</a>
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
<div id="content">
<center>



<div class="topic">
<h1>Monthly Delivery Details</h1>
</div>



<table class="center"><br>






<tr>
<th>Delivery ID</th>
<th>Delivery Distance</th>
<th>Price Per KM</th>
<th>Delivery Amount</th>
<th>Date</th>






</tr>





<%
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/automart","root","SHD123");
String sql="Select * from deliver where Date like '"+month+"/__/"+year+"'" ;
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
while(rs.next()){



%>
<tr>
<td name="d_id"><%=rs.getString(1)%></td>
<td name="delivery_distance"><%=rs.getString(2)%></td>
<td name="p_per_km"><%=rs.getString(3)%></td>
<td name="delivery_amount"><%=rs.getString(4)%></td>
<td name="Date"><%=rs.getString(5)%></td>
</tr>
<%
}




}catch(Exception e)
{
e.printStackTrace();
}
%>



</table>
<button type="submit"   name="submit"  id="downloadbtn" ><i class="fa fa-download">  </i> Download Report </button><br><br></div>





<script>
$('#downloadbtn').click(function () {
var element = document.getElementById('content');
$("#downloadbtn").hide();
//html2pdf(element);
var opt = {
margin: 1,
filename: 'DeliveryReport.pdf',
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