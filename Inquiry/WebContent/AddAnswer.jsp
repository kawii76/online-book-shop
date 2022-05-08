<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Font-Awesome Icon pack-->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<style>
.header {
  padding: 30px;
  text-align: center;
  background: #B4BCBF;
  color: white;
  font-size: 30px;
}
/* .btnbtn5{
 background-color: #FFA500; /* Green */
  border: none;
  color: white;
  padding: 7px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
 
}
.btnbtn5:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
} */

contact001 {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

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


</style>
<meta charset="ISO-8859-1">
<title>Book Topia</title>
<link rel ="stylesheet" type="text/css" href="CSS/Styles.css">
    <link rel="stylesheet" href="CSS/inquiry.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>




 <%
  	String Aid= request.getParameter("Aid");
    String Atitle= request.getParameter("Atitle");
    String Ainquiry= request.getParameter("Ainquiry");

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
    <li ><a href="#">Supply Management</a></li>
    <li ><a href="#">Book Details Management</a></li>
    <li ><a href="AdminInquiry.jsp">Inquiry Management</a></li>
    <li ><a href="#">Order Management</a></li>
  
    <!-- <li ><a href="#">Sign Up</a></li> -->
    <!-- <li ><a href="#">Login</a></li> -->
  
    
    </ul>
  
  <!--  
</header>
<form action = Adminlist method ="post">	
	<input type="submit" name="button" value="Admin All Inquiry" class="btn btn1">
</form>	

<form action =list method ="post">	
	<input type="submit" name="button" value="All Inquiry" class="btn btn1">
</form>

<form action =Alllist method ="post">	
	<input type="submit" name="button" value="View All Inquiry" class="btn btn1">
</form>
-->

                      
<div class="formsec">

  <h1 class="header">Answer</h1>

  <form class="contact-form" action="AddAns" method="post">
<input type="hidden" class="contact001" placeholder="Title" name="Answerid" value="<%=Aid %>" readonly="true">

     Title <input type="text" class="contact-form-text" placeholder="Title" name="Answertitle" value="<%=Atitle %>" readonly="true">
    
    Inquiry<input type="text" class="contact-form-text" placeholder="Inquiry" name="Answerinquiry" value="<%=Ainquiry %>" style="height: 100px" readonly="true">
       <br>
     Answer<input type="text" class="contact-form-text" placeholder="Type your answer.." name="Answer" style="height: 100px">
    <input type="submit" class="btnbtn5" value="Add Answer">
  </form>
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