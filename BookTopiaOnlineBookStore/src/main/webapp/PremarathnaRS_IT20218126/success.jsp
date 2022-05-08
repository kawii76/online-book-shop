<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
nav {
  display: block;
}  

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: black;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: gray;
}

.button{
  	width: 100px;
	background: rgba(39,39,39,.8);
	border: 2px solid #009acd;
	color: white;
	padding: 5px;
	font-size: 18px;
	margin: 12px 0;
	border-radius:5px;
	cursor: pointer;
	transition: .5s;
  }
 
 .button:hover {
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

form{
	text-align:center;
	padding:10px 15px 10px 50px;

}
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width:400px;
  height:400px;
  padding :50px;
 border-radius: 50%;
}
h2{
	text-align:center;

}
div {
  background-image: url('images/backpattern002.jpg');
  
}



footer {
text-align: center;
padding:20px;
background-color:#111;
bottom: 0;
width: auto;
}
.horizontal1{
width:50%;
text-align:left;
margin-left:center;
border:1px solid white;

}



.para{
font-size:10px;
text-align:center;
color:white;
}



a.under{

text-align:center;
color:white;
}

</style>

<body>
<div>
	<hr>
<ul>
  <li><a href="empsearch.jsp">Employee Details</a></li>
  <li><a href="salary.jsp">Employee Salary Details</a></li>
   <li><a href="salreport.jsp">Employee Salary Report</a></li>
  <li><a href="otreport.jsp">Employee Ot Payment Report</a></li>
</ul>
<hr><br>

 <h1>Successfully Added Book Details!</h1>

<div class="gallery">
	<img src=images/logo.png>
	</div>
</div>	
	
		<br><br>
	<footer>
<div class="under">
<a class="under" href="#">* Greenlink.com</a>
<a class="under" href="#">* Store</a>
<a class="under" href="#">* Forums</a>
<a class="under" href="#">* Contact Support</a>
</div>
<hr class="horizontal1">
<p class="para">© 2021 Greenlink Entertainment. All Rights Reserved. Greenlink, Greenlink.com and the Greenlink logo are trademarks of Greenlink Entertainment in the L.K. and/or other countries.</p>
</footer>
	
	

</body>
</html> 