<%@page import="com.onlineexam.controller.ShowExamDetails"%>
<%@page import="com.onlineexam.impl.ScoreDetailsDao"%>
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
</style>
<title>Exam Result</title>
</head>
<body>
<%int userid= (int)session.getAttribute("userid");
	String username=(String)session.getAttribute("username");
	int examId=Integer.parseInt(request.getParameter("examid"));
	String examName=request.getParameter("examName");
	ScoreDetailsDao dd=new ScoreDetailsDao();
	ResultSet rs=dd.viewScore(userid); 
	%>
	<h2><u>Score Details</u></h2>
	<div id="finish" style="text-align:center;">
<form action="scoreDetails" >
<input style="visibility:hidden;" type="text" id="examId" name="examId" value="<%=examId%>">
<input style="visibility:hidden;" type="text" id="examName" name="examName" value="<%=examName%>">
<input style="visibility:hidden;" type="text" id="studentId" name="uID" value="<%=userid%>"/>

<input style="visibility:hidden;" type="text" id="score" name="score">
<input style="visibility:hidden;" type="text" id="passOrFail" name="passOrFail">
<input style="visibility:hidden;" type="text" id="grade" name="grade">
<button class="button examButton" style="margin-top:-750px;margin-right:150px;">View my Exam</button>
</form></div>
</body>
</html>