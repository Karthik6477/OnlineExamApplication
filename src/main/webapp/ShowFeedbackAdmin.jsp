<%@page import="com.onlineexam.impl.FeedbackDetailsDao"%>
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
<title>Feedback Details</title>
</head>
<body>
	<h2><u>Feedback Details</u></h2>
	<a href="AdminMain.jsp"><b>Home</b></a>
<%
FeedbackDetailsDao fdd=new FeedbackDetailsDao();
ResultSet rs=fdd.showFeedbackAdmin();
%>
<table style="width: 80%;margin-left: 100px;font-size:large;">
        <tr>
            <th>Feedback Id</th>
            <th>User Id</th>
            <th>Exam Id</th>
            <th>Feedback</th>
            <th>Feedback Date</th>
        </tr>
        <% while(rs.next()){ 
        	%>
        	<tr>
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getInt(2)%></td>
                <td><%=rs.getInt(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getDate(5)%></td>
                
               </tr>
               <%} %>
               </table> 
</body>
</html>