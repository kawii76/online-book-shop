<%@include file="adminHeader.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.math.RoundingMode"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="project.ConnectionProvider"%>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%> --%>
<%@ page import="java.util.*,java.sql.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bill.css">
<title>Monthly Report</title>
</head>
<body>

<h1><center>CART</center></h1>

<hr>
		<br><br>
		<div id="tab">
		<center>
		
			<table id="table" border="1" width="90%" height="250px">
			
					<tr><th>Email</th><th>Product ID</th><th>Quantity</th><th>Price</th><th>Total</th><th>Address</th><th>City</th><th>State</th><th>Country</th><th>Mobile Number</th><th>Ordered Date</th><th>Delivered Date</th><th>Payment Method</th><th>Transaction ID</th><th>Status</th></tr>
				
				<c:forEach var="cart" items="${cartDetails}">
					 <tr>
						 <td><center>${cart.email}</center></td>
						 <td><center>${sto.department}</center></td>
						 <td><center>${sto.name}</center></td>
						 <td>${sto.qty}</td>
						 <td>${sto.cost}</td>
						 <td>${sto.price}	</td>
						 
					 </tr>	
				</c:forEach>
			
			</table>
			
			</center>
			
			        <h1><span id="val"></span></h1>
			        <h1><span id="val2"></span></h1>
			        <h1><span id="val3"></span></h1>
        </div>

</body>
</html>