<%@page import="com.onlineexam.impl.ContactUsDao" %>
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
<title>Users Comments</title>
</head>
<body>
	<h2><u>Users Comments Details</u></h2>
	<a href="AdminMain.jsp"><b>Home</b></a>
	
<% ContactUsDao cud=new ContactUsDao();
ResultSet rs=cud.showCommentsAdmin();%>
<div >
<table style="width: 80%;margin-left: 100px;font-size:large;">
        <tr>
            <th>User Id</th>
            <th>Email</th>
            <th>Comments</th>
            <th>Comment Date</th>
        </tr>
        <% while(rs.next()){ 
        	%>
        	<tr>
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getDate(4)%></td>
                
               </tr>
               <%} %>
               </table> 
               </div>
</body>
</html>