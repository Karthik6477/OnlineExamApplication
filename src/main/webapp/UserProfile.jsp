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
</style>
<title>User Profile</title>
</head>
<body>
	<%int userid=(int)session.getAttribute("userid"); 
	LoginDao ld=new LoginDao();
	ResultSet rs=ld.userprofile(userid);%>
	<a href="UserMain.jsp">Home</a>
	<%while(rs.next()){%>
		<img src="images/<%=rs.getString(9) %>" style="border-radius:50%;height:250px;width:260px;border-color:black">
		<form action="changeprofile" method="post">
		<input type="file" id="avatar" name="avatar">
		<button type="submit">Change photo</button>
		</form>
		<br>
		<form action="editprofile" method="post">
		Firstname : <input type="text" name="firstname" id="firstname" value="<%=rs.getString(2) %>"><br><br>
		Lastname : <input type="text" name="lastname" id="lastname" value="<%=rs.getString(3) %>"><br><br>
		Email : <input type="email" name="email" id="email" value="<%=rs.getString(4) %>"><br><br>
		Phone number :<input type="text" name="phone" id="phone" value="<%=rs.getLong(7) %>"><br><br>
		<button type="submit">Edit Profile</button>
		</form>
		
	<%} %>
	<%if(session.getAttribute("editres")!=null){ %>
		<h3><%=session.getAttribute("editres") %></h3>
		<%} %>
</body>
</html>