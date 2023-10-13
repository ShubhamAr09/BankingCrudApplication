<%@page import="bank.Model.Register"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<title>All Records</title>
<style>
    .container {
        margin-top: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid #dee2e6;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f8f9fa;
    }
    h2 {
        color: #007BFF;
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
          <a class="nav-link" style="color: white;" href="DisplayAllController">Display-All</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" style="color: blue; font-weight: 500;" href="LoginView.jsp">Login</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
    <%
    List<Register> reglst = (List<Register>) session.getAttribute("ListInfo");
    if (reglst != null && !reglst.isEmpty()) {
    %>
        <h2>Records</h2>
        <table>
            <tr>
                <th>Register Number</th>
                <th>Customer Name</th>
                <th>Username</th>
                <th>Password</th>
                <th>Account Balance</th>
            </tr>
            <%
            for (Register r : reglst) {
            %>
                <tr>
                    <td><%= r.getRegNo() %></td>
                    <td><%= r.getCustName() %></td>
                    <td><%= r.getUserName() %></td>
                    <td><%= r.getPassword() %></td>
                    <td><%= r.getAccBal() %></td>
                </tr>
            <%
            }
            %>
        </table>
    <%
    } else {
    %>
        <h2>No data found in the session.</h2>
    <%
    }
    %>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>
