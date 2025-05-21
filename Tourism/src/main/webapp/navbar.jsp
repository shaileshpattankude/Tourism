<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Bootstrap Navbar -->
<nav class="navbar navbar-expand-md navbar-dark bg-dark shadow-sm">
    <div class="container-fluid">
        <!-- Brand -->
        <a class="navbar-brand fw-bold text-warning" href="index.jsp">Kolhapur Tourism</a>

        <!-- Toggler -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent"
            aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar Links -->
        <div class="collapse navbar-collapse" id="navbarContent">
            <!-- Left links -->
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.jsp">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="places.jsp">Places to Visit</a>
                </li>
            </ul>

            <!-- Right-aligned links -->
            <ul class="navbar-nav ms-auto mb-2 mb-md-0">
                <%
                    if(session.getAttribute("user") != null) {
                %>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Welcome, <%= session.getAttribute("user") %></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="LogoutServlet">Logout</a>
                </li>
                <%
                    } else {
                %>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="register.jsp">Register</a>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
</nav>
