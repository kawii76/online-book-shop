<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
 --><title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  	<form action="signupAction.jsp" method="post">
  	<input type="text" name="name" placeholder="Enter Name" required>
  	<input type="email" name="email" placeholder="Enter Email" required>
  	<input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
  	<h4>security questions</h4>
  	<Select name="securityQuestion" required>
  	<option value="What was your first car?">What was your first car?</option>
  	<option value="What is the name of your pet?">What is the name of your pet?</option>
  	<option value="What school did you attend?">What school did you attend?</option>
  	<option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
  	</Select>
  	<input type="text" name="answer" placeholder="Enter Answer" required>
  	<input type="password" name="password" placeholder="Enter Password" required>
  	<!-- <i class="far fa-eye" id="togglePassword""></i> -->
  	<input type="submit" value="signup">
  	</form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Registered</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Something Went Wrong! Try Again !</h1>
<%} %>



    <h2>Order Management</h2>
    <p> </p>
  </div>
</div>

</body>
</html>