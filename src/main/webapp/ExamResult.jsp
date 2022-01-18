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
.container{
text-align:center;
font-size:x-large;
font-weight:bolder;
}
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
.homealign{
float:right;
font-weight:bolder;
font-size:x-large;
color:black;
margin-top:-75px;
margin-right:15px;
}
</style>
<title>Exam Result</title>
</head>
<body>
<%int userid= (int)session.getAttribute("userid");
	String username=(String)session.getAttribute("username");
	int examId=Integer.parseInt(request.getParameter("examid"));
	String examName=request.getParameter("examName");
	int mark=Integer.parseInt(request.getParameter("score"));
	String passorfail=request.getParameter("passfail");
	String grade=request.getParameter("grade");
	ScoreDetailsDao dd=new ScoreDetailsDao();
	ResultSet rs=dd.viewScore(userid); 
	%>
	<center><h2><u>Score Details</u></h2></center><br><br>
	<a href="UserMain.jsp" class="homealign">Home</a>
<div class="container">
Your mark is:  <%=mark %><br><br>
Your status is:  <%=passorfail %><br><br>
Your grade is:  <%=grade %><br><br><br>
</div>
<center><a href="feedbackDetails.jsp?userid=<%=userid %>&examid=<%=examId%>&examname=<%=examName%>"><button type="submit" class="button examButton">Send Feedback</button></a></center>
	
</body>
</html>