<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="login.css">
<title>Login Page</title>
</head>

<body>
	<form action="loginserv" method="post">
        <!-- <img src="onlineExamImage.jpg" alt="onlineexam"  class="img1",class="centered"> -->
    <div class="container">
        <h1 class="h1move" class="login"><u>Login</u></h1>
        <label for="email" class="usernamealign">Email id</label><br>
        <input type="email" pattern="[a-z][a-z0-9]+[@][a-z]+[.][a-z]+" name="email" id="email" placeholder="abc@domain.com" autofocus required><br><br>
        <label for="password" class="passwordalign">Password</label><br>
        <input type="password"  pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&?/*$^]).{8,16}$" title="Minimum 8 characters should be there.There should be atleast one numeric,special character,capital letter and small letter." name="password" id="password" required placeholder="password" ><br><br>
        <button type="submit">Submit</button>
        <button type="reset">Reset</button><br><br>
        <a href="UserPasswordUpdateServlet.jsp">Forgot Password?</a><br><br>
        Don't have an account<a href="Register.jsp" class="newUserMove" title="You have to sign-up!">New user?</a>
      
    </div>
</form>

   <!--  <% String error=(String)session.getAttribute("loginResult");
      	if(error!=null){%>
      		<h3 style="margin-left:565px;margin-top:563px; size:70%"><%=session.getAttribute("loginResult") %></h3>
      	<%} %> -->
      	
      	<% String error1=(String)session.getAttribute("loginResult");
      	
      	if(error1!=null){%>
      		<script>getError();</script> 
      	<%} %>
      	
      	<% String regres=(String)session.getAttribute("registered");
      	
      	if(regres!=null){%>
      		<h3 style="margin-left:565px;margin-top:563px; size:70%"><%=session.getAttribute("registered") %></h3> 
      	<%} %>
      	
      	<%String message=(String)session.getAttribute("changed");
	if(message!=null){%>
		<h3 style="margin-left:565px;margin-top:563px; size:70%"><%=session.getAttribute("changed") %></h3>
	<% }
	%>
	
		<%session.removeAttribute("changed"); %>
        <% session.removeAttribute("loginResult");%>
        <% session.removeAttribute("registered");%>
</body>
</html>
<script>
function getError(){
	
		alert(<%=session.getAttribute("loginResult")%>);
	
}
</script>