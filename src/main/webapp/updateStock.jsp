<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Stock</title>
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
				<a href="stockTable.jsp">Stock Table</a>
				<a href="StockSearch.jsp">Status</a>

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
		<br>
		<br>
		<br>
		
		
<form name="myForm" action="UpdateStockServlet" onsubmit="return validateForm()" method="post" >

<%


 Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/automart","root","Dilanka000112");
String item_no=request.getParameter("item_no");

String sql="Select * from stock where item_no='"+item_no+"'" ;
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery(sql);

 while(rs.next()){
%>


<table>

   <tr>
   <th><h3>Item No</h3></th> <th><input type="text"  name="item_no" id="item_no" placeholder="A000" value="<%=rs.getString(1)%>" readonly><br><br></th></tr>
    <tr>
        <th><h3>Vehicle Brand</h3></th> <th><select  name="vehicle_brand" id="vehicle_brand" >
				<option  value="<%=rs.getString(2)%>" ><%=rs.getString(2)%>  </option>
 				 <option value="TOYOTA">TOYOTA</option>
  				 <option value="BMW">BMW</option>
                 <option value="Honda">Honda</option>
                 <option value="Suzuki">Suzuki</option>
                </select> <br><br></th></tr>
     <tr>
      <tr>
    <th><h3>Vehicle Model</h3></th> <th><select name="vehicle_model" id="vehicle_model">
			
			<option  value="<%=rs.getString(3)%>" ><%=rs.getString(3)%>  </option>
 				 <option value="BMX X1">BMW X1</option>
  				 <option value="BMW X2">BMW X2</option>
                 <option value="Honda Jazz">Honda Jazz</option>
                 <option value="Honda Verna">Honda Verna</option>
                 <option value="TOYOTA Yaris">TOYOTA Yaris</option>
                 <option value="TOYOTA Hilux">TOYOTA Hilux</option>
                 <option value="Suzuki Swift">Suzuki Swift</option>
                 <option value="Suzuki WagonR">Suzuki WagonR</option>
                 </select> <br><br></th></tr>
                 
                  <tr>
    <th><h3>Vehicle year</h3></th> <th><select name="vehicle_year" id="vehicle_year">
			
			<option  value="<%=rs.getString(4)%>" ><%=rs.getString(4)%>  </option>
 				 <option value="2018">2018</option>
  				 <option value="2019">2019</option>
                 <option value="2020">2020</option>
                
                 </select> <br><br></th></tr>
     
    
    <tr>
    <th><h3>categories</h3></th> <th><select name="category" id="category">
			
				<option  value="<%=rs.getString(5)%>" ><%=rs.getString(5)%>  </option>
 				 <option value="Bonnet">Bonnet</option>
  				 <option value="Dash">Dash</option>
                 <option value="Engine">Engine</option>
                 <option value="Body">Body</option>
                </select> <br><br></th></tr>
      <tr>
   <th> <h3>Quantity</h3></th>  <th><input  type="text" name="qty" name="text" id="qty" placeholder="Qty" value="<%=rs.getString(6)%>" ><br><br></th></tr>
    <tr>
   <th> <h3>Limited Stock</h3></th>  <th><input  type="text" name="limit_stock" name="text" id="limit_stock" placeholder="number" value="<%=rs.getString(7)%>" ><br><br></th></tr>
    <tr>
   <th> <h3>Less Item</h3></th>  <th><input  type="text" name="less_item" name="text" id="less_item" placeholder="number" value="<%=rs.getString(8)%>" ><br><br></th></tr>
     <tr>
   <th> <h3>Unit Price</h3></th>  <th><input  type="text" name="unit_price" name="text" id="unit_uprice" placeholder="Rs" value="<%=rs.getString(9)%>" readonly><br><br></th></tr>
    <tr>
     <th> <h3>Warranty</h3></th>  <th><input  type="text" name="warranty" name="text" id="warranty" placeholder="YYYY-YYYY" value="<%=rs.getString(10)%>" readonly><br><br></th></tr>
    <tr>
    <th><h3>Status</h3></th> <th><select name="status" id="status">
			<option  value="<%=rs.getString(11)%>" ><%=rs.getString(11)%>  </option>
 				 <option value="stock is full">stock is full</option>
  				 <option value="Not Ordered">Not Ordered</option>
                 <option value="pending order">pending order</option>
                
                </select> <br><br></th></tr>
                <% 
 }
 %>
    
    </table>
   
    <input type="submit" name="submit" value="Update" id="update" onclick="alert( 'This item Updated!!');">
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