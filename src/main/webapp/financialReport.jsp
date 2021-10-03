<!DOCTYPE html>
<html lang="en">
<head>
	<title>Report page</title>
	<meta charset="UTF-8">

	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  	
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

	<link rel="stylesheet" href="css/Report.css">

	

</head>
<body>

		
	
		<div class="background">
		<img class="img" src="images/logo-black.png" alt="logo image">
	
	</div>
	
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>


		<div class="form">
<form action="#" method="post">
			
<label for="#"><strong>Report</strong></label><br><br>


<table>
<tr>

<th>Repair Id</th>
<th>Bill Id</th>
<th>SparePart Price</th>
<th>Qty</th>
<th>Service Charges</th>
<th>Total</th>
<th>Date</th>

</tr>




	<c:forEach var="report" items="${report}">
	
	
	<tr>
	<td>${report.rid}</td>
	<td>${report.bid}</td>
	<td>${report.sparepartprice}</td>
	<td>${report.qty}</td>
	<td>${report.servicecharges}</td>
	<td>${report.total}</td>
	<td>${report.date}</td>
	
	</tr>
	
	</c:forEach>



</table>





	  <input type="submit" id="submit" name="Submit" value="Print" onclick="window.print();"><br><br>
	    	  
	</form>  	
  </div>
		




















</body>
</html>
