<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="com.onlineexam.impl.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.examButton{
  background-color: rgb(171, 255, 36);  
  color: black; 
  font-weight: bold;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  border: 4px solid black;
}
.examButton:hover,.examButton :active{
  background-color: black;
  color: white;
  transition: 2ms;
}
.container{
	text-align:center;
}

.addexamalign {
	text-align: center;
}

</style>
<title>Exam Details Page</title>
<link rel="stylesheet" href="ExamDetails.css">
</head>
<body>
	<a href="AdminMain.jsp"><p style="float: right;margin-right: 20px;font-size: 20px;color: black;font-size:x-large;" class="homeDesign"><b><u>Home</u></b></p></a><br>
    <div class="container">

   
   
	<h2 style="margin-left: 80px;"><u>List of Exams</u></h2>
   <a href="ShowExams.jsp"><button type="submit" class="button examButton">Show Exams</button></a><br>
   <h2><u>List of Exams report</u></h2>
   <a href="ShowUsersExams.jsp"><button type="submit" class="button examButton">Show Exams report</button></a><br>
   <h2><u>List of Active Users</u></h2>
   <a href="ShowUsers.jsp"><button type="submit" class="button examButton">Show Active Users</button></a><br>
   <h2><u>List of Inactive Users</u></h2>
   <a href="ShowInactiveUsers.jsp"><button type="submit" class="button examButton">Show Inactive users</button></a>
   </div>
</body>
</html>