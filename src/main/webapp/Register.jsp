<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="register.css">
    <title>Register page</title>
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
    <div class="registerform">

        <form action="register" onsubmit="return match()" method="post">
            <div class="registerformcontent">
                <h1>Registration</h1><br>
                <label for="firstName">First name :</label><br>
                <input type="text" pattern="[A-Za-z]{3,}" name="firstName" id="firstName" autofocus required
                    title="minimum 3 characters should be there."><br><br>
                <label for="lastName">Last name :</label><br>
                <input type="text" pattern="[A-Za-z]+" name="lastName" id="lastName" required><br><br>
                <label for="email">Email Id:</label><br>
                <input type="email" pattern="[a-z0-9]+[@][a-zA-Z]+[.][a-z]+"
                    title="You have to insert @ and . in the username ex.abc@gmail.com" name="email" id="email" required
                    placeholder="abc@domain.com"><br><br>
                <label for="password">Password :</label><br>
                <input type="password" pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&?/*$^]).{8,16}$"
                    title="Minimum 8 characters should be there.There should be atleast one numeric,special character,capital letter and small letter."
                    name="password" id="password" required minlength="8" maxlength="16"><br><br>
                <label for="cpassword">Confirm password :</label><br>
                <input type="password" pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&?/*$^]).{8,16}$"
                    title="confirm password must be same as password" name="cpassword" id="cpassword" required
                    minlength="8" maxlength="16"><br><br>
                <label for="phone_number">Phone number :</label><br>
                <input type="text" pattern="[6-9]{1}[0-9]{9}" name="phone_number" id="phone_number" required
                    minlength="10" maxlength="10"><br><br><br><br>
                    
                    <button type="submit">Submit</button>
                <button type="reset">Reset</button>
                
                
            </div>
            <p id="pws" style="color: crimson;"></p>
        </form>
        
    </div>
    <%	String error1=(String)session.getAttribute("phonenumberexist");
      	if(error1!=null){%>
      		<h3 style="margin-left:590px;margin-top:590px; size:70%"><%=session.getAttribute("phonenumberexist") %></h3>
      	<%} %>
    <% String error=(String)session.getAttribute("emailexist");
      	if(error!=null){%>
      		<h3 style="margin-left:590px;margin-top:590px; size:70%"><%=session.getAttribute("emailexist") %></h3>
      	<%}%>
       

        <% session.removeAttribute("emailexist");
           session.removeAttribute("phonenumberexist");%>
    
</body>

</html>