<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Change Password</title>
    <style>

        form {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            width: 300px;
            margin: 0 auto;
            margin-top: 40px;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.2);
        }

        label {
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
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

 <form action="updatePassController">
        <label>Welcome User</label>
        <input name="username" placeholder="Enter the Username" type="text"><br><br>
        <input name="password" type="text" placeholder="Enter the new Password"><br><br>
        <button>Update</button><br>
    </form>
    <% if(!session.isNew()) {
        String msg = (String) request.getAttribute("UpdateMsg");
        if (msg != null && !msg.isEmpty()) {
            out.println("<div>" + msg + "</div>");
        }
        session.invalidate();
    } %>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
