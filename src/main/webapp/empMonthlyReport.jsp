<!DOCTYPE html>
<html lang="en">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
	<title>AUTOMART</title>
	<meta charset="UTF-8">

	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="css/Report.css">

</head>
<body>

	<div class="background" align="center">
		<img class="img" src="images/logo-black.png" alt="logo image">
	</div>
	
	<div class="form" >
	<a onclick="window.print();">

		<label for="#"><strong>Monthly Leave of Absence Report</strong></label>
		
  	<br>
  	<br>
  	
  	<table>
  	
  		<tr>
  			<th>NIC number</th>
  			<th>Employee's name</th>
  			<th>No of medical leaves got</th>
  			<th>No of casual leaves got</th>
  			<th>Total number of leaves got</th>
  		</tr>
  		
  		<c:forEach var="report" items="${report}">
  		
  		<tr>
  			<th>${report.nic}</th>
  			<th>${report.name}</th>
  			<th>${report.sick}</th>
  			<th>${report.casual}</th>
  			<th>${report.total}</th>
  		</tr>
  		
  		</c:forEach>
  	
  	</table>

	<br><br>
	
	</a>   	  
  </div>

</body>
</html>