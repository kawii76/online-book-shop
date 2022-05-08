<%-- <%@page errorPage="error.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel ="stylesheet" type="text/css" href="../Styles/Styles.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    
        <img src = "../images/logo.jpg" height="100px" width="150px" class="Logo" >


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
            <center><h2>Order Management </h2></center>
            <a href="addNewProduct.jsp">Add New Order <i class='fas fa-plus-square'></i></a> 
            <a href="allProductEditProduct.jsp">Availability <i class='fab fa-elementor'></i></a>
            <a href="messagesReceived.jsp">Messages Received <i class='fas fa-comment-alt'></i></a>
            <a href="ordersReceived.jsp">Orders Received <i class="fas fa-archive"></i></a>
            <a href="cancelOrders.jsp">Cancel Orders <i class='fas fa-window-close'></i></a>
            <a href="deliveredOrders.jsp">Delivered Orders <i class='fas fa-dolly'></i></a>
            <a href="reportOrder.jsp">Report <i class='fas fa-file'></i></a>
            <a href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a>
            
          </div>
           <br>
           <!--table-->