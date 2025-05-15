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
<title>About Us</title>
<title>Kolhapur Tourism</title>
    <meta charset="UTF-8">
    <meta name="description" content="One of the named Tourism website on Kolhapur">
    <meta name="keywords" content="kop, kolhapur">
    <meta name="author" content="kweb">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <!-- Optional Custom CSS -->
    <link rel="stylesheet" href="custom/cssmenu1.css">
    <link rel="stylesheet" href="customcss/cssmenu3.css">

    <style>
        body {
            background-image: url("images/bgimg1.jpg");
            background-size: 100% 100%;
        }

        h1 {
            font-style: italic;
            font-family: Arial;
            font-weight: bold;
            color: #f44336;
        }

        #p1 {
            text-align: justify;
        }
    </style>
</head>

<body>
    <header>
        <img src="<%= imagemap.get("banner") %>" width="100%" height="200px" />
    </header>

	<jsp:include page="navbar.jsp" />

    
    <br>

    <div class="container-fluid">
        <h1 class="text-md-center"><center>About Kolhapur</center></h1>
        <div class="row">
            <div class="col-12">
                <img src="<%= imagemap.get("kolhapurmap") %>" width="450px" height="450px" style="float:left;margin-right:10px;">
				
				<p id="p1"><h3><span style="color: #f44336">Kolhapur</span></h3></p>
				
				<p id="p1">Kolhapur is a city on the banks of the Panchganga river in the southern part of the Indian state of Maharashtra.
				 It is the administrative headquarter of Kolhapur district. Kolhapur is known as `Dakshin Kashi' or Kashi of South because 
				 of its spiritual history and the antiquity of its shrine Mahalaxmi, better known as Ambabai.
				 The region is known for the production of the famous hand-crafted and braided leather slippers called Kolhapuri chappal, 
				 which received the Geographical Indication designation in 2019. In Hindu mythology, Kolhapur is named "Karvir".
				
				 Prior to Indian independence, Kolhapur was a princely state under the Bhosale Chhatrapati of the Maratha Empire. 
				 It is an important center for the Marathi film industry.</p>
				 
				 <p id="p1"><h3><span style="color: #f44336">Etymology</span></h3></p>
				 
				 <p id="p1">Kolhapur is named after Kolhasur, a demon in Hindu mythology. According to the myth, a demon Kolhasur, 
				 after his sons were killed by God for harassing people, left asceticism, returned to the place and worshipped Mahalakshmi 
				 that she would leave the place and leave him alone for a hundred years. During the period he committed endless crimes.
				 After a hundred years the goddess returned and killed him for his sins.
				 The dying wish of Kolhasur was to name the place after him, which was granted and the place was 
				 named Kolhapur. "Kolha" stands for Kolhasur and "pur", a Sanskrit word, means “city”.</p>
				
				<p id="p1">
				<h3><span style="color: #f44336">Tourism</span></h3></p>
				
				<p id="p1">Tourism is another source of revenue with about three million visitors to the city per year.</p>
				<p id="p1">Kolhapur's attractions include:</p>
				
				<p id="p1">> New Palace</p>
				<p id="p1">> World's first statue of Babasaheb Ambedkar at Bindu chowk, inaugurated on 7 December 1950</p>
				<p id="p1">> Rankala Lake</p>
				<p id="p1">> The Tara Rani equestrian statue which stands on two of the horse's legs an 85 feet (26 m) idol of the Lord Ganesh at the Chinmaya Mission (Top-Sambhapur).</p>
				<p id="p1">> At the annual Dusshera procession, the Kolhapur Maybach car of the chhatrapatis of Kolhapur is displayed to the public.</p>
				
				<p id="p1">
				<h3><span style="color: #f44336">Film industry</span></h3></p>
				
				<p id="p1">A Memorial to Baburao Painter in Kolhapur on 1 December 1917, the Maharashtra Film Company was established in Kolhapur 
				by Baburao Painter. The city has become the primary centre for the Marathi film industry. Kolhapur plays host to many film festivals, including the Kolhapur International Film Festival. 
				The work of renovation and new locations of Kolhapur film city is going on.</p>
				
				<p id="p1">
				<h3><span style="color: #f44336">Cuisine</span></h3></p>
				
				<p id="p1">Kolhapur cuisine includes mutton dishes, Kolhapuri misal, and ethnic meat. The city also lends its name to certain 
				types of food and ingredients, such as Kolhapuri lavangi (chili peppers), Kolhapuri jaggery (cane juice concentrate), 
				Kolhapuri masala (spice mixture) and kolhapuri chutney (kanda-lasun chutney or onion garlic chutney) which is a staple in 
				gravies and curries. Kolhapur cuisine also includes soup-like curries called Pandhara Rassa and Tambda Rassa which are 
				served as a part of a Thali. Pandhara Rassa, which can be loosely translated to white curry, is a soup-like dish made 
				from mutton stock and coconut milk infused with spices like cinnamon, coriander, ginger, and garlic. It is served as an 
				appetizer, and also as a part of the main course. Tambda Rassa, red curry, is a spicier form of the dish made by substituting 
				coconut milk with red chilies.</p>
				
				<p id="p1">
				<h3><span style="color: #f44336">Transport</span></h3></p>
				
				<p id="p1"><h4>Railway</h4>
				
				The Chhatrapati Shahu Maharaj Terminus links Kolhapur via rail to India's major cities with express services to Pune,
				 Mumbai, Bengaluru and New Delhi. A daily shuttle service connects Kolhapur with the main rail hub of Miraj 
				 on the Central Railway main line. A new railway route from Miraj via Kolhapur till Vaibhavwadi has been 
				 confirmed, which will connect Kolhapur and many other towns with to the Western coastal region of India.
				</p>
				
				<p id="p1"><h4>Road</h4>
				
				Kolhapur is located on National Highway 4 and National Highway 204. The city has three state transport bus stands: Central Bus Stand (CBS),
				 Rankala Bus Stand and Sambhajinagar Bus Stand. Kolhapur Municipal Transport (KMT) provides local bus services. The CBS of Kolhapur is the 
				 busiest bus stand in western Maharashtra with more than 50,000 commutators a day.
				 </p>
				 
				<p id="p1"><h4>Airport</h4>
				 
				Kolhapur's domestic airport, also known as Chhatrapati Rajaram Maharaj Airport, is located 9 kilometres 
				(5.6 mi) south east of the city at Ujalaiwadi.
				
				There are daily flights from Kolhapur to Hyderabad and Bengaluru operated by Alliance Air. Indigo operates
				 daily flights to Hyderabad Airport and Tirupati Airport as well as three times a week to Ahmedabad Airport 
				 & Trujet operates flights to Mumbai Airport five days a week.
				
				The nearest international airports to Kolhapur are Pune International Airport (240 km [150 mi]) and Goa International 
				Airport (220 km [140 mi]). Expansion of runway and construction of and airport terminal building is in progress 
				</p>
            </div>
        </div>
    </div>

    <footer style="margin-top:70%">
        <center>
            <p>&copy;2025@shailesh.com <span style="color:red;">All Rights Reserved</span></p>
        </center>
    </footer>
</body>
</html>