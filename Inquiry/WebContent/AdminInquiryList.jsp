<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
          <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Topia</title>
<link rel ="stylesheet" type="text/css" href="CSS/Styles.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

<style>
table {
  width:100%;
}
#thd{
width: 20px;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
  width: 400px;
}
table#t01 tr:nth-child(even) {
  background-color: #eee;
}
table#t01 tr:nth-child(odd) {
 background-color: #fff;
}
table#t01 th {
    background-color: #747884;
  color: white;
}
#cusbtn{
	width:10px;
	color: blue;
}

.btnbtn3{
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
.btnbtn3:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}

.header {
  padding: 30px;
  text-align: center;
  background: #B4BCBF;
  color: white;
  font-size: 30px;
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
    <li ><a href="#">Supply Management</a></li>
    <li ><a href="#">Book Details Management</a></li>
    <li ><a href="AdminInquiry.jsp">Inquiry Management</a></li>
    <li ><a href="#">Order Management</a></li>
  
    <!-- <li ><a href="#">Sign Up</a></li> -->
    <!-- <li ><a href="#">Login</a></li> -->
  
    
    </ul>
  
  
</header>
<!--
<form action = Adminlist method ="post">	
	<input type="submit" name="button" value="Admin All Inquiry" class="btn btn1">
</form>	

<form action =list method ="post">	
	<input type="submit" name="button" value="All Inquiry" class="btn btn1">
</form>

<form action =Alllist method ="post">	
	<input type="submit" name="button" value="View All Inquiry" class="btn btn1">
</form> -->

<center>
 <h1 class="header">Admin All inquiries</h1>  <br><br> 
</center>
 

	<c:forEach var="eve" items="${InquiryDetails}">
	

 	 <c:set var="id" value="${eve.id}"/>
	 <c:set var="title" value="${eve.title}"/>
	 <c:set var="inquiry" value="${eve.inquiry}"/>
	 
	 
	 
 <c:url value="AddAnswer.jsp" var="Upay">
		
		<c:param name="Aid" value="${id}"/>
		<c:param name="Atitle" value="${title}"/>
		<c:param name="Ainquiry" value="${inquiry}"/>
			
</c:url>


	
	
<table id="t01">
  <tr>
    <th id="thd">Inquiry ID</th>
    <th>Title</th> 
    <th>Inquiry</th>
  </tr>
  
  
  <tr>
    <td>${eve.id}</td>
    <td>${eve.title}</td>
    <td>${eve.inquiry}</td>
    <td id="cusbtn">
    	<a href="${Upay}">
   			 <input type="submit" name="button" value="Answer" class="btnbtn3">
   		</a>
	</td>
	

  </tr>

</table>
</c:forEach>


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
<!-- /Footer-->
</body>
</html>