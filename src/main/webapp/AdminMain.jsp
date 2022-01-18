<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Main page</title>
    <link rel="stylesheet" href="UserMain.css">
</head>
<body>
<%HttpSession ses=request.getSession(); %>
    
    <ul class="nav">
        <li><a class="a1 big" href="index.jsp?message=<%ses.setAttribute("logout", "Logged out successfully");%>">Logout</a></li>
        <li><a class="a1 big" href="ShowCommentsAdmin.jsp">Contact us</a></li>
        <li><a class="a1 big" href="AboutUsAdmin.jsp">About us</a></li>
        <li><a class="a1 big" href="ShowFeedbackAdmin.jsp">Feedbacks</a></li>
        <li><a class="a1 big" href="ExamDetails.jsp">Admin Actions</a></li>
    </ul>
    <img src="images/onlineExamIcon.png" class="imgIcon">
    <div class="h1">
      <h1>Explore the Exam</h1>
      <h1 style="margin-left: 70px;">Exclusively</h1>
      <h1 style="margin-left: 40px;">made for you</h1><br><br>
      <h4><a href=""><button style="margin-left: 80px; margin-right: 60px;" class="button examButton">Take Exam</button></a><a href=""><button style="margin-right: 70px;" class="button studyButton">Study</button></a></h4>
    </div>
    <img src="images/onlineExamReferenceRemovedBackground.png" class="image">
    
</body>
</html>