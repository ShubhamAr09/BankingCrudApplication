<%@page import="java.util.List"%>
<%@page import="bank.Model.Register"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style>
  body {
    background-color: #f8f9fa;
  }

  .container {
    margin-top: 50px;
  }

  .form-container {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
  }

  .result-container {
    margin-top: 20px;
    padding: 10px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
  }
</style>
</head>
<body>

	
<nav class="navbar navbar-expand-lg bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#" style="color: white;">Banking Application</a>
    <button class="navbar-toggler" type="button"  data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
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
 

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 form-container">
            <h2>Search</h2>

            <form action="RetrieveController">
                <div class="mb-3">
                    <label for="regNo" class="form-label">Enter Register Number:</label>
                    <input type="number" name="regNo" class="form-control" id="regNo" required>
                </div>
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </div>
</div>
  
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 result-container">
            <%
            List<Register> lstreg = null;
            Register reg = null;

            if (!session.isNew()) {
                lstreg = (List<Register>) session.getAttribute("data");
                if (lstreg != null && !lstreg.isEmpty()) {
                    reg = lstreg.get(0);
            %>
                    <h3>Search Result</h3>
                    <p>Register Number: <%= reg.getRegNo() %></p>
                    <p>Customer Name: <%= reg.getCustName() %></p>
                    <p>Account Balance: <%= reg.getAccBal() %></p>
            <%
                } else {
                	
                    String notFoundMessage = (String) session.getAttribute("notFoundMessage");
                    if (notFoundMessage != null) {
            %>
                        <div class="alert alert-danger">
                            <strong>Error:</strong> <%= notFoundMessage %>
                        </div>
            <%
                       
                        session.removeAttribute("notFoundMessage");
                    }
                }
                session.invalidate();
            }
            %>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
