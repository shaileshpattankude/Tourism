<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="loadImages.jsp" />

<%
String email = (String) session.getAttribute("user");
if (email == null) {
    response.sendRedirect("login.jsp");
    return;
}
%>

<%
    HashMap<String, String> imagemap = (HashMap<String, String>) session.getAttribute("imagemap");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="One of the named Tourism website on Kolhapur">
<meta name="keywords" content="kop,kolhapur">
<meta name="author"  content="kweb">
<meta name="viewport"  content="width=device-width,  initial-scale=1.0">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/bootstrap.min.css">

<script src="js/bootstrap.min.js"></script>

<style>

body
{
	background-color:;
	background-image: url("images/bgimg1.jpg");
	background-size: 100% 100%;
}

a
{
	text-decoration:none;
	color:#0011ff
}

figcaption
{
	text-decoration:none;
	color:#d22525;
	text-align:center;
	font-weight:bold;
}

</style>

<link rel="stylesheet" type="text/css" href="custom/cssmenu1.css">
<link rel="stylesheet" type="text/css" href="customcss/cssmenu3.css">
</head>
<body>

<header>

<img src="<%= imagemap.get("banner") %>" width="100%" height="200px" />

</header>

<jsp:include page="navbar.jsp" />

<br>

<div class="container-fluid">

<div class="row">
<div class="col-md-3 col-sm-12 col-lg-3 mt-4">
<img src="<%= imagemap.get("mandir9") %>" width="100%" height="320px">
<figcaption>Mahalakshmi</figcaption></a>
</div>

<div class="col-md-3 col-sm-12 col-lg-3 mt-4">
<img src="<%= imagemap.get("gagan") %>" width="100%" height="320px">
<figcaption>Gaganbawda</figcaption></a>
</div>

<div class="col-md-3 col-sm-12 col-lg-3 mt-4">
<img src="<%= imagemap.get("palace3") %>" width="100%" height="320px">
<figcaption>New Palace</figcaption></a>
</div>

<div class="col-md-3 col-sm-12 col-lg-3 mt-4">
<img src="<%= imagemap.get("panhala2") %>" width="100%" height="320px">
<figcaption>Panhala</figcaption></a>
</div>
</div>

<div class="row">
<div class="col-md-3 col-sm-12 col-lg-3 mt-4">
<img src="<%= imagemap.get("rankala3") %>" width="100%" height="320px">
<figcaption>Rankala Lake</figcaption></a>
</div>

<div class="col-md-3 col-sm-12 col-lg-3 mt-4">
<img src="<%= imagemap.get("shalini") %>" width="100%" height="320px">
<figcaption>Shalini Palace</figcaption></a>
</div>

<div class="col-md-3 col-sm-12 col-lg-3 mt-4">
<img src="<%= imagemap.get("kaneri") %>" width="100%" height="320px">
<figcaption>Kaneri Math</figcaption></a>
</div>

<div class="col-md-3 col-sm-12 col-lg-3 mt-4">
<img src="<%= imagemap.get("sagar") %>" width="100%" height="320px">
<figcaption>Sagareshwar Deer Santuary</figcaption></a>
</div>
</div>

<div class="row">
<div class="col-md-3 col-sm-12 col-lg-3 mt-4">
<img src="<%= imagemap.get("vishalgad") %>" width="100%" height="320px">
<figcaption>Vishal Gad</figcaption></a>
</div>

<div class="col-md-3 col-sm-12 col-lg-3 mt-4">
<a href="jotiba.php"><img src="<%= imagemap.get("jyotiba") %>" width="100%" height="320px">
<figcaption>Jotiba Temple</figcaption></a>
</div>

<div class="col-md-3 col-sm-12 col-lg-3 mt-4">
<img src="<%= imagemap.get("dam") %>" width="100%" height="320px">
<figcaption>Radhanagari Dam</figcaption></a>
</div>

<div class="col-md-3 col-sm-12 col-lg-3 mt-4">
<img src="<%= imagemap.get("radha2") %>" width="100%" height="320px">
<figcaption>Radhanagari Wildlife Sanctuary</figcaption></a>
</div>
</div>
</div>



<footer style="margin-top:2%">
<center>
<p>&copy2025@shailesh.com<span style="color:red;">  All Rights Reserved</span> </p>
</center>
</footer>
</body>
</html>