<%@include file="adminHeader.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@page import="projectIT20162764.ConnectionProvider"%> --%>
<%@ page import="java.util.*,java.sql.*" %>
<link rel="stylesheet" href="css/bill.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Monthly Report</title>
</head>
<body>
	<h1><center>Cart Details</center></h1>
	<div id="tab">
	
<!-- 	<table class="table table-border table-striped table-condensed" align="center"> -->
<table id="table" border="1" width="90%" height="250px">
	<tr>
		<th>Email</th>
		<th>Product ID</th>
		<th>Quantity</th>
		<th>Price</th>
		<th>Total</th>
		<th>Address</th>
		<th>City</th>
		<!-- <th>State</th> -->
		<th>Country</th>
		<th>Mobile Number</th>
		<th>Ordered Date</th>
		<th>Delivery</th>
		<th>Payment Method</th>
		<!-- <th>Transaction Id</th> -->
		<th>Status</th>		
	</tr>
	
	
	<%
		try{
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/opjsp","root","123456");
			String Query="Select * from cart";
			Statement stm = con.createStatement();
			ResultSet rs = stm.executeQuery(Query);
			while(rs.next()){
				%>
				<tr>
				<td><%=rs.getString("email") %></td>
				<td><%=rs.getInt("product_id") %></td>
				<td><%=rs.getInt("quantity") %></td>
				<td><%=rs.getInt("price") %></td>
				<td><%=rs.getInt("total") %></td>
				<td><%=rs.getString("address") %></td>
				<td><%=rs.getString("city") %></td>
				<%-- <td><%=rs.getString("state") %></td> --%>
				<td><%=rs.getString("country") %></td>
				<td><%=rs.getInt("mobileNumber") %></td>
				<td><%=rs.getString("orderDate") %></td>
				<td><%=rs.getString("delivery") %></td>
				<td><%=rs.getString("paymentMethod") %></td>
				<%-- <td><%=rs.getString("transactionId") %></td> --%>
				<td><%=rs.getString("status") %></td>
				</tr>
				<%
			}
		}
		catch(Exception e){
			System.out.println("Exception:"+e.getMessage());
			e.printStackTrace();
		}
			
	%>
		
	</table>
	</div>
			<center>
            <p>
        		<input id="printPageButton" class="button" type="button" value="Create PDF" onclick="createPDF()" />
   		 	</p>
   		 	</center>
</body>

<script>
    function createPDF() {
        var sTable = document.getElementById('tab').innerHTML;

        var style = "<style>";
        style = style + "table {width: 100%;font: 17px Calibri;}";
        style = style + "table, th, td {border: solid 1px #DDD; border-collapse: collapse;";
        style = style + "padding: 2px 3px;text-align: center;}";
        style = style + "</style>";

        // CREATE A WINDOW OBJECT.
        var win = window.open('', '', 'height=700,width=700');

        win.document.write('<html><head>');
        win.document.write('<title>Monthly Cart Details</title>');   // <title> FOR PDF HEADER.
        win.document.write(style);          // ADD STYLE INSIDE THE HEAD TAG.
        win.document.write('</head>');
        win.document.write('<body>');
        win.document.write(sTable);         // THE TABLE CONTENTS INSIDE THE BODY TAG.
        win.document.write('</body></html>');

        win.document.close(); 	// CLOSE THE CURRENT WINDOW.

        win.print();    // PRINT THE CONTENTS.
    }
</script>

</html>