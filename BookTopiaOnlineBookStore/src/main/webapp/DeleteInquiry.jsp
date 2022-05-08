<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Font-Awesome Icon pack-->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<meta charset="ISO-8859-1">
<title>Book Topia</title>
<link rel ="stylesheet" type="text/css" href="CSS/Styles.css">
    <link rel="stylesheet" href="CSS/inquiry.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <style> 
    .fulDiv{
   width: 100%;
    background: #e7dfdd;
  }
    </style>
</head>
<body>



 <%
  	String id= request.getParameter("id");
    String title= request.getParameter("title");
    String inquiry= request.getParameter("inquiry");

 %>
  
  
  
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
     <li ><a href="#">Home page</a></li>
    <li ><a href="#">Book details</a></li>
     <li ><a href="NewcustomerInquiry.jsp">Inquiry</a></li>
     <li ><a href="#">order</a></li>
  
    <!-- <li ><a href="#">Sign Up</a></li> -->
    <!-- <li ><a href="#">Login</a></li> -->
  
    
    </ul>
  
  
</header>


<!--  <form action = # method ="post">	
	<input type="submit" name="button" value="Add Inquiry" class="btn btn1">
</form>	

<form action = list method ="post">	
	<input type="submit" name="button" value="All Inquiry" class="btn btn1">
</form>	
-->

   <div class="fulDiv">                   
<div class="contact-section">

  <h1 style="font-family:Courier New;">Delete Inquiry</h1>
  <div class="border"></div>
  
  <form class="contact-form" action="Deleteinquiry" method="post">
<input type="hidden" class="contact-form-text" placeholder="Title" name="updateid" value="<%=id %>" >

     Title <input type="text" class="contact-form-text" placeholder="Title" name="updatetitle" value="<%=title %>">
     <br><br>
    Inquiry<input type="text" class="contact-form-text" placeholder="Inquiry" name="updateinquiry" value="<%=inquiry %>" style="height: 100px">
    
    <input type="submit" class="contact-form-btn" value="Delete">
  </form>
</div>
</div>


<div class="page-wrapper">

</div>
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
      
      <form action="index.html" method='post'>
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

</body>
 <script>
function myFunction() {
  alert("SUCCESS! \nYour inquiry created");
}
</script> 
</html>