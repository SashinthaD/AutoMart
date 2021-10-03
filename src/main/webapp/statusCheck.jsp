<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Status</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
	
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
  
	<link rel="preconnect" href="https://fonts.googleapis.com">
	
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">

<link rel="stylesheet" href="styles/orderprofile.css">

</head>
<body>
<div class="box-area">
		<header>
	<div class="wrapper">
				
				<nav>
				
				<div class="logo">
				<img class="img" src="images/logo.png" alt="logo image">
				</div>
				
				<a href="#">home</a>
				<a href="#">about</a>
				
				<a href="#">services</a>
				<a href="#">contact</a>

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

	 <div class = "orderbox">
    <h1>Status</h1>
    
    <table>
    
    <c:forEach var ="st" items="${stDetails}">
    
    <c:set var = "oid" value ="${st.oid}"/>
    <c:set var = "date" value ="${st.date}"/>
    <c:set var = "bemail" value ="${st.bemail}"/>
    <c:set var = "vbrand" value ="${st.vbrand}"/>
    <c:set var = "category" value ="${st.category}"/>
    <c:set var = "model" value ="${st.model}"/>
    <c:set var = "myear" value ="${st.myear}"/>
    <c:set var = "scategory" value ="${st.scategory}"/>
    <c:set var = "qty" value ="${st.qty}"/>
    <c:set var = "name" value ="${st.name}"/>
    <c:set var = "item_no" value ="${st.item_no}"/>
    <c:set var = "status" value ="${st.status}"/>
    
    
    <tr>
        <td>Status</td>
        <td>${st.status}</td>
    </tr>
    </c:forEach>
    
    
    </table>
    
    </div>
     
     
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


    </div></div>
   

</body>
</html>