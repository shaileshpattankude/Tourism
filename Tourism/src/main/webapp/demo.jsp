<%@page import="java.util.HashMap"%>
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
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Tourism website for Kolhapur">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Explore Kolhapur</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url("images/bgimg1.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }

        .card-img-top {
            height: 220px;
            object-fit: cover;
        }

        .place-card:hover {
            transform: scale(1.02);
            transition: transform 0.2s ease-in-out;
        }

        figcaption {
            text-align: center;
            color: #c62828;
            font-weight: bold;
            margin-top: 10px;
        }

        footer {
            margin-top: 3rem;
            background: #f8f9fa;
            padding: 1rem;
        }
    </style>
</head>
<body>

<header>
    <img src="<%= imagemap.get("banner") %>" alt="Banner" width="100%" height="200px" />
</header>

<jsp:include page="navbar.jsp" />

<div class="container py-5">
    <h2 class="text-center text-dark mb-4">Explore Beautiful Places in Kolhapur</h2>
    <div class="row g-4">

        <%-- Define each place as an array to reduce repetition --%>
        <%
            String[][] places = {
                {"mahalakshmi", "mandir9", "Mahalakshmi"},
                {"gaganbawada", "gagan", "Gaganbawda"},
                {"new palace", "palace3", "New Palace"},
                {"panhala", "panhala2", "Panhala"},
                {"rankala", "rankala3", "Rankala Lake"},
                {"shalini palace", "shalini", "Shalini Palace"},
                {"kanerimath", "kaneri", "Kaneri Math"},
                {"sagareshwar deer sanctuary", "sagar", "Sagareshwar Deer Sanctuary"},
                {"vishalgad", "vishalgad", "Vishal Gad"},
                {"jyotiba temple", "jyotiba", "Jyotiba Temple"},
                {"radhanagari dam", "dam", "Radhanagari Dam"},
                {"radhanagari", "radha2", "Radhanagari Wildlife Sanctuary"}
            };

            for (String[] place : places) {
                String linkName = place[0];
                String imageKey = place[1];
                String displayName = place[2];
        %>

        <div class="col-md-3 col-sm-6">
            <div class="card place-card shadow-sm h-100">
                <a href="place.jsp?name=<%= linkName %>" style="text-decoration: none; color: inherit;">
                    <img src="<%= imagemap.get(imageKey) %>" class="card-img-top" alt="<%= displayName %>">
                    <div class="card-body text-center">
                        <h5 class="card-title"><%= displayName %></h5>
                    </div>
                </a>
            </div>
        </div>

        <% } %>

    </div>
</div>

<footer class="text-center">
    <p>&copy; 2025 @shailesh.com <span style="color:red;">All Rights Reserved</span></p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
