<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="com.onlineexam.impl.*"%>
    <%@page import="com.onlineexam.model.*" %>
    <%@page import="java.util.Date" %>
    <%@page import="java.text.SimpleDateFormat" %>
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
h1{
text-align:center;
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
<title>List of exams</title>
</head>
<body>
<h1><u>All Exams</u></h1>
		<a id="ExamDetails" href="ExamDetails.jsp"><h4 style="float: right;margin-right:10px;margin-top:-50px;font-size:x-large;color:black;"><u>Back</u></h4></a>
	<div style="margin-left:100px;"><form action="FilterExamsByDate.jsp" method="post">
	<h3>Filter by date <input type="date" name="date"></h3>
	<button type="submit" style="margin-left:75px;" class="buttons button2">Filter</button></form>
	
	<div style="margin-left:330px;margin-top:-100px;">
	<form action="FilterExamsByPOF.jsp" method="post">
	<h3>Filter by pass or fail <input type="text" name="pof"></h3>
	<button type="submit" style="margin-left:140px;" class="buttons button2">Filter</button></form></div>
	
	<div style="margin-left:750px;margin-top:-100px;">
	<form action="FilterExamsByGrade.jsp" method="post">
	<h3>Filter by Grade <input type="text" name="grade"></h3>
	<button type="submit" style="margin-left:120px;" class="buttons button2">Filter</button></form></div></div><br><br>
	
	<center><a href="ShowUsersExams.jsp"><button class="buttons button2">View all</button></a></center><br><br>
	
	<%
		String pof=request.getParameter("pof");
			ScoreDetailsPojo sd=new ScoreDetailsPojo(0,pof);
			ScoreDetailsDao sdd=new ScoreDetailsDao();
			ResultSet rs=sdd.filterbyPOF(sd);
		%>
	<table style="width: 80%;margin-left: 100px;font-size:large;">
        <tr>
            <th>Student Id</th>
            <th>Exam Id</th>
            <th>Exam Name</th>
            <th>Score</th>
            <th>Pass or Fail</th>
            <th>Grade</th>
            <th>Exam Date</th>
        </tr>
        <% while(rs.next()){ %>
            <tr>
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getInt(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getInt(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
            </tr>
        <%} %>
    </table>
</body>
</html>