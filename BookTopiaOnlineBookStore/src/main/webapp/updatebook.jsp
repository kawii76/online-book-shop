<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Update Book</title>
<!-- Font-Awesome Icon pack-->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<meta charset="ISO-8859-1">
<title>Book Topia</title>
<link rel ="stylesheet" type="text/css" href="css/Styles.css">

<style>
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}



input[type=submit]:hover {
   border: 2px solid white;
		--color:#009acd;
  	color:#181f27;
    font-size:18px;
  	box-shadow:
    inset 0 0 60px whitesmoke,
    inset 20px 0 80px #0080ff,
    inset -20px 0 80px #000000,
    inset 20px 0 300px #0080ff,
    inset -20px 0 300px #000000,
    0 0 5px #fff,
    -2px 0 10px #17b4ff,
    2px 0 10px #000000;
  
}

div
{
    display: block;
    text-align: center;
    border-radius: 1px;
   
    padding: 10px 10px 5px 10px;
}

form
{
    display: inline-block;
    margin-left: 50px;
    margin-right: 50px;
    text-align: left;
}


</style>
</head>
<body>
<img src = "images/logo.jpg" height="100px" width="150px" class="Logo" >


<center>
<h1 style="font-family:Brush Script MT;"><span>Book</span>Topia</h1>
<h2 style="font-family:Courier New;">Your One stop BookStore</h2>
</center>

<header>
<div class="logo">
	<h1 class="logo-text"><span>Book</span>Topia</h1>
</div>
	<i class="fa fa-bars menu-toggle"></i>
	<ul class="nav">
		<li ><a href="#">Home</a></li>
		<li ><a href="#">About US</a></li>
		<li ><a href="#">Contact US</a></li>
	
		<!-- <li ><a href="#">Sign Up</a></li> -->
		<!-- <li ><a href="#">Login</a></li> -->
  
		
    </ul>
	
	
	<div>
<hr>
<i class="fa fa-bars menu-toggle"></i>
	<ul class="nav">
<li><a href="salary.jsp">Book Details</a></li>
 <li><a href="salaryinsert.jsp">Insert Book Details</a></li>
  <li><a href="salreport.jsp">Book Summary Report</a></li>
  
</ul>

</header>


<%
		String id = request.getParameter("id");
		String bookname = request.getParameter("bookname");
		String category = request.getParameter("category");
		String author = request.getParameter("author");
		String price = request.getParameter("price ");
		String description = request.getParameter("description ");
		
	%>
<div>
<form action="UpdateBookServlet" method="post">


	<h3>Edit Book Details</h3>
	Book ID<input type = "text" name = "empid" value = "<%=id%>" readonly><br><br>
	Book Name<input type = "text" name = "bookname" value = "<%=bookname%>"><br><br>
	Book Category<input type = "text" name = "category" value = "<%=category%>"><br><br>
	Book Author<input type="text" name="author" value="<%= author %>"><br><br>
	Book Price <input type="text" name="email" value="<%= price  %>"><br><br>
	Book Description <input type="text" name="description " value="<%=description %>"><br><br>
	
	
	<input type = "submit" name = "submit" value ="Update Data">
	
</form>

<br><br>
	<div class="gallery">
	<img src=images/harryp.jpg>
	</div>
	
<br><br>
	<div class="page-wrapper">

</div>
<hr>

<hr>
<!-- Footer -->
<div class="footer">
	
	<div class="footer-content">
		
		<div class="footer-section-about">
			
			<h1 style="font-family:Brush Script MT;"><span>Book</span>Topia</h1>
			
			<p>Experience online shopping in Sri Lanka with Upzing.com by purchasing genuine quality products 
			   showcased by verified sellers across the country that will ensure safe and swift deliveries of your com.ordersIT20018764.
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