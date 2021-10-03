<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stock Details</title>
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
				<a href="#">Home</a>
				<a href="#">About</a>
				<a href="StockHome.jsp">Stock</a>
				<a href="stockTable.jsp">Stock Table</a>
				<a href="StockSearch.jsp">Status</a>

				</nav>
			</div>
		</header>
		</div>
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
					<h1>Stock Details</h1>	
				</div>	
<table class="center"><br>

<table>

<c:forEach var="stockdetails" items="${stockdetails}">


<c:set var="item_no" value="${stockdetails.item_no}"/>
<c:set var="vehicle_brand" value="${stockdetails.vehicle_brand}"/>
<c:set var="vehicle_model" value="${stockdetails.vehicle_model}"/>
<c:set var="vehicle_year" value="${stockdetails.vehicle_year}"/>
<c:set var="category" value="${stockdetails.category}"/>
<c:set var="qty" value="${stockdetails.qty}"/>
<c:set var="limit_stock" value="${stockdetails.limit_stock}"/>
<c:set var="less_item" value="${stockdetails.less_item}"/>
<c:set var="unit_price" value="${stockdetails.unit_price}"/>
<c:set var="warranty" value="${stockdetails.warranty}"/>
<c:set var="status" value="${stockdetails.status}"/>

<tr>
     <td>item no</td>
<td>${stockdetails.item_no}</td>
</tr> >

<tr>
     <td>Vehicle brand</td>
<td>${stockdetails.vehicle_brand}</td>
</tr> 
<tr> 
<tr>
     <td>Vehicle model</td>
<td>${stockdetails.vehicle_model}</td>
</tr> 
<tr> 
<tr>
     <td>Vehicle year</td>
<td>${stockdetails.vehicle_year}</td>
</tr> 
<tr> 
<tr>
     <td>Category</td>
<td>${stockdetails.category}</td>
</tr> 
<tr> 
<tr>
     <td>Quantity</td>
<td>${stockdetails.qty}</td>
</tr> 
<tr> 
<tr>
     <td>Limited stock</td>
<td>${stockdetails.limit_stock}</td>
</tr> 
<tr>
     <td>Less item</td>
<td>${stockdetails.less_item}</td>
</tr> 
<tr>
     <td>Unit price</td>
<td>${stockdetails.unit_price}</td>
</tr> 
<tr>
     <td>Warranty</td>
<td>${stockdetails.warranty}</td>
</tr> 
<tr>
     <td>Status</td>
<td>${stockdetails.status}</td>
</tr> 
<tr> 

</c:forEach>
</table>

<c:url value="updateStock.jsp" var="update">

<c:param name="item_no" value="${item_no }"></c:param>
<c:param name="vehicle_brand" value="${vehicle_brand}"></c:param>
<c:param name="vehicle_model" value="${vehicle_model }"></c:param>
<c:param name="vehicle_year" value="${vehicle_year }"></c:param>
<c:param name="category" value="${category}"></c:param>
<c:param name="qty" value="${qty}"></c:param>
<c:param name="limit_stock" value="${limit_stock }"></c:param>
<c:param name="less_item" value="${less_item }"></c:param>
<c:param name="unit_price" value="${unit_price}"></c:param>
<c:param name="warranty" value="${warranty }"></c:param>
<c:param name="status" value="${status }"></c:param>
</c:url>
<a  href="${update }">

  <input type="submit" name="update" value="update" id="submit">
</a>

<br>

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