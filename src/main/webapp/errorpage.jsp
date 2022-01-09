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
div{
	text-align:center;
	margin-top:250px;
}
.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 15px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	margin: 4px 2px;
	transition-duration: 0.4s;
	cursor: pointer;
}

.examButton {
	background-color: rgb(171, 255, 36);
	color: black;
	font-weight: bold;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	border: 4px solid black;
}

.examButton:hover, .examButton :active {
	background-color: black;
	color: white;
	transition: 2ms;
}
</style>
<title>Insert title here</title>
</head>
<body>
<%String message= request.getParameter("message");
String url= request.getParameter("url"); %>
<div>
<h1><%=message %></h1>
<a href="<%=url %>"><button class="button examButton">Go Back</button></a>
</div>
</body>
</html>