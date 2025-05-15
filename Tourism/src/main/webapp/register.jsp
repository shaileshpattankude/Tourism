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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <style>
        body {
            background-image: url("images/bgimg1.jpg");
            background-size: 100% 100%;
        }

        .container {
            width: 450px;
        }

        a {
            text-decoration: none;
        }
    </style>

    <link rel="stylesheet" href="custom/cssmenu1.css">
    <link rel="stylesheet" href="customcss/cssmenu3.css">
</head>
<body>

<header>
    <img src="images/banner.jpg" width="100%" height="200px">
</header>

<jsp:include page="navbar.jsp" />

<br><br>
<center>
    <div class="container">
        <h1><strong><span style="color:#025cff;">Sign Up</span></strong></h1>

        <!-- ✅ FORM submits to RegisterServlet -->
        <form method="post" action="RegisterServlet">
            <table class="table table-bordered">
                <tbody>
                <tr>
                    <th><label>Name</label></th>
                    <td><input type="text" name="name" placeholder="Enter name" required></td>
                </tr>
                
                <tr>
                    <th><label>Email</label></th>
                    <td><input type="email" name="email" placeholder="Enter Email" required></td>
                </tr>
                <tr>
                    <th><label>Password</label></th>
                    <td><input type="password" name="password" placeholder="Enter password" required></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <center>
                            <input type="submit" value="Submit" class="btn btn-primary">
                            &nbsp;<a href="login.jsp"><span style="color:#111fcd;">Existing User?</span></a>
                        </center>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>

        <!-- ✅ Display status -->
        <%
            String status = request.getParameter("status");
            if ("success".equals(status)) {
        %>
        <div class="alert alert-success">Registration successful! Please <a href="login.jsp">login</a>.</div>
        <%
            } else if ("error".equals(status)) {
        %>
        <div class="alert alert-danger">Error during registration. Please try again.</div>
        <%
            }
        %>
    </div>
</center>

<footer style="margin-top: 70%;">
    <center>
        <p>&copy;2025@shailesh.com<span style="color:red;"> All Rights Reserved</span></p>
    </center>
</footer>
</body>
</html>