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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Us | Kolhapur Tourism</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Tourism website about Kolhapur">
    <meta name="keywords" content="kolhapur, tourism, travel">
    <meta name="author" content="kweb">

    <!-- Bootstrap 5.3 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap 5.3 JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        

        .content-container {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }

        h1, h3 {
            color: #dc3545; /* Bootstrap's danger red */
        }

        .section-title {
            margin-top: 40px;
            margin-bottom: 10px;
            font-weight: bold;
            border-bottom: 2px solid #dc3545;
            padding-bottom: 5px;
        }

        p {
            text-align: justify;
            margin-bottom: 10px;
        }
    </style>
</head>

<body>
    <!-- Banner -->
    <header>
        <img src="<%= imagemap.get("banner") %>" alt="Banner" class="img-fluid w-100" style="height: 200px; object-fit: cover;">
    </header>

    <!-- Navbar -->
    <jsp:include page="navbar.jsp" />

    <!-- Main Content -->
    <div class="container my-5">
        <div class="content-container">
            <h1 class="text-center mb-4">About Kolhapur</h1>

            <div class="row g-4">
                <div class="col-md-4">
                    <img src="<%= imagemap.get("kolhapurmap") %>" alt="Kolhapur Map" class="img-fluid rounded shadow">
                </div>

                <div class="col-md-8">
                    <h3 class="section-title">Kolhapur</h3>
                    <p>Kolhapur is a city on the banks of the Panchganga river in the southern part of Maharashtra. Known as ‘Dakshin Kashi’, it's famous for the Mahalaxmi temple and Kolhapuri chappals.</p>

                    <h3 class="section-title">Etymology</h3>
                    <p>Named after the demon Kolhasur, Kolhapur gets its name from a mythological story involving the goddess Mahalakshmi. "Kolha" stands for Kolhasur, and "pur" means city.</p>

                    <h3 class="section-title">Tourism</h3>
                    <p>With over 3 million visitors annually, Kolhapur is a major tourism hub. Attractions include:</p>
                    <ul>
                        <li>New Palace</li>
                        <li>Bindu Chowk – First statue of Babasaheb Ambedkar</li>
                        <li>Rankala Lake</li>
                        <li>Tara Rani statue and Lord Ganesh idol</li>
                        <li>Annual Dusshera procession showcasing the Kolhapur Maybach</li>
                    </ul>

                    
                </div>
            </div>
            
            <div class="row g-4">
            <h3 class="section-title">Film Industry</h3>
                    <p>Home to the Maharashtra Film Company founded by Baburao Painter in 1917, Kolhapur is a hub for Marathi cinema and hosts international film festivals.</p>

                    <h3 class="section-title">Cuisine</h3>
                    <p>Famous for spicy dishes like Kolhapuri misal, Tambda and Pandhara Rassa, Kolhapur also lends its name to jaggery, masala, and chutneys used in local cuisine.</p>

                    <h3 class="section-title">Transport</h3>
                    <h5>Railway</h5>
                    <p>Kolhapur connects to Pune, Mumbai, Bengaluru, and Delhi. A new route to Vaibhavwadi is planned.</p>

                    <h5>Road</h5>
                    <p>Located on NH-4 and NH-204, Kolhapur has major bus stands like CBS, Rankala, and Sambhajinagar.</p>

                    <h5>Airport</h5>
                    <p>Kolhapur Airport (Ujalaiwadi) offers daily flights to major cities. Expansion work is ongoing for terminals and runway.</p>
            </div>
            
        </div>
    </div>

    <!-- Footer -->
    <footer class="text-center py-4 bg-dark text-white mt-5">
        &copy; 2025 @shailesh.com <span class="text-danger">All Rights Reserved</span>
    </footer>
</body>
</html>
