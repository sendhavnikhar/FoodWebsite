<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #FFFFFF;">

	<%@ include file="headder.jsp"%>
	<%
	String message = request.getParameter("message");
	%>
	<div class="container">
		<div class="row"
			style="margin-top: 5px; margin-left: 2px; margin-right: 2px;">

		<form action="./RegisterSrv" method="post"
				class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2"
				style=" padding: 40px; border: 2px solid black;
    border-radius: 20px;
  box-shadow: 10px 10px 15px rgba(1,1,0,0.05)">
				<div style="font-weight:italic-bold;" class="text-center">
					<h2 style="color:black;">Registration Form</h2>
					
					<br>
					<br>
					<br>
					<%
					if (message != null) {
					%>
					<p style="color: green;">
						<%=message%>
					</p>
					
					<%
					}
					%>
				</div>
				<div></div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name">Username</label> <input type="text"
							placeholder="Enter Username" name="username" class="form-control"
							id="last_name" required>
					</div>
				</div>
				
				
				
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name">Email</label> <input type="email"
							placeholder="Enter Username" name="Email" class="form-control"
							id="last_name" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name">Password</label> <input type="password"
							placeholder="Enter Password" name="password" class="form-control"
							id="last_name" required>
					</div>
					
					
					
					
				</div>
				
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name">ConfirmPassword</label> <input type="password"
							placeholder="Retype Password" name="Cpassword" class="form-control"
							id="last_name" required>
					</div>
					
					
					
					
				</div>
				
				<div class="row">
					
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<button type="submit" class="btn btn-success" onclick="audio.play();"  >Register</button>
					</div>
				</div>
				
				
				<h4 class="text-center"><a href="login.jsp">Already User ?</a></h4>
			</form>
		</div>
	</div>


	<%@ include file="footer.html"%>
</body>
</html>