
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>

<div id='container'>

  <div align="center" class='signup'>
  <h2>Order Management</h2>
	<form action="loginAction.jsp" method="post"> 
	<input type="email" name="email" placeholder="Enter Email" required>
	<input type="password" name="password" placeholder="Enter Password" required>
	<input type="submit" value="login">
	</form> 
      <h2><a href="signup.jsp">SIGNUP</a></h2>
       <h2><a href="forgotPassword.jsp">FORGOT PASSWORD?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg)){
  %>
  <h1>Incorrect Username or Password</h1>
  <%} %>
  <%if("invalid".equals(msg)){
  %>	
  <h1>Something Went Wrong! Try Again !</h1>
  <%} %>
    
    <!-- <p> </p> -->
  </div>
</div>

</body>
</html>