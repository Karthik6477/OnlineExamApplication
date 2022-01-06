<%@page import="com.onlineexam.controller.ShowExamDetails"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
table,th,td{
    border: 1px solid black;
    border-collapse: collapse;
    padding: 20px;
}
h2{
    text-align: center;
}
body{
    background: linear-gradient(to right, springgreen, rgb(253, 253, 53));
  }
button{
text-align: center;
}
</style>
<title>List of Exams</title>
</head>
<body>

	<a id="ExamDetails" href="ExamDetails.jsp"><h4 style="float: right;margin-right:10px;font-size:x-large;color:black;"><u>Back</u></h4></a>
	<h2><u>Exams</u></h2>
	<form action="addExamDetails" method="post">
        <h2 style="margin-left:-1100px;"><u>Add Exam</u></h2>
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
        <button type="submit">Add Exam</button><br><br>
         <% 
      	if(session.getAttribute("addExamResult")!=null){%>
      		<h3 style="margin-left:10px;margin-top:20px; size:70%;text-align:center;"><%=session.getAttribute("addExamResult") %></h3>
      	<%} %>
        
    </form>
	<% ResultSet rs=ShowExamDetails.showExams();%>
	
	 <% 
      	if(session.getAttribute("updateExamResult")!=null){%>
      		<h3 style="margin-left:10px;margin-top:20px; size:70%;text-align:center;"><%=session.getAttribute("updateExamResult") %></h3>
      	<%} %>
      	<% 
      	if(session.getAttribute("deleteExamResult")!=null){%>
      		<h3 style="margin-left:10px;margin-top:20px; size:70%;text-align:center;"><%=session.getAttribute("deleteExamResult") %></h3>
      	<%} %>
	<table style="width: 80%;margin-left: 100px;">
        <tr>
            <th>Exam Id</th>
            <th>Exam Name</th>
            <th>Exam Type</th>
            <th>Difficulty Level</th>
            <th>Duration Minutes</th>
            <th>Action</th>
        </tr>
        <% while(rs.next()){ %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><form action="updateExamDetails?examid=<%=rs.getInt(1)%>" method="post">
    	<h2><u>Update Exam</u></h2>
    	<ul>
            	<li><label for="difficultyLevel">Difficulty Level</label>
                <input type="text" name="difficultyLevel" id="difficultyLevel" required></li><br>
            	<li><label for="durationMinutes">Duration Minutes</label>
                <input type="text" name="durationMinutes" id="durationMinutes" required></li>
        </ul>
        <button type="submit" style="text-align:center;">Update Exam</button>
        
    </form><br>
    <form action="deleteExamServlet?examid=<%=rs.getInt(1)%>" method="post">
    	<h2><u>Delete Exam</u></h2>
        <button type="submit" class="buttons">Delete Exam</button>
         
    </form></td>
            </tr>
        <%} %>
       
    </table>
    <%HttpSession session1=request.getSession();%>
    <% session.removeAttribute("addExamResult");%>
   <% session.removeAttribute("updateExamResult");%>
   <% session.removeAttribute("deleteExamResult");%>
</body>
</html>