<%@page import="java.sql.ResultSet"%>
<%@page import="com.onlineexam.impl.*" %>
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
</style>
<title>List of Exams</title>
</head>
<body>
	<a href="FilterByDifficulty.html"><h4 style="float: right;margin-right:10px;margin-top:-7px;font-size:x-large;color:black;"><u><b>Back</b></u></h4></a>
	<h2><u>Exams</u></h2>
	<% ExamDetailsDao ed=new ExamDetailsDao();
	ResultSet rs=ed.showExams();
	%>
	<table style="width: 80%;margin-left: 100px;font-size:large;">
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
            <% if(rs.getString(4).equals("Easy")){%>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <% if(rs.getString(2).equals("JAVA")){%>
                	<td><a href="JavaExamEasy.jsp?examid=<%=rs.getInt(1)%>&examName=<%=rs.getString(2)%>"><center><button type="submit" class="button examButton">Take Exam</button></center></a></td>
                	
               <% } 
                else if(rs.getString(2).equals("HTML")){%>
                	<td><a href="HtmlExamEasy.jsp?examid=<%=rs.getInt(1)%>&examName=<%=rs.getString(2)%>"><center><button type="submit" class="button examButton">Take Exam</button></center></a></td>
               <%  }
                else if(rs.getString(2).equals("CSS")){%>
                	<td><a href="CssExamEasy.jsp?examid=<%=rs.getInt(1)%>&examName=<%=rs.getString(2)%>"><center><button type="submit" class="button examButton">Take Exam</button></center></a></td>
                	<%HttpSession session1=request.getSession();
                session1.setAttribute("duration", rs.getString(5)); %>
               <%  }
                 }
            
        }%>
                 
                
                
            </tr>
        
    </table>
</body>
</html>