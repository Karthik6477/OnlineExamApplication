<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
div{
    text-align: center;
    margin-top:250px;
}
body{
    background: linear-gradient(to right, springgreen, rgb(253, 253, 53));
}
button{
  	width:70
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.examButton{
  background-color: rgb(171, 255, 36);  
  color: black; 
  font-weight: bold;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  border: 4px solid black;
}
.examButton:hover,.examButton :active{
  background-color: black;
  color: white;
  transition: 2ms;
}
</style>
<title>Exception occured</title>
</head>
<body>
<div>
	<h2>Invalid Username or Password</h2><br>
	<a href="index.jsp" class="button examButton">Login</a>
	</div>
</body>
</html>