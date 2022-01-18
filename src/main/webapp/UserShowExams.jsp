<%@page import="com.onlineexam.impl.ExamDetailsDao"%>
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
	<a href="UserMain.jsp"><h4 style="float: right;margin-right:10px;">Home</h4></a>
	<h2>Exams</h2>
	<% ExamDetailsDao edd=new ExamDetailsDao();
	ResultSet rs=edd.showExams();
	%>
	<table style="width: 80%;margin-left: 100px;">
        <tr>
            <th>Exam Id</th>
            <th>Exam Name</th>
            <th>Exam Type</th>
            <th>Difficulty Level</th>
            <th>Duration Hours</th>
            <th>Exam</th>
        </tr>
        <% while(rs.next()){ 
        	 %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <% if(rs.getString(2).equals("JAVA")){
                	//link="JavaExam.jsp";%>
                	<td><a href="JavaExam.jsp"><button type="submit">Take Exam</button></a></td>
               <% } 
                else if(rs.getString(2).equals("HTML")){
                	//link="HtmlExam.jsp";%>
                	<td><a href="HtmlExam.jsp"><button type="submit">Take Exam</button></a></td>
               <%  }
                else if(rs.getString(2).equals("CSS")){
                	//link="CssExam.jsp";%>
                	<td><a href="CssExam.jsp"><button type="submit">Take Exam</button></a></td>
               <%  }
                //System.out.println(link);
                 %>
                
            </tr>
        <%} %>
    </table>
</body>
</html>