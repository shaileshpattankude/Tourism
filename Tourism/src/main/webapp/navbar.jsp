<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
    <a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
            <li class="nav-item"><a class="nav-link" href="places.jsp">Places to visit</a></li>
            
        </ul>
        
        <ul class="navbar-nav ml-auto">
        	<%
        		if(session.getAttribute("user") != null)
        		{
        	%>		
        			<li class="nav-item"><a class="nav-link disabled" href="#">Welcome, <%=session.getAttribute("user") %></a></li>
        			<li class="nav-item"><a class="nav-link" href="LogoutServlet">Logout</a></li>
        	<%	
        		}
        		else
        		{
        	%>
        			<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
        			<li class="nav-item"><a class="nav-link" href="register.jsp">Register</a></li>
        	<%
        		}
        	%>	
        </ul>
        
    </div>
</nav>
