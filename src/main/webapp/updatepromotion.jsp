<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update promotion</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="web/css/styless.css">
<link rel="stylesheet" href="web/css/promotion.css">

</head>
<body>






	<div class="box-area">
		<header>
			<div class="wrapper">
				<div class="content">
						<img class="img" src="web/images/logo.png" alt="logo image">
					</div>
				<nav>
					<a href="Home.jsp">Home</a>
				<a href="mainpromotion.jsp">Promotions & Offers</a>
				<a href="updatepromotion.jsp">Promotion Update</a>
			

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
		
<div class="topic">
<h1>Update Promotion Details</h1>	
</div>			
		
		
		<center>
		<br>
		<br>
		<br>
		
		
		
<form action="Updatepromoservlet" method="post" class="form">



<%



	 Class.forName("com.mysql.jdbc.Driver").newInstance();
	 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/automart","root","Dilanka000112");
	 String id=request.getParameter("id");
	 
	 
	 String sql="Select * from promotion where Idpromotionsandoffers='"+id+"'" ;
	 Statement st=conn.createStatement();
	 ResultSet rs=st.executeQuery(sql);

	 while(rs.next()){
		 
		 %>
		 
    <lable class="lable">Promotion ID</lable>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
     <input type="text" name="id"  value="<%=rs.getString(1)%>" readonly><br><br><br>	
		
	<label class="lable">Promotion Details</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
	 <input type="text" name="details"  value="<%=rs.getString(2)%>" ><br><br><br>


	<label class="lable">Precentage</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   
	<input type="text" name="precentage"  value="<%=rs.getString(3)%>"  ><br><br><br>
	
	<label class="lable">Start Date</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	 <input type="text" name="time"  value="<%=rs.getString(4)%>"><br><br><br>
	 
	 <label class="lable">End Date</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	 <input type="text" name="time2"  value="<%=rs.getString(5)%>"><br><br><br>
	
		<% 
	 }
		
	
%>

	
		
	
	    <input type="submit" name="submit" value="Update" class="update2">
	
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