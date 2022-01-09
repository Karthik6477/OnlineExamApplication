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
table,th,td{
    border: 1px solid black;
    border-collapse: collapse;
    padding: 20px;
}
h2{
	text-align:center;
}
a{
	float:right;
	margin-right:15px;
	margin-top:-40px;
	font-weight:bolder;
	font-size:x-large;
	color:black;
}
</style>
<title>Score Details</title>
</head>
<body>
	<h2><u>Score Details</u></h2>
	<a href="UserMain.jsp"><b>Home</b></a>
	<%int userid= (int)session.getAttribute("userid");
	String username=(String)session.getAttribute("username");
	ScoreDetailsDao dd=new ScoreDetailsDao();
	ResultSet rs=dd.viewScore(userid); 
	%>
	<table style="width: 80%;margin-left: 100px;font-size:large;">
        <tr>
            <th>Student name</th>
            <th>Exam Name</th>
            <th>Score</th>
            <th>PassOrFail</th>
            <th>Grade</th>
            <th>Exam Date</th>
        </tr>
        <% while(rs.next()){ 
        	%>
        	<tr>
                <td><%=username%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getInt(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getDate(7)%></td>
                
               </tr>
               <%} %>
               </table> 
               
     
</body>
</html>
