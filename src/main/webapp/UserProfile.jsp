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
div{
text-align:center;
margin-top:80px;
}
a{
margin-top:-80px;
font-size:x-large;
font-weight:bolder;
}
.choosefile{
margin-left:150px;
}
.emailalign{
margin-left:10px;
}
.phonealign{
margin-left:-10px;
}
</style>
<title>User Profile</title>
</head>
<body>
	<%int userid=(int)session.getAttribute("userid"); 
	LoginDao ld=new LoginDao();
	ResultSet rs=ld.userprofile(userid);%>
	<a href="UserMain.jsp">Home</a>
	<div>
	<%while(rs.next()){%>
		<img src="images/<%=rs.getString(9) %>" style="border-radius:50%;height:250px;width:260px;border-color:black"><br><br>
		<form action="changeprofile" method="post">
		<input type="file" id="avatar" name="avatar" class="choosefile"><br><br>
		<button type="submit">Change photo</button>
		</form>
		<br>
		<form action="editprofile" method="post">
		<label for="firstname">Firstname : </label><input type="text" name="firstname" id="firstname" value="<%=rs.getString(2) %>"><br><br>
		<label for="lastname">Lastname : </label><input type="text" name="lastname" id="lastname" value="<%=rs.getString(3) %>"><br><br>
		Email : <input type="email" name="email" id="email" value="<%=rs.getString(4) %>" readonly class="emailalign"><br><br>
		Phone number :<input type="text" name="phone" id="phone" value="<%=rs.getLong(7) %>" class="phonealign"><br><br>
		<button type="submit">Edit Profile</button>
		</form></div>
		
	<%} %>
	<%if(session.getAttribute("editres")!=null){ %>
		<h3><%=session.getAttribute("editres") %></h3>
		<%} %>
</body>
</html>