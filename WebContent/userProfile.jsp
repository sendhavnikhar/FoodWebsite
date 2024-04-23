<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.shashi.service.impl.*, com.shashi.service.*,com.shashi.beans.*,java.util.*,javax.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Profile Details</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	
<style>
    body {
      background-color: #f8f9fa;
    }
    .profile-card {
      max-width: 400px;
      margin: 50px auto;
      background-color: #fff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }
    .profile-photo {
      width: 150px;
      height: 150px;
      border-radius: 50%;
      overflow: hidden;
      margin: 0 auto 20px;
    }
    .profile-photo img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .form-group {
      margin-bottom: 20px;
    }
    .form-group label {
      font-weight: 500;
    }
  </style>	
</head>
<body style="background-color: #FFFFFF;">

	<%
	/* Checking the user credentials */
	String userName = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");

	if (userName == null || password == null) {

		response.sendRedirect("login.jsp?message=Session Expired, Login Again!!");
	}

	UserService dao = new UserServiceImpl();
	UserBean user = dao.getUserDetails(userName, password);
	if (user == null)
		user = new UserBean("Test User", "test@gmail.com", "Uvpce","lksdjf");
	%>



	<jsp:include page="headder.jsp" />

	<div class="container bg-secondary py-4">
    <div class="row">
        <div class="col">
            <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
                <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item"><a href="userProfile.jsp">User Profile</a></li>
                </ol>
            </nav>
        </div>
    </div>

    <div class="row">
        
    <div class="container">
    
  <div class="profile-card">
  <h5 class="text-center">
                        Hello, <%=user.getName()%>
                    </h5>
    <div class="profile-photo">
      <img src="https://via.placeholder.com/151" alt="Profile Photo">
    </div>
    <form>
      <div class="form-group">
        <label for="name">Name</label>
        <p  id="name" class="form-control" ><%=user.getName()%></p>
      </div>
      <div class="form-group">
        <label for="email">Email</label>
       <p  id="name" class="form-control" ><%=user.getEmail()%></p>
      <div class="form-group">
        <label for="password">Password</label>
       <p  id="name" class="form-control" ><%=user.getPassword()%></p> </div>
     
    </form>
  </div>
</div>
    </div>
</div>
	
	<br>
	<br>
	<br>

	<%@ include file="footer.html"%>

</body>
</html>