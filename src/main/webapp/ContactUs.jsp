<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body{
  background: linear-gradient(to right, springgreen, rgb(253, 253, 53));
}
.home{
	float:right;
	margin-top:10px;
	margin-right:15px;
	font-size:x-large;
	font-weight:bolder;
}
.login{
        margin-left: 100px;
        margin-top: 190px;
    
}

.container {
        text-align: center;
        position: absolute;
        top: 150px;
        left: 550px;
        padding: 35px;
        background-color:whitesmoke;
        /* border: 5px solid rgb(144, 138, 138); */
        border-radius: 30px;
        box-shadow: 0 0 15px black;
    
        }
.container input{
outline: none;
height: 20px;
} 
a{
color:black;
}
.buttons {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 7px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius:4px;
}
.button2 {
background-color: #008CBA;
}
.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
<title>Contact Us</title>
</head>
<body>
<%int userid= (int)session.getAttribute("userid");%>
<p class="home"><a href="UserMain.jsp">Home</a></p><br>
<form action="contact" method="post">
<div class="container">
	<h2 class="h1move" class="login"><u>Contact Admin</u></h2>
	<input style="visibility: hidden;" type="text" id="studentId" name="uID" value="<%=userid%>"><br>
	<label for="email" class="usernamealign">Enter your Email:</label><br>
	<input type="email" pattern="[a-z][a-z0-9]+[@][a-z]+[.][a-z]+" name="email" id="email" placeholder="abc@domain.com" autofocus required><br><br>
	<label for="comments">Drop your Comments:</label><br>
	<textarea name="comments" id="comments" required></textarea><br><br>
	<button type="submit" class="buttons button2">Submit</button>
	</form>
</body>
</html>