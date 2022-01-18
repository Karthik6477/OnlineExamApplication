<%@page import="com.onlineexam.impl.*"%>
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
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 13px ;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin:  2px;
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
</style>
<title>List of Users</title>
</head>
<body>
	<a id="ExamDetails" href="ExamDetails.jsp"><h4 style="float: right;margin-right:10px;font-size:x-large;color:black"><u>Back</u></h4></a>
	<h2><u>Users</u></h2>
	<%String message=(String)session.getAttribute("statusmessage");
    if(message!=null){
    	%><h3 style="text-align:center;"><%=session.getAttribute("statusmessage") %></h3><% 
    }%>
	
	<% RegisterDao rd=new RegisterDao();
	ResultSet rs=rd.showUsers(); %>
	<table style="width: 80%;margin-left: 100px;font-size:large;">
        <tr>
            <th>User Id</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Last active date</th>
            <th>Status</th>
        </tr>
        <% while(rs.next()){ %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(11)%></td>
                <form action="userstatus?userid=<%=rs.getInt(1) %>" method="post">
                <td><center><button type="submit" class="button examButton">Make Inactive</button></center></td></form>
            </tr>
        <%} %>
    </table>
    <%session.removeAttribute("statusmessage"); %>
</body>
</html>