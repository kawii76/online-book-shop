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
  text-align: center;
  vertical-align:middle;
  cursor: pointer;
  
  }
  /*end this is for link button*/
  
  .fulDiv{
   width: 100%;
  }
  
  .leftDiv{
  width: 50%;
  height: 800px;
  float: left; 
  background: #e7dfdd;
  }
  
  .centerDiv{
  padding-top: 60px;
  padding-right: 50px;
  padding-bottom: 50px;
  padding-left: 50px;
  text-align: justify;
  text-justify: inter-word;
  }
  
  .rightDiv{
  margin-left: 50%;
  height: 800px; 
  background: #e7dfdd;
  }
  
 .center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  padding-top: 90px;
  padding-right: 40px;
  padding-bottom: 15px;
  padding-left: 20px;
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
    <li ><a href="#">Supply Management</a></li>
    <li ><a href="#">Book Details Management</a></li>
    <li ><a href="AdminInquiry.jsp">Inquiry Management</a></li>
    <li ><a href="#">Order Management</a></li>
  
    <!-- <li ><a href="#">Sign Up</a></li> -->
    <!-- <li ><a href="#">Login</a></li> -->
  
    
    </ul>
  
  
</header>


<body>

<div class="fulDiv">

<div class="leftDiv">
  
<div class="centerDiv">
    <h1 style="text-align: center; color:#3d404e;">WELCOME TO BOOK-TOBIA</h1> <br>
    <p>Welcome to the Book-Tobia distributes Magazines and Newspapers only in Sri Lanka.
     We have got Latest collection of books and magazines and now you can easily purchase
      your favorite book from our online store.Book-Tobia Bookshop is the largest English
       bookstore chain in Sri Lanka and offers more than 250,000 titles altogether.. 
       The Book-Tobia group hold the exclusive rights to sell books in the transit lounge 
       of Colombo's International Airport. Book-Tobia Subscriptions is the largest subscription agent 
       in Sri Lanka. The Book-Tobia group has 150 employees and is primarily involved with media
        related activities.</p><br>
 <h2 style="text-align: center; color:#3d404e;">BOOK-TOBIA ASSOCIATES - PUBLIC RELATIONS</h2> <br>
 <p>A subsidiary company of the Group is BOOK-TOBIA, Sri Lanka's first Public Relations Company,
  serving a number of international companies.</p>
  <h2 style="text-align: center; color:#3d404e;">BOOK-TOBIA PUBLICATIONS</h2> <br>
 <p>Book-Tobia publications have so far published 120 titles on a variety of subjects.
  The most successful Book-Tobia Publications so far have been "Sam's Story" by Captain
   Elmo Jayawardena, and "The Road from Elephant Pass" by Nihal de Silva.
    These books won the prestigious Gratiaen Award in 2001 and 2003 respectively 
    as the best literary works in English, produced in Sri Lanka.Marshall Cavendish 
    bought the rights to Sam's Story for south east Asia.</p>







</div>
</div>

<div class="rightDiv">
<img src="images/book5.jpg" alt="inquiry" width="530" height="730" class="center" >
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