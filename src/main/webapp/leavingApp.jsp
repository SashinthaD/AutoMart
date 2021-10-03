<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>AUTOMART</title>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="css/leavingApp.css">
</head>

<body>
	<div class="box-area">
		<header>
			<div class="wrapper">
				<div class="content">
					<img class="img" src="images/logo.png" alt="logo image">
				</div>
				<nav>
					<a href="#">home</a>
					<a href="#">about</a>
					<a href="#">services</a>
					<a href="employeeLogin.jsp">Logout</a>
				</nav>
			</div>
		</header>
		<div class="banner-area"></div>

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
		
		
			<form name="form" class="form" method="post" action="insertLeaving" onsubmit="return leaving(this)">
			
			<h2>Leave of Absence Application</h2><br><br><br>
			
			<c:forEach var="leave" items="${empLeav}">
				
					<label class="lable">Leavings of Absences Left :</label>
					<br><br><br><br>
					
					<table>
						<tr>
							<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								<label>Medical Leavings</label></td>
							<td><label>Casual Leavings</label></td>
						</tr>
						<tr>
							<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								<label><input type="text" name="sick" id="sick" value="${leave.sick}" readonly></label></td>
							<td><label><input type="text" name="casual" id="casual" value="${leave.casual}" readonly></label></td>
						</tr>
					</table>
				</c:forEach>
				<br><br><br><br>
			
			<c:forEach var="emp" items="${empProf}">
				
				<label>NIC Number</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<input type="text" name="nic" id="nic" value="${emp.nic}" readonly><br><br><br>
					
			</c:forEach>
			
				<label>Reason for Absence</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<select name="reason" id="reason" required>
						<option value="" selected="selected">Reason</option>
						<option value="MedicalLeaving">Medical leaving</option>
						<option value="CasualLeaving">Casual leaving</option>
					</select><br><br><br>
				
				<label>Date of Absence</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<input type="date" name="date" id="date" required><br><br><br>
						        			
				<label>Time Period (Days)</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<input type="number" name="days" id="days" required><br><br><br><br><br>
					
				<label>More Details on Request</label> &nbsp&nbsp&nbsp&nbsp&nbsp
					<br><textarea name="more" id="more" ></textarea><br><br><br><br>
						
					<input type="submit" id="submit" name="Submit" value="APPLY"><br><br><br>
        	</form>
        	<br><br><br><br><br>
        	
        	<c:forEach var="emp" items="${empProf}">
				
				<form action="leaveChange" method="post">
					<button type="submit" name="nic" id="change" value="${emp.nic}">Change previous application</button><br><br><br>
				</form>
					
			</c:forEach>
        	<script type="text/javascript">
        	
        	function leaving(form)
        	{
        		reason = form.reason.value;
        		days = form.days.value;
        		sick = form.sick.value;
        		casual = form.casual.value;
        		
        		if (casual == 0 || casual-days<0)
        			{
        				alert("\nCasual leavings are over");
        				return false;
        			}
        		
        		if (reason == "MedicalLeaving")
        			{
        				alert("\nGet well soon!\nPlease present a valid Medical Certificate to employee manager");
        				return true;
        			}
        				
        	}
        	
        	</script>        
<!--Close Content Area-->
        
        <br>
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
      	 			<h4>online shop</h4>
      	 			<ul>
      	 				<li><a href="#">watch</a></li>
      	 				<li><a href="#">bag</a></li>
      	 				<li><a href="#">shoes</a></li>
      	 				<li><a href="#">dress</a></li>
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