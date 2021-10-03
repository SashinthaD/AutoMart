<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<%@page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>promotion calculation</title>
<link rel="stylesheet" href="web/css/promotion.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="stylesheet" href="web/css/styless.css">
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
				<a href="DiscountMain.jsp">Customer Selection</a>
				<a href="Adddiscountbills.jsp">Add Discount</a>
				<a href="Success.jsp">Calculation Details</a>

				</nav>
			</div>
		</header>
		<div class="bannerarea">

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
					<h1>Promotion Calculation</h1>	
				</div>	
<table class="center"><br>




<tr>
     <th>Cal ID</th>
     <th>Percentage(%)</th>
	 <th>After Discount</th>
	 <th>Promotion ID</th>
	 <th>Customer ID</th>
	
	
</tr>	




	
<% 
 try {
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/automart","root","Dilanka000112");
	 String sql="Select * from promotion_calculation" ;
	 Statement st=con.createStatement();
	 ResultSet rs=st.executeQuery(sql);
	 while(rs.next()){
		
		 
		 %>
		 <tr>
		 <td name="id"><%=rs.getInt(1)%></td>
		 <td name="percentage"><%=rs.getString(2)%></td>
		 <td name="afterdiscount"><%=rs.getString(3)%></td>
		 <td name="promoid"><%=rs.getString(4)%></td>
		 <td name="cusid"><%=rs.getString(5)%></td>
		 
		 
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
<a href='DiscountMain.jsp' >

<input id="submit"  type="button" name="back" value="Back">

</a>



		

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



