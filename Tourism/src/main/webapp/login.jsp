<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kolhapur Tourism</title>
    <meta charset="UTF-8">
    <meta name="description" content="One of the named Tourism website on Kolhapur">
    <meta name="keywords" content="kop,kolhapur">
    <meta name="author" content="kweb">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap 5.3.0 JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


    <style>

        .container {
            width: 450px;
        }

        a {
            text-decoration: none;
        }
    </style>

</head>
<body>

<header>
    <img src="images/banner.jpg" width="100%" height="200px">
</header>

<jsp:include page="navbar.jsp" />

<br><br>
<div class="container">
    <h1><center/><strong><span style="color:#025cff;">Login</span></strong></h1>

    <form method = "post" action = "LoginServlet">
  <div class="mb-3">
    <label for="email" class="form-label">Email address</label>
    <input type="email" class="form-control" name="email" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="password" class="form-label">Password</label>
    <input type="password" class="form-control" name="password">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" required="required">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  &nbsp;<a href="register.jsp"><span style="color:#111fcd;">New User?</span></a>
</form>

    <!-- Display error if login failed -->
    <%
        if (request.getParameter("error") != null) {
    %>
        <div class="alert alert-danger" role="alert">
            Invalid login. Please try again.
        </div>
    <%
        }
    %>
</div>

<footer style="margin-top: 70%;">
    <center>
        <p>&copy;2025@shailesh.com<span style="color:red;"> All Rights Reserved</span></p>
    </center>
</footer>

</body>
</html>
