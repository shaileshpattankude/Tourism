<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="loadImages.jsp" />

<%
    String email = (String) session.getAttribute("user");
    if (email == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    HashMap<String, String> imagemap = (HashMap<String, String>) session.getAttribute("imagemap");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Kolhapur Tourism</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap 5.3 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        header img {
            object-fit: cover;
            height: 200px;
            width: 100%;
        }
        h1, h2 {
            font-style: italic;
            font-weight: bold;
            color: white;
        }
        .carousel-img {
            height: 60vh;
            object-fit: cover;
        }
        .carousel-caption h2 {
            background-color: rgba(0,0,0,0.5);
            padding: 10px 15px;
            border-radius: 8px;
        }
        .flip-box {
            perspective: 1000px;
            height: 300px;
            cursor: pointer;
        }
        .flip-box-inner {
            position: relative;
            width: 100%;
            height: 100%;
            transition: transform 0.8s;
            transform-style: preserve-3d;
        }
        .flip-box:hover .flip-box-inner {
            transform: rotateY(180deg);
        }
        .flip-box-front, .flip-box-back {
            position: absolute;
            width: 100%;
            height: 100%;
            backface-visibility: hidden;
            border-radius: 10px;
            overflow: hidden;
        }
        .flip-box-front img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .flip-box-back {
            background: #a93737;
            color: white;
            transform: rotateY(180deg);
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 1rem;
        }
        .footer {
            background-color: rgba(0, 0, 0, 0.05);
            padding: 1rem 0;
        }
    </style>
</head>
<body>

<header>
    <img src="<%= imagemap.get("banner") %>" alt="Kolhapur Banner" />
</header>

<jsp:include page="navbar.jsp" />

<div class="container-fluid py-5">
    <!-- Carousel -->
    <div id="carousel1" class="carousel slide carousel-fade mb-5" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carousel1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carousel1" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carousel1" data-bs-slide-to="2" aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#carousel1" data-bs-slide-to="3" aria-label="Slide 4"></button>
        </div>

        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="<%= imagemap.get("mandir") %>" class="d-block w-100 carousel-img" alt="Mahalakshmi Mandir">
                <div class="carousel-caption d-none d-md-block">
                    <h2>Mahalakshmi Mandir</h2>
                </div>
            </div>
            <div class="carousel-item">
                <img src="<%= imagemap.get("panhala") %>" class="d-block w-100 carousel-img" alt="Panhala">
                <div class="carousel-caption d-none d-md-block">
                    <h2>Panhala</h2>
                </div>
            </div>
            <div class="carousel-item">
                <img src="<%= imagemap.get("radhanagari") %>" class="d-block w-100 carousel-img" alt="Radhanagari">
                <div class="carousel-caption d-none d-md-block">
                    <h2>Radhanagari</h2>
                </div>
            </div>
            <div class="carousel-item">
                <img src="<%= imagemap.get("sayaji") %>" class="d-block w-100 carousel-img" alt="Sayaji Hotel">
                <div class="carousel-caption d-none d-md-block">
                    <h2>Sayaji Hotel</h2>
                </div>
            </div>
        </div>

        <button class="carousel-control-prev" type="button" data-bs-target="#carousel1" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carousel1" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <h1 class="text-center mb-4">Explore with us</h1>

    <div class="row">
        <div class="col-md-3 col-sm-6 mt-4">
            <div class="card border-0 shadow flip-box">
                <div class="flip-box-inner">
                    <div class="flip-box-front">
                        <img src="<%= imagemap.get("radha3") %>" alt="Wildlife">
                    </div>
                    <div class="flip-box-back">
                        <h2>Explore Wildlife</h2>
                        <p>Radhanagari Jungle</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-3 col-sm-6 mt-4">
            <div class="card border-0 shadow flip-box">
                <div class="flip-box-inner">
                    <div class="flip-box-front">
                        <img src="<%= imagemap.get("mandir8") %>" alt="Religious">
                    </div>
                    <div class="flip-box-back">
                        <h2>Religious Places</h2>
                        <p>Mahalakshmi Temple</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-3 col-sm-6 mt-4">
            <div class="card border-0 shadow flip-box">
                <div class="flip-box-inner">
                    <div class="flip-box-front">
                        <img src="<%= imagemap.get("gaganbawada") %>" alt="Gaganbawada">
                    </div>
                    <div class="flip-box-back">
                        <h2>Sahyadri Ranges</h2>
                        <p>Gaganbawada</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-3 col-sm-6 mt-4">
            <div class="card border-0 shadow flip-box">
                <div class="flip-box-inner">
                    <div class="flip-box-front">
                        <img src="<%= imagemap.get("rankala") %>" alt="Rankala Lake">
                    </div>
                    <div class="flip-box-back">
                        <h2>Beautiful Lake</h2>
                        <p>Rankala Lake</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Video Section -->
    <div class="row mt-5">
        <div class="col-12">
            <div class="card shadow border-0 p-3 bg-light">
                <h2 class="text-center text-dark">Glimpses of Kolhapur!!</h2>
                <video width="100%" height="500" controls>
                    <source src="images/video3.mp4" type="video/mp4">
                </video>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->

<footer class="text-center py-4 bg-dark text-white mt-5">
        &copy; 2025 @shailesh.com <span class="text-danger">All Rights Reserved</span>
    </footer>


<!-- Bootstrap 5.3 JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
