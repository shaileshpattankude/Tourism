<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.PlaceDAO, model.Place" %>
<jsp:include page="loadImages.jsp" />

<%
    String name = request.getParameter("name");
    Place place = new PlaceDAO().getPlaceByName(name);
    String placeTitle = place.getName().substring(0, 1).toUpperCase() + place.getName().substring(1).toLowerCase();
    HashMap<String, String> imagemap = (HashMap<String, String>) session.getAttribute("imagemap");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Explore <%= placeTitle %> | Kolhapur Tourism</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap 5.3.0 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f8f9fa;
        }

        header img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        h2 {
            color: #0d6efd;
            font-weight: 700;
            text-align: center;
            margin-top: 30px;
            margin-bottom: 20px;
        }

        .description-text {
            text-align: justify;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .carousel-inner img {
            height: 500px;
            object-fit: cover;
            border-radius: 10px;
        }

        .footer {
            background-color: #e9ecef;
            padding: 15px 0;
            margin-top: 40px;
        }
    </style>
</head>

<body>

<!-- Banner -->
<header>
    <img src="<%= imagemap.get("banner") %>" alt="Kolhapur Banner">
</header>

<!-- Navbar -->
<jsp:include page="navbar.jsp" />

<!-- Main Content -->
<div class="container mt-5">
    <h2>Explore <%= placeTitle %></h2>

    <div class="row gy-4 align-items-center">
        <!-- Image Carousel -->
        <div class="col-lg-6">
            <div id="carouselExample" class="carousel slide carousel-fade shadow" data-bs-ride="carousel">
                <div class="carousel-inner rounded">
                    <div class="carousel-item active">
                        <img src="<%= place.getImg1() %>" class="d-block w-100" alt="Image 1">
                    </div>
                    <div class="carousel-item">
                        <img src="<%= place.getImg2() %>" class="d-block w-100" alt="Image 2">
                    </div>
                    <div class="carousel-item">
                        <img src="<%= place.getImg3() %>" class="d-block w-100" alt="Image 3">
                    </div>
                    <div class="carousel-item">
                        <img src="<%= place.getImg4() %>" class="d-block w-100" alt="Image 4">
                    </div>
                    <div class="carousel-item">
                        <img src="<%= place.getImg5() %>" class="d-block w-100" alt="Image 5">
                    </div>
                </div>

                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>

        <!-- Description -->
        <div class="col-lg-6">
            <div class="description-text shadow-sm">
                <p><%= place.getDescription() %></p>
            </div>
        </div>
    </div>
    

<!-- Ratings and Reviews -->
<div class="row mt-5">
    <div class="col-12">
        <h4 class="text-center text-warning mb-4">Visitor Reviews</h4>
        <div class="list-group">
            <div class="list-group-item list-group-item-action">
                <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">Amit Sharma</h5>
                    <small>⭐⭐⭐⭐☆</small>
                </div>
                <p class="mb-1">Great place to visit with family. Peaceful and clean environment.</p>
                <small>Visited in March 2025</small>
            </div>
            <div class="list-group-item list-group-item-action">
                <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">Neha Patil</h5>
                    <small>⭐⭐⭐⭐⭐</small>
                </div>
                <p class="mb-1">Loved the historic vibes! Will visit again for sure.</p>
                <small>Visited in January 2025</small>
            </div>
            <div class="list-group-item list-group-item-action">
                <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">Rahul Desai</h5>
                    <small>⭐⭐⭐☆☆</small>
                </div>
                <p class="mb-1">Nice place but needs better signage and facilities.</p>
                <small>Visited in February 2025</small>
            </div>
        </div>
    </div>
</div>

<!-- Back Button -->
<div class="text-center my-5">
    <a href="places.jsp" class="btn btn-primary btn-lg px-4">
        ⬅ Back to Places
    </a>
</div>
    
</div>

<!-- Footer -->
<footer class="text-center py-4 bg-dark text-white mt-5">
        &copy; 2025 @shailesh.com <span class="text-danger">All Rights Reserved</span>
    </footer>

<!-- Bootstrap 5.3.0 JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
