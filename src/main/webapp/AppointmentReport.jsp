<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>Report page</title>
	<meta charset="UTF-8">

	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  	
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

	<link rel="stylesheet" href="css/AppointmentReport.css">

	

</head>
<body>

		
	
		<div class="background">
		<img class="img" src="images/logo-black.png" alt="logo image">
	
	</div>
	
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>


		<div class="form">

			
<label for="#"><strong>Daily Report</strong></label><br><br>
  <br>
  <br>
  
  <table>
	
	<tr>
		<th>Appointment ID</th>
		<th>Service Type</th>
		<th>Vehicle Model</th>
		<th>Reserved Time</th>
		<th>Reserved Date</th>
	</tr>

	<c:forEach var="app" items="${apoid}">
	
	<c:set var="Apo_id" value="${app.apoid}"/>
	<c:set var="Service_type" value="${app.servicetype}"/>
	<c:set var="Vehicle_model" value="${app.vehiclemodel}"/>
	<c:set var="Time_slot" value="${app.timeslot}"/>
	<c:set var="Required_date" value="${app.requireddate}"/>
	

	
	<tr>
		<td>${app.apoid}</td>
		<td>${app.servicetype}</td>
		<td>${app.vehiclemodel}</td>
		<td>${app.timeslot}</td>
		<td>${app.requireddate}</td>
	</tr>
	

	</c:forEach>
		</table>
	
	<br>
	<br>

	  <input type="submit" id="submit" name="Submit" value="Print Report" onclick="window.print();"><br><br>
	    	  
	 	
  </div>
		


 

















</body>
</html>
