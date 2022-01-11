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
</style>
<title>Exam Details Page</title>
<link rel="stylesheet" href="ExamDetails.css">
</head>
<body>
	<a href="AdminMain.jsp"><p style="float: right;margin-right: 20px;font-size: 20px;color: black;font-size:x-large;" class="homeDesign"><b><u>Home</u></b></p></a><br>
    <div class="container">

   
   <div class="addexamalign">
   <h2 style="margin-left:80px;"><u>Add Exam</u></h2>
		<button onclick="addexam()" id="addexam"
			style="display: block; margin-left: 595px;" class="button examButton">Add
			Exam</button>
		<div id="add" style="display: none;">
			<form action="addExamDetails" method="post">
				<h2 style="margin-left: 40px;">
					<u>Add Exam</u>
				</h2>


				<!-- <label for="examId">Exam Id</label> <input type="text" name="examId"
					id="examId" required><br> <br> --> <label
					for="examName">Exam Name</label> <input type="text" name="examName"
					id="examName" required><br> <br> <label
					for="examType">Exam type</label> <input type="text" name="examType"
					id="examType" required><br> <br> <label
					for="difficultyLevel">Difficulty Level</label> <input type="text"
					name="difficultyLevel" id="difficultyLevel" required><br>
				<br> <label for="durationHours">Duration Minutes</label> <input
					type="text" name="durationMinutes" id="durationMinutes" required><br>
				<br>


				<button type="submit" class="button examButton">Add Exam</button>&nbsp;&nbsp;<button type="submit" class="button examButton" onclick="hideadd()">Cancel</button>
				<br> <br>
		</div>
	</div>
	<% 
      	if(session.getAttribute("addExamResult")!=null){%>
	<h3
		style="margin-left: 10px; margin-top: 20px; size: 70%; text-align: center;" class="elementToFadeInAndOut"><%=session.getAttribute("addExamResult") %></h3>
	<%} %>

	</form>
	<h2><u>List of Exams</u></h2>
   <a href="ShowExams.jsp?"><button type="submit" class="button examButton">Show Exams</button></a><br>
   <h2><u>List of Users</u></h2>
   <a href="ShowUsers.jsp"><button type="submit" class="button examButton">Show Users</button></a><br>
   <h2><u>List of Exams completed by Users</u></h2>
   <a href="ShowUsersExams.jsp"><button type="submit" class="button examButton">Show all exams</button></a><br>
   <h2><u>List of Inactive Users</u></h2>
   <a href="ShowInactiveUsers.jsp"><button type="submit" class="button examButton">Show inactive users</button></a>
   </div>
</body>
<script>
function addexam(){
	var add=document.getElementById("addexam");
	add.style.display="none";
	var addexam=document.getElementById("add");
	addexam.style.display="block";
}
function hideadd(){
	var add=document.getElementById("addexam");
	add.style.display="block";
	var addexam=document.getElementById("add");
	addexam.style.display="none";
}
</script>
</html>