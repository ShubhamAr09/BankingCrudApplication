<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style>
    
    
.registration-form{
	padding: 50px 0;
}

.registration-form form{
    background-color: #282C35;
    max-width: 600px;
    margin: auto;
    padding: 50px 70px;
    border-radius: 20px;
    border-top-left-radius: 30px;
    border-top-right-radius: 30px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
}


.registration-form .item{
	border-radius: 20px;
    margin-bottom: 25px;
    padding: 10px 20px;
}

.registration-form .regst{
    border-radius: 30px;
    padding: 10px 20px;
    font-size: 18px;
    font-weight: bold;
    background-color: #5791ff;
    border: none;
    color: white;
    margin-top: 20px;
}

.registration-form .regst:hover {
    background-color: blue;
}
    
    
</style>
</head>
<body>

	
<nav class="navbar navbar-expand-lg bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#" style="color: white;">Banking Application</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active"  style="color: white;" aria-current="page" href="Home.html">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" style="color: white;" href="RegisterView.jsp">Register</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" style="color: white;" href="RetrieveView.jsp">Search</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" style="color: white;" href="DeleteView.jsp">Delete</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" style="color: white;" href="DisplayAllView.jsp">Display-All</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" style="color: blue; font-weight: 500;" href="LoginView.jsp">Login</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
 
    



<div class="registration-form">
        <form action="RegisterController">
            <div class="form-group">
                <input type="text" class="form-control item" id="username" name="regno" placeholder="Registration Number">
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" id="password" name="custname" placeholder="Customer Name">
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" id="email" name="username" placeholder="User name">
            </div>
            <div class="form-group">
                <input type="password" class="form-control item" id="phone-number" name="password" placeholder="password">
            </div>
            <div class="form-group">
                <input type="number" class="form-control item" id="birth-date" name="accbal" placeholder="Account Balance">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-block regst">Register</button>
            </div>
        </form>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>



</body>
</html>






