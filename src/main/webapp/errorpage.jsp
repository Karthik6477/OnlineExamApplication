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
	margin-top:300px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<%String message= request.getParameter("message");
String url= request.getParameter("url"); %>
<div>
<h1><%=message %></h1>
<a href="<%=url %>"><button>Go Back</button></a>
</div>
</body>
</html>