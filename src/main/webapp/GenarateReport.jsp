<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "automart";
String user = "root";
String password = "Dilanka000112";

String year = request.getParameter("year");

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
<title>Promotion report</title>
<link rel="stylesheet" href="web/css/promotion.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="web/css/styless.css">
<script src="web/js/jquery-3.6.0.min.js"></script>
<script src="web/js/html2pdf.bundle.min.js"></script>
<style>

body{
    	background: white;
	}

button{
		background-color: #04406c;
	 	border: none;
	 	color: white;
	 	padding: 15px 32px;
	 	text-align: center;
	  	text-decoration: none;
	  	display: inline-block;
	  	font-size: 16px;
	  	margin: 4px 2px;
	  	cursor: pointer;
	  	border-radius: 5px;
}
button:hover {
		box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
	</style>
	
</head>
<body>
 
<div class="box-area">
<header>
<div class="wrapper">
<div class="content">
<img class="img" src="web/images/logo.png" alt="logo image">
</div>
<nav>
<a href="mainpromotion.jsp">Promotions & Offers</a>
<a href="#">Registration</a>
<a href="#">Login to your profile</a>
			

</nav>
</div>
</header>
<div class="bannerarea">

</div>

<div class="content-area">
<div class="wrapper">

 <br><br>	
<div id="content">
<p align="center"><b>Date & Time : <%= new Date().toString()%></b></p><br>
  
<h1>Get Promotion Details Report</h1>	<br><br><br>
  
<h3>Promotion 1</h3>	<br><br><br>
<table border="1" id="mytreport">
<tr>
			
<th>Customer ID</th>
<th>Customer Name</th>
<th>Repair Price</th>
<th>Percentage</th>
<th>Total Price</th>
				
	
</tr>
		
  
		 <%
	
 try {
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/automart","root","200d80*#");
	 String sql="SELECT c.idCustomer,c.Full_Name,max(Total_Repair_Price),pc.percentage,pc.After_Discount FROM automart.promotion p, automart.promotion_calculation pc,automart.repairs r,automart.customer c  where r.type='CO'  and r.date like '"+year+"%' and p.Idpromotionsandoffers=pc.Promo_id and pc.Cus_id=r.cid and c.idCustomer=pc.Cus_id and p.Idpromotionsandoffers=1 and p.Idpromotionsandoffers=pc.Promo_id  group by r.cid " ;
	 Statement st=con.createStatement();
	 ResultSet rs=st.executeQuery(sql);
	
     while(rs.next()){
		
		 
		 %>
  
	
		
			
<tr>
				
<td name="cusid"><%=rs.getInt(1)%></td>
<td name="name"><%=rs.getString(2)%></td>
<td name="price"><%=rs.getString(3)%></td>
<td name='percentage'><%=rs.getString(4)%></td>
<td name="tot"><%=rs.getString(5)%></td>
				
				
</tr>
		<%
}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}

 %>
		
</table><br><br>
	
	
	
	
<h3>Promotion 2</h3>	<br><br><br>
<table border="1" id="mytreport">
<tr>
			
<th>Customer ID</th>
<th>Customer Name</th>
<th>Repair Price</th>
<th>Percentage</th>
<th>Total Price</th>
				
	
</tr>
		
  
		 <%
	
 try {
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/automart","root","200d80*#");
	 String sql="SELECT c.idCustomer,c.Full_Name,max(Total_Repair_Price),pc.percentage,pc.After_Discount FROM automart.promotion p, automart.promotion_calculation pc,automart.repairs r,automart.customer c  where r.type='CO'  and r.date like '"+year+"%' and p.Idpromotionsandoffers=pc.Promo_id and pc.Cus_id=r.cid and c.idCustomer=pc.Cus_id and p.Idpromotionsandoffers=2 and p.Idpromotionsandoffers=pc.Promo_id  group by r.cid " ;
	 Statement st=con.createStatement();
	 ResultSet rs=st.executeQuery(sql);
	
     while(rs.next()){
		
		 
		 %>
 
			
<tr>
				
<td name="cusid"><%=rs.getInt(1)%></td>
<td name="name"><%=rs.getString(2)%></td>
<td name="price"><%=rs.getString(3)%></td>
<td name='percentage'><%=rs.getString(4)%></td>
<td name="tot"><%=rs.getString(5)%></td>
				
				
</tr>
		<%
}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}

 %>
		
</table><br><br>

	
<button id ="downloadbtn" >Download Report</button><br><br>
</div>
 


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


<script>
	$('#downloadbtn').click(function () {
	var element = document.getElementById('content');
	$("#downloadbtn").hide();
	//html2pdf(element);
	
	var opt = {
	margin: 1,
	filename: 'PromotionDetails.pdf',
	image: { type: 'jpeg', quality: 1.0 },
	html2canvas: { scale: 2 },
	jsPDF:        { unit: 'in', format: 'letter', orientation: 'portrait' }
	};
	
	
	
	// New Promise-based usage:
	//html2pdf().set(opt).from(element).save();
	
	
	
	// Old monolithic-style usage:
	html2pdf(element, opt);
$("#downloadbtn").show();

});

// This code is collected but useful, click below to jsfiddle link.
</script>
 
</body>
</html>