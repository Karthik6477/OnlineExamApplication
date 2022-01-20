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
float:right;
margin-right:15px;
margin-top:-535px;
font-weight:bolder;
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
<title>Password changing</title>
</head>
<script>
    function match() {
        let ps1 = document.getElementById("password");
        let ps2 = document.getElementById("cpassword");
        if (ps1.value.trim() != ps2.value.trim()) {
            document.getElementById("pws").innerHTML = "Passwords must be same";
            return false;
        }
        else {
            return true;
        }
    }
</script>
<body>
<a href="index.jsp"><h2>Back</h2></a>
<div class="container">
	<h3><u>Change Password</u></h3>
	<form action="changepassword" onsubmit="return match()" method="post">
	<label for="phone_number">Enter your phone number:</label><br>
    <input type="text" pattern="[6-9]{1}[0-9]{9}" name="phone_number" id="phone_number" required minlength="10" maxlength="10"><br><br>
	<label for="npassword">Enter your new Password:</label><br>
	<input type="password"  pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&?/*$^]).{8,16}$" title="Minimum 8 characters should be there.There should be atleast one numeric,special character,capital letter and small letter." name="password" id="password" required placeholder="password" minlength="8" maxlength="16"><br><br>
	<label for="cpassword">Confirm new password:</label><br>
    <input type="password" pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&?/*$^]).{8,16}$" title="confirm password must be same as password" name="cpassword" id="cpassword" required minlength="8" maxlength="16"><br><br>
	<button type="submit" class="buttons button2">Change Password</button>
	
	
	</form>
	</div>
	<p id="pws" style="color: black;margin-left:540px;margin-top:543px;font-weight:bolder;font-size:x-large;"></p>
	
</body>
</html>