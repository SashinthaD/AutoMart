<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add discounts</title>
<link rel="stylesheet" href="web/css/promotion.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="web/css/styless.css">
<script>
		
		function validatediscountForm(){
			
			var id=document.discountform.id.value;
			var promoid=document.discountform.promoid.value;
			var discount=document.discountform.discount.value;
			var amount=document.discountform.amount.value;
			var tot=document.discountform.tot.value;
			
			
		 if(id==""){
				alert("Customer ID can't be empty!");
				return false;
			}else if(promoid==""){
				alert("Promotion ID can't be empty!");
				return false;
			}else if(discount==""){
				alert("Discount can't be empty!");
				return false;
			}else if(amount==""){
				alert("Amount can't be empty!");
				return false;
			}else (tot==""){
				alert("Total Amount can't be empty!");
				return false;
			}
			
		}


</script>

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
				<a href="Adddiscountrepairs.jsp">Add Discount</a>
			

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
			



  <form action="Discountservlet" method="post" name="dicountform"  onsubmit="return validatediscountForm()" class="form">
          
          
          
        <%



	 Class.forName("com.mysql.jdbc.Driver").newInstance();
	 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/automart","root","Dilanka000112");
	 String id=request.getParameter("id");
	 
	 
	 String sql="SELECT r.cid ,max(Total_Repair_Price),count(r.Rid) FROM automart.repairs r,automart.promotion p where r.Promo_cal_ID=p.Idpromotionsandoffers and r.type='CO' and r.cid='"+id+"' and r.date between  p.startdate and p.enddate group by r.cid  having count(Rid)>=3   AND r.cid NOT IN (select r.cid from automart.repairs r,automart.promotion_calculation p where r.cid=p.Cus_id)" ;
	 Statement st=conn.createStatement();
	 ResultSet rs=st.executeQuery(sql);

	 while(rs.next()){
		 
		 %>
           <center>

           <h2> Add Discount</h2></center><br><br>

           <div class="billformInner">


      <lable class="lable">Customer ID </lable>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
      <input type="text" name="id" value="<%=rs.getString(1)%>"><br><br>



      <lable class="lable">Amount</lable>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
     <input type="text" name="amount" value="<%=rs.getString(2)%>"><br><br>


   

     		<% 
	 }
		
	
%>
  <%



	 Class.forName("com.mysql.jdbc.Driver").newInstance();
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/automart","root","200d80*#");
	 
	 
	 
	 String sql1="Select Idpromotionsandoffers,Percentage from automart.promotion where Idpromotionsandoffers=1";
	 ResultSet rst=st.executeQuery(sql1);

	 while(rst.next()){
		 
		 %>
 
      <lable class="lable">Promotion ID </lable>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
      <input type="text" name="promoid" value="<%=rst.getString(1)%>"><br><br>

      <lable class="lable">Discount Precentage </lable>&nbsp&nbsp&nbsp 
      <input type="text" name="discount" value="<%=rst.getString(2)%>"><br><br>

</div>

     		<% 
	 }
		
	
%>
<br><br>
<center>
   <input type="submit" name="submit" value="Calculate" id="submit"></center>
       
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