<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Monthly Report</title>


<meta charset="UTF-8">

	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  	
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

	<link rel="stylesheet" type="text/css" href ="styles/monthreport.css">



</head>
<body>

         <div class="background">
		 <img class="img" src="images/" alt="logo image">
	
	     </div>
	     
	     
<br><br><br><br><br><br><br>	 

               
            
	     
	     <div class = searchre >
			    <br><br><br>
			    <h2>Previous month order details</h2>
			    <br><br>
			    <table>
			    <tr>
			    <td>Date</td>
			    <td>Email</td>
			    <td>Brand</td>
			    <td>Category</td>
			    <td>Model</td>
			    <td>Manufacture year</td>
			    <td>Spare-part</td>
			    <td>Quantity</td>
			    <td>Item No</td>
			    <td>Status</td>
			    
			    
			    </tr>
			    
			    <c:forEach var="repm" items = "${repmDetails}">
			    
			     <c:set var ="date" value ="${repm.date}"/>
			     <c:set var ="bemail" value ="${repm.bemail}"/>
			     <c:set var ="vbrand" value ="${repm.vbrand}"/>
			     <c:set var ="category" value ="${repm.category}"/>
			     <c:set var ="model" value ="${repm.model}"/> 
			     <c:set var ="myear" value ="${repm.myear}"/>
			     <c:set var ="scategory" value ="${repm.scategory}"/>
			     <c:set var ="qty" value ="${repm.qty}"/>
			     <c:set var ="item_no" value ="${repm.item_no}"/>
			     <c:set var ="status" value ="${repm.status}"/>
			     
			     
			     <tr>
			     
			      <td>${repm.date}</td>
			      <td>${repm.bemail}</td>
			      <td>${repm.vbrand}</td>
			      <td>${repm.category}</td>
			      <td>${repm.model}</td>
			      <td>${repm.myear}</td>
			      <td>${repm.scategory}</td>
			      <td>${repm.qty}</td>
			      <td>${repm.item_no}</td>
			      <td>${repm.status}</td>
			      
			     
			     
			    
			     </tr>
			    
			    </c:forEach>
			    </table>
			    
			    
			   </div>
			   
			   <div class = "print">
               <a onclick ="window.print()">
               <input type ="button" name ="print" value="Print">
               </a>
               </div>
			   
               <br><br>
               


</body>
</html>