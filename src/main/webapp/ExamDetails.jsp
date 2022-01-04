<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exam Details Page</title>
<link rel="stylesheet" href="ExamDetails.css">
</head>
<body>
	<a href="AdminMain.html"><p style="float: right;margin-right: 20px;font-size: 20px;color: black;" class="homeDesign">Home</p></a><br>
    <form action="addExamDetails" method="post">
        <h2><u>Add Exam</u></h2>
        <ul>
            <li>
                <label for="examId">Exam Id</label>
                <input type="text" name="examId" id="examId" required></li><br>
            <li><label for="examName">Exam Name</label>
                <input type="text" name="examName" id="examName" required></li><br>
            <li><label for="examType">Exam type</label>
                <input type="text" name="examType" id="examType" required></li><br>
            <li><label for="difficultyLevel">Difficulty Level</label>
                <input type="text" name="difficultyLevel" id="difficultyLevel" required></li><br>
            <li><label for="durationHours">Duration Minutes</label>
                <input type="text" name="durationMinutes" id="durationMinutes" required></li>

        </ul>
        <button type="submit">Add Exam</button>
         <% 
      	if(session.getAttribute("addExamResult")!=null){%>
      		<h3 style="margin-left:10px;margin-top:20px; size:70%"><%=session.getAttribute("addExamResult") %></h3>
      	<%} %>
        
    </form>
    <form action="updateExamDetails" method="post">
    	<h2><u>Update Exam</u></h2>
    	<ul>
            <li>
                <label for="examId">Exam Id</label>
                <input type="text" name="examId" id="examId" required></li><br>
                <li><label for="examType">Exam type</label>
                <input type="text" name="examType" id="examType" required></li><br>
            	<li><label for="difficultyLevel">Difficulty Level</label>
                <input type="text" name="difficultyLevel" id="difficultyLevel" required></li><br>
            	<li><label for="durationHours">Duration Minutes</label>
                <input type="text" name="durationMinutes" id="durationMinutes" required></li>
        </ul>
        <button type="submit">Update Exam</button>
         <% 
      	if(session.getAttribute("updateExamResult")!=null){%>
      		<h3 style="margin-left:10px;margin-top:20px; size:70%"><%=session.getAttribute("updateExamResult") %></h3>
      	<%} %>
    </form>
    <form action="deleteExamServlet" method="post">
    	<h2><u>Delete Exam</u></h2>
    	<ul>
            <li>
                <label for="examId">Exam Id</label>
                <input type="text" name="examId" id="examId" required></li>
        </ul>
        <button type="submit">Delete Exam</button>
         <% 
      	if(session.getAttribute("deleteExamResult")!=null){%>
      		<h3 style="margin-left:10px;margin-top:20px; size:70%"><%=session.getAttribute("deleteExamResult") %></h3>
      	<%} %>
    </form>

   <% session.removeAttribute("addExamResult");%>
   <% session.removeAttribute("updateExamResult");%>
   <% session.removeAttribute("deleteExamResult");%>

   <h2><u>List of Exams</u></h2>
   <a href="ShowExams.jsp"><button type="submit">Show Exams</button></a>
   <h2><u>List of Users</u></h2>
   <a href="ShowUsers.jsp"><button type="submit">Show Users</button></a>
   <h2><u>List of Exams completed by Users</u></h2>
   <a href="ShowUsersExams.jsp"><button type="submit">Show all exams</button></a>
</body>
</html>