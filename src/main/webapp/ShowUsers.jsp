<%@page import="com.onlineexam.controller.ShowUsersDetails"%>
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

</style>
<title>List of Users</title>
</head>
<body>
	<a id="ExamDetails" href="ExamDetails.jsp"><h4 style="float: right;margin-right:10px;font-size:x-large;color:black"><u>Back</u></h4></a>
	<h2><u>Users</u></h2>
	
	<% ShowUsersDetails sd=new ShowUsersDetails();
	ResultSet rs=sd.showUsers(); %>
	<table style="width: 80%;margin-left: 100px;font-size:large;">
        <tr>
            <th>User Id</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone Number</th>
        </tr>
        <% while(rs.next()){ %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(7)%></td>
            </tr>
        <%} %>
    </table>
</body>
</html>