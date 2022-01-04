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

</style>
<title>List of Exams</title>
</head>
<body>
	<a href="FilterByDifficulty.html"><h4 style="float: right;margin-right:10px;">Choose Difficulty</h4></a>
	<h2>Exams</h2>
	<% ResultSet rs=ShowExamDetails.showExams();
	%>
	<table style="width: 80%;margin-left: 100px;">
        <tr>
            <th>Exam Id</th>
            <th>Exam Name</th>
            <th>Exam Type</th>
            <th>Difficulty Level</th>
            <th>Duration Minutes</th>
            <th>Exam</th>
        </tr>
        <% while(rs.next()){ 
        	 %>
            <tr>
            
              <% if(rs.getString(4).equals("Hard")){%>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <% if(rs.getString(2).equals("JAVA")){%>
                	<td><a href="JavaExamHard.jsp?examid=<%=rs.getInt(1)%>&examName=<%=rs.getString(2)%>"><button type="submit">Take Exam</button></a></td>
                	
               <% } 
                else if(rs.getString(2).equals("HTML")){%>
                	<td><a href="HtmlExamHard.jsp?examid=<%=rs.getInt(1)%>&examName=<%=rs.getString(2)%>"><button type="submit">Take Exam</button></a></td>
               <%  }
                else if(rs.getString(2).equals("CSS")){%>
                	<td><a href="CssExamHard.jsp?examid=<%=rs.getInt(1)%>&examName=<%=rs.getString(2)%>"><button type="submit">Take Exam</button></a></td>
               <%  }
                 %>
                
            </tr>
        <%} }%>
    </table>
</body>
</html>