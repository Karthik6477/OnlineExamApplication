<%@page import="java.sql.ResultSet"%>
<%@page import="com.onlineexam.impl.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
b{
    font-size: xx-large;
}
#clock{
    position: absolute;
    left: 1200px;
    top: 100px;
    font-size: xx-large;
}
h2{
	text-align: center;
}
body{
    background: linear-gradient(to right, springgreen, rgb(253, 253, 53));
}
.questions{
position: absolute;
margin-top:120px;
left:170px;
font-size:30px;
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
#finish,#feed,#hour,#min,#colon,#next,#music,#complete,#timeup{
	visibility:hidden;
}
#result{
font-size:large;
text-align:center;
}
#passFail{
font-size:large;
text-align:center;
}
#studentGrade{
font-size:large;
text-align:center;
}
#buttons{
visibility:hidden;
}

#home{
float: right;
margin-right:10px;
margin-top:-70px;
font-size:x-large;
}
.start{
margin-top:210px;
margin-left:630px;
}
.timeupalign{
	font-size:xx-large;
	font-weight:bolder;
	margin-top:170px;
}
.form{
margin-top:-400px;
}
</style>
<title>CSS Exam</title>
</head>
<body>
	<% ExamDetailsDao ed=new ExamDetailsDao();
	ResultSet rs=ed.showExams();
	%>
	
	<%int userid= (int)session.getAttribute("userid");
int examId=Integer.parseInt(request.getParameter("examid"));
String examName=request.getParameter("examName");
HttpSession session1=request.getSession();
int duration=Integer.parseInt(session1.getAttribute("duration").toString());
%>
	
	<h2 style="margin-left:50px;" id="css"><u>CSS Exam</u></h2>
	<a id="home" href="UserChooseExams.jsp"><h4 style="color:black;"><u>Back</u></h4></a>
	<div id="clock">
    <b id="hour"></b><label> &nbsp;<span id="colon">:</span>&nbsp;</label><b id="min"></b>
</div>
<br> <button id="startButton" onclick="clcok();play()" class="button examButton start">Start</button>
	
	<div style="margin-top:-250px;">
	<div class="questions" id="question1">
	<p>1)The HTML attribute used to define the inline styles is -<br>
		<input type="radio" name="answer1"  value="style">style<br>
		<input type="radio" name="answer1"  value="styles">styles<br>
		<input type="radio" name="answer1"  value="class">class<br>
		<input type="radio" name="answer1"  value="None of the above">None of the above<br>
		
	</p>
	</div>
	<div class="questions" id="question2">
	<p>2)Which of the following CSS property is used to set the background image of an element?<br>
		<input type="radio" name="answer2" value="background-attachment">background-attachment<br>
		<input type="radio" name="answer2" value="background-image">background-image<br>
		<input type="radio" name="answer2" value="background-color">background-color<br>
		<input type="radio" name="answer2" value="None of the above">None of the above<br>
	
	</p>
	</div>
	<div class="questions" id="question3">
	<p>3)Which of the following is the correct syntax to make the background-color of all paragraph elements to yellow?<br>
		<input type="radio" name="answer3" value="p {background-color : yellow;}">p {background-color : yellow;}<br>
		<input type="radio" name="answer3" value="p {background-color : #yellow;}">p {background-color : #yellow;}<br>
		<input type="radio" name="answer3" value="all {background-color : yellow;}">all {background-color : yellow;}<br>
		<input type="radio" name="answer3" value="all p {background-color : #yellow;}">all p {background-color : #yellow;}<br>
		
	</p>
	</div>
	<div class="questions" id="question4">
	<p>4)Which of the following is the correct syntax to display the hyperlinks without any underline?<br>
		<input type="radio" name="answer4" value="a {text-decoration : underline;}">a {text-decoration : underline;}<br>
		<input type="radio" name="answer4" value="a {decoration : no-underline;}">a {decoration : no-underline;}<br>
		<input type="radio" name="answer4" value="a {text-decoration : none;}">a {text-decoration : none;}<br>
		<input type="radio" name="answer4" value="None of the above">None of the above<br>
		
	</p>
	</div>
	<div class="questions" id="question5">
	<p>5)Which of the following property is used as the shorthand property for the padding properties?<br>
		<input type="radio" name="answer5" value="padding-left">padding-left<br>
		<input type="radio" name="answer5" value="padding-right">padding-right<br>
		<input type="radio" name="answer5" value="padding">padding<br>
		<input type="radio" name="answer5" value="All of the above">All of the above<br>
		
	</p>
	</div>
	<div class="questions" id="question6">
	<p>6)The CSS property used to make the text bold is -<br>
		<input type="radio" name="answer6" value="font-weight : bold">font-weight : bold<br>
		<input type="radio" name="answer6" value="weight: bold">weight: bold<br>
		<input type="radio" name="answer6" value="font: bold">font: bold<br>
		<input type="radio" name="answer6" value="style: bold">style: bold<br>
		
	</p>
	</div>
	<div class="questions" id="question7">
	<p>7)Are the negative values allowed in padding property?<br>
		<input type="radio" name="answer7" value="Yes">Yes<br>
		<input type="radio" name="answer7" value="No">No<br>
		<input type="radio" name="answer7" value="Can't say">Can't say<br>
		<input type="radio" name="answer7" value="May be">May be<br>
		
	</p>
	</div>
	<div class="questions" id="question8">
	<p>8)Which of the following property is used as the shorthand property of margin properties?<br>
		<input type="radio" name="answer8" value="margin-left">margin-left<br>
		<input type="radio" name="answer8" value="margin-right">margin-right<br>
		<input type="radio" name="answer8" value="margin">margin<br>
		<input type="radio" name="answer8" value="None of the above">None of the above<br>
	</p>
	</div>
	<div class="questions" id="question9">
	<p>9)The CSS property used to specify the transparency of an element is -<br>
		<input type="radio" name="answer9" value="opacity">opacity<br>
		<input type="radio" name="answer9" value="filter">filter<br>
		<input type="radio" name="answer9" value="visibility">visibility<br>
		<input type="radio" name="answer9" value="overlay">overlay<br>
		
	</p>
	</div>
	<div class="questions" id="question10">
	<p>10)Which of the following is used to specify the subscript of text using CSS?<br>
		<input type="radio" name="answer10" value="vertical-align: sub">vertical-align: sub<br>
		<input type="radio" name="answer10" value="vertical-align: super">vertical-align: super<br>
		<input type="radio" name="answer10" value="vertical-align: subscript">vertical-align: subscript<br>
		<input type="radio" name="answer10" value="None of the above">None of the above<br>
		
	</p>
	
	</div>
	
</div>

<p id="result"></p>
<p id="passFail"></p>
<p id="studentGrade"></p>
<div id="timeup" class="timeupalign">
<center><p>Your time is up!....</p></center>
<center><p>You have to submit exam</p></center></div>
<div id="feed">
<a href="feedbackDetails.jsp?examid=<%=examId%>&userid=<%=userid%>"><center><button class="button examButton" style="margin-top:100px;">Send feedback</button></center>&nbsp;&nbsp;</a>
</div>
<audio src="musics/exam_music.mp3" id="music"></audio>
<div id="buttons" class="form">
<form action="scoreDetails" >
<input style="visibility:hidden;" type="text" id="examId" name="examId" value="<%=examId%>">
<input style="visibility:hidden;" type="text" id="examName" name="examName" value="<%=examName%>">
<input style="visibility:hidden;" type="text" id="studentId" name="uID" value="<%=userid%>"/>
<input style="visibility:hidden;" type="text" id="score" name="score">
<input style="visibility:hidden;" type="text" id="passOrFail" name="passOrFail">
<input style="visibility:hidden;" type="text" id="grade" name="grade">
<center><button id="submit" onclick="ans();pause()" style="text-align:center;margin-top:270px;" class="button examButton">Submit</button></center>
</form></div>
<div>
<center><button id="next" onclick="qu()" style="text-align:center;margin-top:-290px;" class="button examButton">Next</button></center>

</div>

</body>
</html>
<script>
var num=1;
var mark=0;
function ans(){
	var ans1=document.getElementsByName("answer1");
	var ans2=document.getElementsByName("answer2");
	var ans3=document.getElementsByName("answer3");
	var ans4=document.getElementsByName("answer4");
	var ans5=document.getElementsByName("answer5");
	var ans6=document.getElementsByName("answer6");
	var ans7=document.getElementsByName("answer7");
	var ans8=document.getElementsByName("answer8");
	var ans9=document.getElementsByName("answer9");
	var ans10=document.getElementsByName("answer10");
	
	document.getElementById("submit").style.visibility="hidden";
	 document.getElementById("question1").style.visibility="hidden";
     document.getElementById("question2").style.visibility="hidden";
     document.getElementById("question3").style.visibility="hidden";
     document.getElementById("question4").style.visibility="hidden";
     document.getElementById("question5").style.visibility="hidden";
     document.getElementById("question6").style.visibility="hidden";
     document.getElementById("question7").style.visibility="hidden";
     document.getElementById("question8").style.visibility="hidden";
     document.getElementById("question9").style.visibility="hidden";
     document.getElementById("question10").style.visibility="hidden";
     

		//answer 1
		const rbs=document.querySelectorAll('input[name="answer1"]');
		for(const rb of rbs){
			if(rb.checked){
				//selectedvalue=rb.value;
				if(rb.value=="style"){
					mark++;
				}
				break;
			}
		}
		
		//answer 2
		const rbs2=document.querySelectorAll('input[name="answer2"]');
		for(const rb2 of rbs2){
			if(rb2.checked){
				if(rb2.value=="background-image"){
					mark++;
				}
				break;
			}
		}
		
		//answer 3
		const rbs3=document.querySelectorAll('input[name="answer3"]');
		for(const rb3 of rbs3){
			if(rb3.checked){
				if(rb3.value=="p {background-color : yellow;}"){
					mark++;
				}
				break;
			}
		}
		
		//answer 4
		const rbs4=document.querySelectorAll('input[name="answer4"]');
		for(const rb4 of rbs4){
			if(rb4.checked){
				if(rb4.value=="a {text-decoration : none;}"){
					mark++;
				}
				break;
			}
		}
		
		//answer 5
		const rbs5=document.querySelectorAll('input[name="answer5"]');
		for(const rb5 of rbs5){
			if(rb5.checked){
				if(rb5.value=="padding"){
					mark++;
				}
				break;
			}
		}
		
		//answer 6
		const rbs6=document.querySelectorAll('input[name="answer6"]');
		for(const rb6 of rbs6){
			if(rb6.checked){
				if(rb6.value=="font-weight : bold"){
					mark++;
				}
				break;
			}
		}
		
		//answer 7
		const rbs7=document.querySelectorAll('input[name="answer7"]');
		for(const rb7 of rbs7){
			if(rb7.checked){
				if(rb7.value=="No"){
					mark++;
				}
				break;
			}
		}
		
		//answer 8
		const rbs8=document.querySelectorAll('input[name="answer8"]');
		for(const rb8 of rbs8){
			if(rb8.checked){
				if(rb8.value=="margin"){
					mark++;
				}
				break;
			}
		}
		
		//answer 9
		const rbs9=document.querySelectorAll('input[name="answer9"]');
		for(const rb9 of rbs9){
			if(rb9.checked){
				if(rb9.value=="opacity"){
					mark++;
				}
				break;
			}
		}
		
		//answer 10
		const rbs10=document.querySelectorAll('input[name="answer10"]');
		for(const rb10 of rbs10){
			if(rb10.checked){
				if(rb10.value=="vertical-align: sub"){
					mark++;
				}
				break;
			}
		}
		

		   clearInterval(inter);
		
		document.getElementById("buttons").style.visibility="hidden";
		document.getElementById("css").style.visibility="hidden";
		document.getElementById("hour").style.visibility="hidden";
		document.getElementById("min").style.visibility="hidden";
		document.getElementById("colon").style.visibility="hidden";
		document.getElementById("score").value=mark;
		if(mark>=5){
			
			document.getElementById("passOrFail").value="pass";
			if(mark==5){
				document.getElementById("grade").value="E";
			}
			else if(mark==6){
				document.getElementById("grade").value="D";
			}
			else if(mark==7){
				document.getElementById("grade").value="C";
			}
			else if(mark==8){
				document.getElementById("grade").value="B";
			}
			else if(mark==9){
				document.getElementById("grade").value="A";
			}
			else if(mark==10){
				document.getElementById("grade").value="O";
			}
		}
		else{
			document.getElementById("passOrFail").value="fail";
			document.getElementById("grade").value="RA";
		}

}

		document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        document.getElementById("submit").style.visibility="hidden";
      
function qu(){
	
  
    if(num==0){
    	
        document.getElementById("question1").style.visibility="visible";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        document.getElementById("submit").style.visibility="hidden";
	num++;  
}
else if(num==1){
    document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="visible";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        document.getElementById("submit").style.visibility="hidden";
        num++; 
}

else if(num==2){
    	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="visible";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        document.getElementById("submit").style.visibility="hidden";
        num++;
}
else if(num==3){
    	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="visible";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        document.getElementById("submit").style.visibility="hidden";
        num++;
}
else if(num==4){
    	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="visible";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        document.getElementById("submit").style.visibility="hidden";
        num++;
}
else if(num==5){
    	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="visible";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        document.getElementById("submit").style.visibility="hidden";
        num++;
}
else if(num==6){
    	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="visible";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        document.getElementById("submit").style.visibility="hidden";
        num++;
}
else if(num==7){
    	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="visible";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="hidden";
        document.getElementById("submit").style.visibility="hidden";
        num++;
}
else if(num==8){
   	 	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="visible";
        document.getElementById("question10").style.visibility="hidden";
        document.getElementById("submit").style.visibility="hidden";
        num++;
}
else if(num==9){
    	document.getElementById("question1").style.visibility="hidden";
        document.getElementById("question2").style.visibility="hidden";
        document.getElementById("question3").style.visibility="hidden";
        document.getElementById("question4").style.visibility="hidden";
        document.getElementById("question5").style.visibility="hidden";
        document.getElementById("question6").style.visibility="hidden";
        document.getElementById("question7").style.visibility="hidden";
        document.getElementById("question8").style.visibility="hidden";
        document.getElementById("question9").style.visibility="hidden";
        document.getElementById("question10").style.visibility="visible";
        document.getElementById("next").style.visibility="hidden";
        document.getElementById("submit").style.visibility="visible";
        num++;
}
else if(num==10){
	document.getElementById("question1").style.visibility="hidden";
    document.getElementById("question2").style.visibility="hidden";
    document.getElementById("question3").style.visibility="hidden";
    document.getElementById("question4").style.visibility="hidden";
    document.getElementById("question5").style.visibility="hidden";
    document.getElementById("question6").style.visibility="hidden";
    document.getElementById("question7").style.visibility="hidden";
    document.getElementById("question8").style.visibility="hidden";
    document.getElementById("question9").style.visibility="hidden";
    document.getElementById("question10").style.visibility="hidden";
    document.getElementById("next").style.visibility="hidden";
    document.getElementById("submit").style.visibility="hidden";

}
}
document.getElementById("hour").style.color="green";
document.getElementById("min").style.color="green";    

var min=0;
var hour=<%=duration%>;
var inter=0;
function clcok(){
	document.getElementById("buttons").style.visibility="visible";
	document.getElementById("home").style.visibility="hidden";
	document.getElementById("hour").style.visibility="visible";
	document.getElementById("min").style.visibility="visible";
	document.getElementById("colon").style.visibility="visible";
	document.getElementById("next").style.visibility="visible";
	document.getElementById("startButton").style.visibility="hidden";
	document.getElementById("question1").style.visibility="visible";
    document.getElementById("question2").style.visibility="hidden";
    document.getElementById("question3").style.visibility="hidden";
    document.getElementById("question4").style.visibility="hidden";
    document.getElementById("question5").style.visibility="hidden";
    document.getElementById("question6").style.visibility="hidden";
    document.getElementById("question7").style.visibility="hidden";
    document.getElementById("question8").style.visibility="hidden";
    document.getElementById("question9").style.visibility="hidden";
    document.getElementById("question10").style.visibility="hidden";
inter=setInterval(clock,1000);

}

function clock(){

if(hour==0 && min==1)  {
   clearInterval(inter);
}

   console.log(min);

if(min==0){
hour--;
console.log(hour);
 min=60;
}
if(hour==3 && min==1){
document.getElementById("hour").style.color="red";
document.getElementById("min").style.color="red";
}
min--;
document.getElementById("hour").innerHTML=hour;
document.getElementById("min").innerHTML=min;
if(hour==0 && min==0)  {
	 document.getElementById("question1").style.visibility="hidden";
     document.getElementById("question2").style.visibility="hidden";
     document.getElementById("question3").style.visibility="hidden";
     document.getElementById("question4").style.visibility="hidden";
     document.getElementById("question5").style.visibility="hidden";
     document.getElementById("question6").style.visibility="hidden";
     document.getElementById("question7").style.visibility="hidden";
     document.getElementById("question8").style.visibility="hidden";
     document.getElementById("question9").style.visibility="hidden";
     document.getElementById("question10").style.visibility="hidden";

     document.getElementById("buttons").style.visibility="hidden";
     mark=0;
     
     document.getElementById("timeup").style.visibility="visible";
		   clearInterval(inter);
		
		document.getElementById("buttons").style.visibility="hidden";
		document.getElementById("css").style.visibility="hidden";
		document.getElementById("score").value=mark;
		
		var audio = document.getElementById("music");
		  audio.pause();
		  
}

}

function play() {
  var audio = document.getElementById("music");
  audio.play();
}
function pause() {
	  var audio = document.getElementById("music");
	  audio.pause();
	}
</script>