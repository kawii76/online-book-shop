<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Font-Awesome Icon pack-->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<style>
.btnbtn5 {
  width: 100%;
  background-color: #747884;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.header {
  padding: 30px;
  text-align: center;
  background: #B4BCBF;
  color: white;
  }
  
  /*start this is for link button*/
  .linkbutton {
  display: inline-block;
  padding: 30px 300px;
  margin: 20px;
  background: #B4BCBF;
  color: #fff;
  text-decoration: none;
  border: 2px solid #555555;
  width: 50%;
  font-family: Arial, Helvetica, sans-serif;
  font-size: 20px;
  text-align: none;
  cursor: pointer;
  /*end this is for link button*/
  }
  
  .fulDiv {
   width: 100%;
  }
  
  .leftDiv{
  width: 50%;
  height: 700px;
  float: left; 
  background: #e7dfdd;
  }
  
  .centerDiv{
  padding-top: 50px;
  padding-right: 30px;
  padding-bottom: 50px;
  padding-left: 30px;
  }
  
  .rightDiv{
  margin-left: 50%;
  height: 700px; 
  background: #e7dfdd;
  }
  
 .center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  padding-top: 30px;
  padding-right: 30px;
  padding-bottom: 30px;
  padding-left: 80px;
}
  
  </style>
<meta charset="ISO-8859-1">
<title>Book Topia</title>
<link rel ="stylesheet" type="text/css" href="CSS/Styles.css">
    <link rel="stylesheet" href="CSS/inquiry.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
    <li ><a href="#">Home page</a></li>
    <li ><a href="#">Book details</a></li>
    <li ><a href="NewcustomerInquiry.jsp">Inquiry</a></li>
     <li ><a href="#">order</a></li>
  
    <!-- <li ><a href="#">Sign Up</a></li> -->
    <!-- <li ><a href="#">Login</a></li> -->
  
    
    </ul>
  
  
</header>


<body>

<div class="fulDiv">

<div class="leftDiv">
<div class="centerDiv">

 <h2 style="text-align: center; color:#3d404e;">Inquiries</h2> <br>
<a class="linkbutton" href="http://localhost:8090/Inquiry/Addinquiry.jsp">
  Insert Inquiry 
</a>

<form action =list method ="post">	
	<input type="submit" name="button" value="All Inquiry" class="linkbutton">
</form>

<a class="linkbutton" href="#">
  Home page
</a>

<a class="linkbutton" href="#">
  Details
</a>

</div>
</div>

<div class="rightDiv">
<img src="images/inq.png" alt="inquiry" width="730" height="730" class="center" >
</div>

</div>
</body>

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