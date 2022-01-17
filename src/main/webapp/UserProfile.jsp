<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.onlineexam.impl.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
a{
float:right;
margin-right:15px;
margin-top:10px;
color:black;
font-size:large;
font-weight:bolder;
}
body {
   background: linear-gradient(to right, springgreen, rgb(253, 253, 53));

}
.container{
text-align:center;
margin-top:80px;
}
a{
margin-top:-55px;
font-size:x-large;
font-weight:bolder;
}
.choosefile{
margin-left:150px;
}
.emailalign{
margin-left:25px;
}
.phonealign{
margin-left:-30px;
}
img{
border:3px groove black;
}
</style>
<title>User Profile</title>
</head>
<body>
	<%int userid=(int)session.getAttribute("userid"); 
	LoginDao ld=new LoginDao();
	ResultSet rs=ld.userprofile(userid);%>
	<a href="UserMain.jsp">Home</a>
	<div class="container">
	<%while(rs.next()){%>
		<img src="images/<%=rs.getString(9) %>" style="border-radius:50%;height:250px;width:260px;border-color:black"><br><br>
		
		<center><button id="photo" onclick="photochange()" style="display: block;">Change photo</button></center>
		<div id="photochange" style="display: none;">
		<form action="changeprofile" method="post">
		<input type="file" id="avatar" name="avatar" class="choosefile"><br><br>
		<button type="submit">Change photo</button>
		</form></div>
		<br>
		<form action="editprofile" method="post">
		<label for="firstname">Firstname : </label><input type="text" name="firstname" id="firstname" value="<%=rs.getString(2) %>"><br><br>
		<label for="lastname">Lastname : </label><input type="text" name="lastname" id="lastname" value="<%=rs.getString(3) %>"><br><br>
		<label for="email" class="emailalign">Email : </label><input type="email" name="email" id="email" value="<%=rs.getString(4) %>" readonly><br><br>
		<label for="phone" class="phonealign">Phone number : </label><input type="text" name="phone" id="phone" value="<%=rs.getLong(7) %>"><br><br>
		<button type="submit">Edit Profile</button>
		</form></div>
		
	<%} %>
	<%if(session.getAttribute("editres")!=null){ %>
		<h3><%=session.getAttribute("editres") %></h3>
		<%} %>
</body>
<script>
function photochange(){
	let photo=document.getElementById("photo");
	photo.style.display="none";
	let photochange=document.getElementById("photochange");
	photochange.style.display="block";
}
</script>
</html>