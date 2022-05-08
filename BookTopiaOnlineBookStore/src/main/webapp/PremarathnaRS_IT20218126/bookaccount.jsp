<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<!-- Font-Awesome Icon pack-->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<meta charset="ISO-8859-1">
<title>Book Topia</title>
<link rel ="stylesheet" type="text/css" href="css/Styles.css">
<style>


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
<center>
<table>
<c:forEach var="book" items="${bookDetails }">

<c:set var="id" value="${book.id}"/>
<c:set var="bookname" value="${book.bookname}"/>
<c:set var="category" value="${book.category}"/>
 <c:set var="author" value="${book.author}"/>
 <c:set var="price" value="${book.price}"/>
 <c:set var="description" value="${book.description}"/>     

      <tr>
		<td>Book ID:</td>
		<td>${book.id}</td>
	</tr>
	
	<tr>
		<td>Book Name:</td>
		<td>${book.bookname}</td>
	</tr>
	
	<tr>
		<td>Book Category:</td>
		<td>${book.category}</td>
	</tr>
	
	<tr>
		<td>Book Author:</td>
		<td>${book.author}</td>
	</tr>
	
	<tr>
		<td>Book Price:</td>
		<td>${book.price}</td>
	</tr>
	
	<tr>
		<td>Book Description:</td>
		<td>${book.description}</td>
	</tr>
	
	
      </c:forEach>
      </table> 
    </center>
    
    <br><br>
      
      <c:url value="updatebook.jsp" var="bookupdate">
      
      <c:param name="id" value="${id}"/>
		<c:param name="bookname" value="${bookname}"/>
		<c:param name="category" value="${category}"/>
		<c:param name="author" value="${author}"/>
		<c:param name="price" value="${price}"/>
		<c:param name="description" value="${description}"/>
		

      </c:url>
<center>      
<a href="${bookupdate}">
<input type="button" class="button" name="update" value="Update Data">
</a>
</center>
<br>
<c:url value="deletebook.jsp" var="bookdelete">
      
      <<c:param name="id" value="${id}"/>
		<c:param name="bookname" value="${bookname}"/>
		<c:param name="category" value="${category}"/>
		<c:param name="author" value="${author}"/>
		<c:param name="price" value="${price}"/>
		<c:param name="description" value="${description}"/>
		
      
      </c:url>
<center>
<a href="${bookdelete}">
<input type="button" class="button" name="delete" value="Delete Data">
</a>
<br><br>

	<br><br>
	<div class="gallery">
	<img src=images/harryp.jpg>
	</div>
	

	<div class="page-wrapper">



</div>
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