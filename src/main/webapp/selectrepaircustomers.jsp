<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="ISO-8859-1">
<title>Select Repair Customers</title>
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
					<a href="Home.jsp">Home</a>
			<a href="mainpromotion.jsp">Promotions & Offers</a>
				<a href="DiscountMain.jsp">Customer Selection</a>
				<a href="selectrepaircustomers.jsp">Promotion 1</a>
			

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
				<h1>Customer selection-Promotion 1</h1><br><br>	
				</div>	
<table class="center"><br>




<tr>
     
     <th>Promotion ID</th>
     <th>Customer ID</th>
     <th>Total Repair Price</th>
     <th>Number of Repairs</th>
     <th>Add Discount</th>

	
</tr>	




	

		 
		 

		  
		 <%
	
 try {
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/automart","root","Dilanka000112");
	 String sql="SELECT r.cid ,max(Total_Repair_Price),count(r.Rid) FROM automart.repairs r,automart.promotion p where r.Promo_cal_ID=p.Idpromotionsandoffers and r.type='CO' and r.date between  p.startdate and p.enddate group by r.cid  having count(Rid)>=3   AND r.cid NOT IN (select r.cid from automart.repairs r,automart.promotion_calculation p where r.cid=p.Cus_id)" ;
	 Statement st=con.createStatement();
	 ResultSet rs=st.executeQuery(sql);
	
while(rs.next()){
		
		 
		 %>
		<tr>
		 <td name="promoid">1</td>
		 <td name="id"><%=rs.getInt(1)%></td>
		 <td name="amount"><%=rs.getString(2)%></td>
		 <td name="count"><%=rs.getInt(3)%></td>
		
		 <td><a href='Adddiscountrepairs.jsp?id=<%=rs.getInt(1) %>' class="update1">Add</a></td>
	
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



