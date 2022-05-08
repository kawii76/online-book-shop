<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Page Styles -->
<style>
        .pageHead {
            display: flex;
        }

        .left {
            flex: 25%;
            padding: 15px 0;
        }

        .center {
            flex: 50%;
            padding: 15px 0;
        }
        .right {
            flex: 25%;
            padding: 15px 0;
        }
        /*main button styles*/
        .btncls {
            display: flex;
        }

        .left {
            flex: 33%;
            padding: 15px 0;
        } 

        .center {
            flex: 33%;
            padding: 15px 0;
        }
        .right {
            flex: 33%;
            padding: 15px 0;
        }
        /*main button styles*/
        /*button styles*/
        #btncls {
        background-color: #04AA6D;
  		border-radius: 20px;
  		border-color:white;
  		border-width:5px;
  		color: white;
  		padding: 60px 40px;
  		text-decoration: none;
  		margin: 4px 4px;
  		cursor: pointer;
  		font-size:20px;
  		}
        /*button styles*/
</style>
<!-- Page Styles -->
<!-- Font-Awesome Icon pack-->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
<!-- CSS Links -->
<link rel ="stylesheet" type="text/css" href="css/Styles.css">
<link rel ="stylesheet" type="text/css" href="css/Jobs & req.css">
<!-- CSS Links -->
</head>
<body>
<!-- Page Header section -->
<div class="pageHead">
	<div class="left">
		<img src = "images/logo.jpg" height="100px" width="150px" class="Logo" >
	</div>
	<div class="center" align="center">
		<h1 style="font-family:Brush Script MT;"><span>Book</span>Topia</h1>
		<h2 style="font-family:Courier New;">Your One stop BookStore</h2>
	</div >
	<div class="right">
	<h2 style="font-family:Courier New;">Admin</h2>
	</div>
</div>
<!-- Page Header section -->
<!-- Page Navigation section -->
<div class="pageNav" id="ul">

	<div class="left" id="li">
		<a id="li a" class="active" href="#" style="font-family:sans-serif;">
	                Supply Management
	    </a>
	</div>
	<div class="center1" id="li">
		<a id="li a" href="#" style="font-family:sans-serif;">
	                Book Details Management
	    </a>
	</div >
	<div class="center2" id="li">
		<a id="li a" href="#" style="font-family:sans-serif;">
	                Inquiry Management
	    </a>
	</div >
	<div class="right" id="li">
		<a id="li a" href="#" style="font-family:sans-serif;">
	                Order Management
	    </a>
	</div>
</div>

<!-- Page Navigation section -->
<!-- Page Body section -->

<div class="page-wrapper"><br><br><br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>


	<div class="btncls" align="center">
		<div class="left">
				<a href="AdminCreateSuuplyorder.jsp">
				<input type="button" id="btncls" value="Create New Supply Order">
				</a>
		</div>
		<div class="left">
				<a href="AdminSearchSupplyOrders.jsp">
				<input type="button" id="btncls" value=" Placed Supply Orders">
				</a>
		</div>
		<div class="left">
				<a href="AdminGenerateReport.jsp">
				<input type="button" id="btncls" value="Generate A Report">
				</a>
		</div>
	</div>
</div>
<!-- Page Body section -->
<hr>
<!-- Footer -->
<div class="footer">
	
	<div class="footer-content">
		
		<div class="footer-section-about">
			
			<h1 style="font-family:Brush Script MT;"><span>Book</span>Topia</h1>
			
			<p>Experience online shopping in Sri Lanka with Upzing.com by purchasing genuine quality products 
			   showcased by verified sellers across the country that will ensure safe and swift deliveries of your orders.
			</p>
			
			<h3> Our Location </h3>
			<font size="3">No 220.<br> Malwaththa Rd, <br> Colombo 03 <br> E-Mail :- BookTopia@Gmail.com 
			
			</font>
			
			
			
			
			
			
		</div>	
			
		<div class="footer-section-links">
			<h2>Quick Links</h2>
			<br>
			<ul class="b">
				<a href="#"><li>Home</li></a>
				<a href="#"><li>About US</li></a>
				<a href="#"><li>Contact US</li></a>
				<a href="#"><li>Terms & Conditions</li></a>
			</ul>
		</div>
		
		
		
		<div class="footer-section-contact-form">
			<h2>Contact Us</h2>
			
			<h3> Hotline : 011-289-566-1</h3>
		
			<div class="socials">
				<a href="#"><i class="fab fa-facebook"></i></a>
				<a href="#"><i class="fab fa-instagram"></i></a>
				<a href="#"><i class="fab fa-twitter"></i></a>
				<a href="#"><i class="fab fa-youtube"></i></a>
			</div>
			
			<form action="index.html" method"post">
			<input type="email" name="email" class="input" placeholder="Your email address...">
			<textarea name="Message" class="input" placeholder="Your message..."></textarea>
			
			<button type="submit" class="inputbutton"> 
			<i class="fas fa-envelope"></i>
			Send 
			</button>
		</div>
	</div>
	

	<div class="footer-bottom">
		
		&copy; BookTopia.com | Designed by KRLN Designers
	</div>

</div>
<!-- /Footer-->
</body>
</html>