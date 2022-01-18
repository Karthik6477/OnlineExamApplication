<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Arvo&display=swap');
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Arvo';
}

body {
           background: linear-gradient(to right, springgreen, rgb(253, 253, 53));

}
.elementToFadeInAndOut {
    -webkit-animation: fadeinout 0.5s linear forwards;
    animation: fadeinout 2s linear forwards;
}

@-webkit-keyframes fadeinout {
  30%,100% { opacity: 0; }
  50% { opacity: 1; }
}

@keyframes fadeinout {
  70%,100% { opacity: 0; }
  50% { opacity: 1; }
}

.wrapper {
    max-width: 350px;
    min-height: 300px;
    margin-top: 120px;
    margin-left: 520px;
    padding: 40px 30px 30px 30px;
    background-color: #ecf0f3;
    border-radius: 15px;
    box-shadow: 0 0 15px black;

}



.wrapper .name {
    font-weight: 600;
    font-size: 1.4rem;
    letter-spacing: 1.3px;
    padding-left: 10px;
    color: #555
    
}

.wrapper .form-field input {
    width: 100%;
    display: block;
    border: none;
    outline: none;
    background: none;
    font-size: 1.2rem;
    color: #666;
    padding: 10px 15px 10px 10px
}

.wrapper .form-field {
    padding-left: 10px;
    margin-bottom: 20px;
    border-radius: 20px;
    box-shadow: inset 8px 8px 8px #cbced1, inset -8px -8px 8px #fff
}

.wrapper .form-field .fas {
    color: #555
}

.wrapper .btn {
    box-shadow: none;
    width: 100%;
    height: 40px;
    background-color: #03A9F4;
    color: #fff;
    border-radius: 25px;
    /* box-shadow: 1px 1px 1px #b1b1b1, 1px 1px 1px #fff; */
    letter-spacing: 1.3px
}

.wrapper .btn:hover {
    background-color: #039BE5
}

.wrapper a {
    text-decoration: none;
    font-size: 0.8rem;
    color: #03A9F4
}

.wrapper a:hover {
    color: #039BE5
}

@media(max-width: 380px) {
    .wrapper {
        margin: 30px 20px;
        padding: 40px 15px 15px 15px
    }
}
.text-center fs-6{

    font-size: large;
}
.pagination  a {
    font-size: 105%;
}

.input box  input focus{
    border-color: darkgoldenrod;
} 
    </style>
    
</head>
<body>
    <span class="border border-dark">
    <div class="wrapper">
        <center><div class="text-center mt-4 name"> Login </div></center>
        <br>
        <form action="loginserv" method="post" class="p-3 mt-3">
            <div class="input box">
                <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span> <input type="email" name="email" id="email" placeholder="email" pattern="[a-z0-9]+[@][a-zA-Z]+[.][a-z]+"
                  title="You have to insert @ and . in the username ex.abc@gmail.com" required autofocus> </div>
                <br>
            </div>
               <div class="form-field d-flex align-items-center"> <span class="fas fa-key"></span> <input type="password" name="password" id="password" placeholder="Password" pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&?/*$^]).{8,16}$"
                    title="Minimum 8 characters should be there.There should be atleast one numeric,special character,capital letter and small letter." required> </div>
               
            
            <input type="checkbox" onclick="myFunction()">Show Password<br><br>
            
            <button type="submit" class="btn mt-3" style="cursor: pointer;">Login</button>
            <br>
        </form>
        <br>
       
        
        <center>
        <div class="pagination"> 
            <a href="UserPasswordUpdateServlet.jsp">Forgot password?</a>  <br>
            <br>
            
            <a href="Register.jsp">Sign up</a> </div>
    </div> 
	<% String regres=(String)session.getAttribute("registered");
      	
      	if(regres!=null){%>
      		<h3 style="margin-left:565px;margin-top:563px; size:70%" class="elementToFadeInAndOut"><%=session.getAttribute("registered") %></h3> 
      	<%} %>
      	
      	<%String message=(String)session.getAttribute("changed");
	if(message!=null){%>
		<h3 style="margin-left:565px;margin-top:563px; size:70%" class="elementToFadeInAndOut"><%=session.getAttribute("changed") %></h3>
	<% }
	%>
	
	<%String logout=(String)session.getAttribute("logout");
	if(logout!=null){%>
		<h3 style="margin-left:555px;margin-top:20px; size:70%;font-size:x-large;" class="elementToFadeInAndOut"><%=session.getAttribute("logout") %></h3>
	<% }
	%>
	
		<%session.removeAttribute("logout"); %>
		<%session.removeAttribute("changed"); %>
        <% session.removeAttribute("loginResult");%>
        <% session.removeAttribute("registered");%>
</span>
</center>
</body>
<script>
function myFunction() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
</html>