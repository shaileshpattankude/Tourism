<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
<html lang = "en">
<head>
<meta charset="UTF-8">
<title>Kolhapur Tourism</title>
    <meta charset="utf-8">
    <meta name="description" content="One of the named Tourism website on Kolhapur">
    <meta name="keywords" content="kop,kolhapur">
    <meta name="author" content="kweb">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap & jQuery CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

	
    <!-- Local Bootstrap (Optional if you use CDN above) -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>

    <style>
        body {
            background-image: url("images/bgimg1.jpg");
            background-size: 100% 100%;
        }
        .carousel-inner {
    width: 100%;
    height: 60vh;
}
        .carousel-img {
    height: 60vh;
    object-fit: cover;
}

	.carousel-caption h2 {
    color: #fff;
    font-size: 2rem;
    font-weight: bold;
}

.bottom-left {
    position: absolute;
    bottom: 8px;
    left: 16px;
    font-style: italic;
    font-size: 40px;
    font-weight: bold;
    color: #fff;
}

       
        
        .div1 {
            border: none;
            font-style: italic;
        }
        h1 {
            font-style: italic;
            font-family: Arial;
            color: #a93737;
            font-weight: bold;
        }
        .img:hover {
            width: 400px;
            height: 400px;
        }
        .div3 {
            font-style: italic;
        }
        
        
        .flip-box {
    background-color: transparent;
    width: 100%;
    height: 300px;
    perspective: 1000px;
}

.flip-box-inner {
    position: relative;
    width: 100%;
    height: 100%;
    text-align: center;
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
}

.flip-box-front {
    background-color: #bbb;
    color: black;
}

.flip-box-back {
    background-color: #a93737;
    color: white;
    transform: rotateY(180deg);
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
        
        
    </style>
    
	<link rel="stylesheet" type="text/css" href="customcss/css6.css">
    
    
</head>
<body>

<header>
	<img src="<%= imagemap.get("banner") %>" width="100%" height="200px" />
</header>

<jsp:include page="navbar.jsp" />

<br><br>

<div class="container-fluid">
    <!-- Carousel -->
<div id="carousel1" class="carousel slide carousel-fade" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carousel1" data-slide-to="0" class="active"></li>
        <li data-target="#carousel1" data-slide-to="1"></li>
        <li data-target="#carousel1" data-slide-to="2"></li>
        <li data-target="#carousel1" data-slide-to="3"></li>
    </ol>

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

    <a class="carousel-control-prev" href="#carousel1" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel1" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>


    <br><br><br>

    <h1><center>Explore with us</center></h1>

    <div class="row">
        <div class="col-md-3 col-sm-12 mt-4">
            <div class="div1">
                <div class="flip-box">
                    <div class="flip-box-inner">
                        <div class="flip-box-front">
                            <img src="<%= imagemap.get("radha3") %>" alt="Wildlife" style="width:100%;height:300px">
                        </div>
                        <div class="flip-box-back">
                            <h2><center>Explore Wildlife</center></h2>
                            <p><center>Radhanagari Jungle</center></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-3 col-sm-12 mt-4">
            <div class="div1">
                <div class="flip-box">
                    <div class="flip-box-inner">
                        <div class="flip-box-front">
                            <img src="<%= imagemap.get("mandir8") %>" alt="Religious" style="width:100%;height:300px">
                        </div>
                        <div class="flip-box-back">
                            <h2><center>Religious Places</center></h2>
                            <p>Mahalakshmi Temple</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3 col-sm-12 col-lg-3 mt-4"> 
			<div class="div1">
				 <div class="flip-box">
			  		<div class="flip-box-inner">
			    		<div class="flip-box-front">
			      			<img src="<%= imagemap.get("gaganbawada") %>" alt="Paris" style="width:100%;height:300px">
			    		</div>
			    		<div class="flip-box-back">
			      			<h2><center>Sahayadri Ranges</center></h2>
				  			<p>Gaganbawada</p>
			    		</div>
			  		</div>
				</div>  
			</div>
		</div>

        <div class="col-md-3 col-sm-12 col-lg-3 mt-4"> 
			<div class="div1">
 				<div class="flip-box">
  					<div class="flip-box-inner">
    					<div class="flip-box-front">
      						<img src="<%= imagemap.get("rankala") %>" alt="Paris" style="width:100%;height:300px">
    					</div>
    					<div class="flip-box-back">
      						<h2><center>Beautiful Lake</center></h2>
	  						<p>Rankala Lake</p>
    					</div>
  					</div>
				</div>  
			</div>
		</div>
	</div>

    <!-- Video Section -->
    <div class="row mt-5">
        <div class="col-12 div3">
            <h1><center>Glimpses of Kolhapur!!</center></h1>
            <center>
                <video width="100%" height="500" controls>
                    <source src="images/video3.mp4" type="video/mp4">
                </video>
            </center>
        </div>
    </div>

</div>

<!-- Footer -->
<footer style="margin-top:70%">
    <center>
        <p>&copy;2025@shailesh.com<span style="color:red;"> All Rights Reserved</span></p>
    </center>
</footer>


</body>
</html>