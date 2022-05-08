<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css"> 
<link rel ="stylesheet" type="text/css" href="Styles/Styles.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    
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
	    <li ><a href="#">Book Details</a></li>
		<li ><a href="#">Sign Up</a></li>
		<li ><a href="#">Login</a></li>		
    </ul>	
</header>

<div class="page-wrapper">

</div>
<hr> 
    
    
    <div class="topnav sticky">
    <%String email=session.getAttribute("email").toString(); %>
    
            <center><h2>Customer Order Placement</h2></center>
            <h2><a href=""><%out.println(email); %> <i class='fas fa-user-alt'></i></a></h2>
            <a href="home.jsp">Books<i class="fa fa-com.bookIT20218126"></i></a>
            <a href="myCart.jsp">My Cart<i class='fas fa-cart-arrow-down'></i></a>
            <a href="myOrders.jsp">My Orders  <i class='fab fa-elementor'></i></a>
<!--             <a href="">Change Details <i class="fa fa-edit"></i></a> -->
<!--             <a href="messageUs.jsp">Message Us <i class='fas fa-comment-alt'></i></a> -->
<!--             <a href="">About <i class="fa fa-address-com.bookIT20218126"></i></a> -->
            <a href="logout.jsp">Logout <i class='fas fa-share-square'></i></a>
            <div class="search-container">
             
               <form action="searchHome.jsp" method="post">
               <input type="text" placeholder="Search" name="search">
               <button type="submit"><i class="fa fa-search"></i>
               </form>
                
            </div>
          </div>
           <br>
           <!--table-->