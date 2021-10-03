<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Fixed Header with html and css | Collapsing Header Tutorial</title>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="css/finance10.css">

</head>
<body>
	<div class="box-area">
		<header>
			<div class="wrapper">



				<nav>
					<div class="content">
						<img class="img" src="images/logo.png" alt="logo image">
					</div>
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
				<h2>content area</h2><br><br>
       
					<br>					<br>					<br>					<br>					<br>


<%
String billid = request.getParameter("RepairBillID");
String RepairSPPrice = request.getParameter("RepairSPPrice");
String RepairDate = request.getParameter("RepairDate");
String RepairSCharges = request.getParameter("RepairSCharges");
String RepairTotal = request.getParameter("RepairTotal");
%>


<form action="RepairBillUpdate" method="post">
					<table>
<tr>
<th>Bill ID</th>
<th>Spare Part Price</th>
<th>Date</th>
<th>Service Charges</th>
<th>Total</th>
</tr>



	
	
	
	
	
	
<tr>
<td><input type="text" class="inputt" name="billid" value="<%=billid %>" readonly>   </td>
<td><input type="text" class="inputt" name="spare" value="<%=RepairSPPrice %>"></td>
<td><input type="text" class="inputt" name="date" value="<%=RepairDate %>" ></td>
<td><input type="text" class="inputt" name="service" value="<%=RepairSCharges %>" ></td>
<td><input type="text" class="inputt" name="total" value="<%=RepairTotal %>" ></td>
</tr>




</table>
<br><br><br>
<input type="submit"  id="update" value="Update"  >
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
	

		</div>
	</div>

</body>
</html>
