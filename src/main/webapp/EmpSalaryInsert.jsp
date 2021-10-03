<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<title>Salary Details</title>
	
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
	
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
  
	<link rel="preconnect" href="https://fonts.googleapis.com">
	
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">
 
	<link rel="stylesheet" href="css/userAcc.css">
	

</head>
<body>
	<div class="box-area">
		<header>
			<div class="wrapper">
				<div class="logo">
				<img class="img" src="images/" alt="logo image">
				</div>
				<nav>
			
				<a href="repair_and_deliver.jsp">Bills</a>
				<a href="AllbillHistory.jsp">Bill History</a>
				<a href="Emp.jsp">Employee Salaries</a>
				<a href="EmpHistory.jsp">Salary History</a>
				<a href="HomePage.jsp">Home</a>

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

<div class="form">
			
<label for="cid">

		<strong>
			<h2> Salary Details </h2>
		</strong>
</label>

<br><br><br> <br> 
		
		


<form method="post" action="Empsalaryinsert">
	<table>
		<c:forEach var="emp" items="${emp}">
	
	
	<c:set var="nic" value="${emp.nic}"/>
	<c:set var="name" value="${emp.name}"/>
	<c:set var="email" value="${emp.email}"/>
	<c:set var="position" value="${emp.position}"/>
	<c:set var="basicsalary" value="${emp.basicsalary}"/>
	
	

	

	
	
	<tr>
		<td>NIC</td>
		<td> <input type="text" class="inputt"  name="nic" value="${emp.nic}" readonly> </td>
	</tr>
	
	
	<tr>
		<td>Name</td>
		<td><input type="text" class="inputt"  name="name" value="${emp.name}" readonly></td>
	</tr>
	
	
	<tr>
		<td>Email</td>
		<td><input type="text" name="email" class="inputt" value="${emp.email}"></td>
	</tr>
	
	<tr>
		<td>Position</td>
		<td><input type="text" name="position" class="inputt" value="${emp.position}"></td>
	</tr>
	
	<tr>
		<td>Basic Salary</td>
		<td><input type="text" name="basicsalary" class="inputt" value="${emp.basicsalary}"></td>
	</tr>
	
	
	</c:forEach>
	
	
	
	
	<tr>
	
		<td>EPF</td>
		<td> <input type="text" name="epf" class="input"> </td>
	</tr>
	
	<tr>
		<td>ETF</td>
		<td><input type="text" name="etf" class="input"></td>
	</tr>
	
	<tr>
		<td>Over Time</td>
		<td><input type="text" name="ot" class="input" ></td>
	</tr>
	<tr>
		<td>Bonus</td>
		<td><input type="text" name="bonus" class="input" ></td>
	</tr>
	

	</table>
	<br><br><br>
	<input type="submit" id="submit" name="Submit" value="Submit">
		</form>


	

	<br>
	<br>
	
	 <br><br>
	
 
</div>	 
     
  <br>  
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>

			</div>
     


		</div>
	</div>

</body>
</html>
