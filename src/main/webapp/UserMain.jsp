<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="com.onlineexam.impl.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Main page</title>
    <link rel="stylesheet" href="UserMain.css">
</head>
<body>
    <%int userid=(int)session.getAttribute("userid");
    HttpSession ses=request.getSession();
    RegisterDao rd=new RegisterDao();
	ResultSet rs=rd.userprofile(userid);
    rs.next();
    %>
    <a href="UserProfile.jsp"><img class="imgalign" src="images/<%=rs.getString(9) %>" height="50px" width="55px" style="float:right;border-radius: 50%;margin-right:10px;margin-top:-3px;border:1px groove black;" title="My Profile"></a>
    <ul class="nav">
        <li><a class="a1" href="index.jsp?message=<%ses.setAttribute("logout", "Logged out successfully");%>">Logout</a></li>
        <li><a class="a1" href="ContactUs.jsp?userid=<%=userid%>">Contact us</a></li>
        <li><a class="a1" href="AboutUs.jsp">About us</a></li>
        <li><a class="a1" href="ShowFeedback.jsp?userid=<%=userid%>">My Feedbacks</a></li>
        <li><a class="a1" href="StudentScoreDetails.jsp">MyExams</a></li>
        
    </ul>
    <img src="images/onlineExamIcon.png" class="imgIcon">
    <div class="h1">
      <h1>Explore the Exam</h1>
      <h1 style="margin-left: 70px;">Exclusively</h1>
      <h1 style="margin-left: 40px;">made for you</h1><br><br>
      
      	<h4><a href="FilterByDifficulty.html"><button style="margin-left: 80px; margin-right: 60px;" class="button examButton">Take Exam</button></a><a href="StudyMaterials.jsp"><button style="margin-right: 70px;" class="button studyButton">Study</button></a></h4>
    </div>
    <img src="images/onlineExamReferenceRemovedBackground.png" class="image">
    
</body>
</html>