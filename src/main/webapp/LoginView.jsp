<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Login</title>
    <style>
        .container {
            margin-top: 100px;
        }
         h2 {
        text-align: center;
        color: #007bff; 
    }

        .card {
            border: none;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.2);
            border-radius: 30px;
        }

        .cardbody-color {
            background-color: #282c35;
            border-radius: 30px;
        }

        .form-control {
            border: none;
            border-radius: 20px;
            padding: 12px;
            margin-bottom: 20px;
            font-size: 16px;
            color: #333; 
        }

        .btn-color {
            background-color: #5791ff;
            color: #fff;
            border: none;
            border-radius: 20px;
            padding: 10px 20px; 
            font-weight: bold;
            font-size: 18px;
        }

        .btn-color:hover {
            background-color: blue;
            color: #fff;
        }
        
        .form-text {
            font-size: 16px;
            text-align: center;
            color: #007bff;
            text-decoration: none; 
        }
        
        .error-message {
            font-size: 14px;
            color: red;
            text-align: center;
            margin-top: 10px;
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
                        <a class="nav-link active" style="color: white;" aria-current="page" href="Home.html">Home</a>
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
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <form class="card-body cardbody-color p-lg-3" action="LoginController" method="POST">
                        <h2 class="text-center mb-4">Login</h2>
                        <div class="mb-3">
                            <input type="text" class="form-control" name="uname" placeholder="Username">
                        </div>
                        <div class="mb-3">
                            <input type="password" class="form-control" name="password" placeholder="Password">
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-color btn-sm w-50">Login</button>
                        </div>
                        <div class="text-center mt-3">
                            <a class="form-text" href="RegisterView.jsp">Register Here</a>
                        </div>
                        <div class="text-center mt-2">
                            <a class="form-text" href="UpdatePassword.jsp">Forgot Password? Click here</a>
                        </div>
                    </form>
                    <% String errorMessage = (String) session.getAttribute("errorMessage"); %>
                    <% if (errorMessage != null) { %>
                    <div class="error-message">
                        <%= errorMessage %>
                    </div>
                    <% session.removeAttribute("errorMessage"); %>
                    <% } %>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity ="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
