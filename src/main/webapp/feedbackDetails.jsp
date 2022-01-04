<%@page import="com.onlineexam.controller.ShowExamDetails"%>
<%@page import="java.sql.ResultSet"%>
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
h2{
	text-align:center;
}
</style>
<title>Feedback Details</title>
</head>
<body>
<% ResultSet rs=ShowExamDetails.showExams();%>
	
	
<%int userid= (int)session.getAttribute("userid");
int examId=Integer.parseInt(request.getParameter("examid"));
String examName=request.getParameter("examName");
%>
<form action="feedbackDetails" method="post">
	<h2><u>Feedback Details</u></h2><br><br><br>
	<input style="visibility:hidden;" type="text" id="examId" name="examId" value="<%=examId%>">
	<input style="visibility:hidden;" type="text" id="examName" name="examName" value="<%=examName%>">
	<input style="visibility:hidden;" type="text" id="studentId" name="uID" value="<%=userid%>"/>
	<p>Drop your feedback</p><br>
	<textarea name="feedback" id="feedback"></textarea><br>
	<button type="submit">Submit</button>
	</form>
</body>
</html>