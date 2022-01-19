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
<title>JAVA Exam</title>
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
	
	<h2 style="margin-left:50px;" id="css"><u>JAVA Exam</u></h2>
	<a id="home" href="UserChooseExams.jsp"><h4 style="color:black;"><u>Back</u></h4></a>
	<div id="clock">
    <b id="hour"></b><label> &nbsp;<span id="colon">:</span>&nbsp;</label><b id="min"></b>
</div>
<br> <button id="startButton" onclick="clcok();play()" class="button examButton start">Start</button>
	
	<div style="margin-top:-250px;">
	<div class="questions" id="question1">
	<p>1) What do you mean by nameless objects?<br>
		<input type="radio" name="answer1" value="An object created by using the new keyword.">An object created by using the new keyword.<br>
		<input type="radio" name="answer1" value="An object of a superclass created in the subclass.">An object of a superclass created in the subclass.<br>
		<input type="radio" name="answer1" value="An object without having any name but having a reference.">An object without having any name but having a reference.<br>
		<input type="radio" name="answer1" value="An object that has no reference.">An object that has no reference.<br>
		<!--  <button onclick="qu1()">Submit</button>-->
	</p>
	</div>
	<div class="questions" id="question2">
	<p>2)An interface with no fields or methods is known as a ______.<br>
		<input type="radio" name="answer2" value="Runnable Interface">Runnable Interface<br>
		<input type="radio" name="answer2" value="Marker Interface">Marker Interface<br>
		<input type="radio" name="answer2" value="Abstract Interface">Abstract Interface<br>
		<input type="radio" name="answer2" value="CharSequence Interface">CharSequence Interface<br>
		<!--  <button>Submit</button>-->
	</p>
	</div>
	<div class="questions" id="question3">
	<p>3)Which of the following is an immediate subclass of the Panel class?<br>
		<input type="radio" name="answer3" value="Applet class">Applet class<br>
		<input type="radio" name="answer3" value="Window class">Window class<br>
		<input type="radio" name="answer3" value="Frame class">Frame class<br>
		<input type="radio" name="answer3" value="Dialog class">Dialog class<br>
		<!-- <button>Submit</button>  -->
	</p>
	</div>
	<div class="questions" id="question4">
	<p>4)Which option is false about the final keyword?<br>
		<input type="radio" name="answer4" value="A final method cannot be overridden in its subclasses.">A final method cannot be overridden in its subclasses.<br>
		<input type="radio" name="answer4" value="A final class cannot be extended.">A final class cannot be extended.<br>
		<input type="radio" name="answer4" value="A final class cannot extend other classes.">A final class cannot extend other classes.<br>
		<input type="radio" name="answer4" value="A final method can be inherited.">A final method can be inherited.<br>
		<!-- <button>Submit</button> -->
	</p>
	</div>
	<div class="questions" id="question5">
	<p>5)Which of these classes are the direct subclasses of the Throwable class?<br>
		<input type="radio" name="answer5" value="RuntimeException and Error class">RuntimeException and Error class<br>
		<input type="radio" name="answer5" value="Exception and VirtualMachineError class">Exception and VirtualMachineError class<br>
		<input type="radio" name="answer5" value="Error and Exception class">Error and Exception class<br>
		<input type="radio" name="answer5" value="IOException and VirtualMachineError class">IOException and VirtualMachineError class<br>
		<!-- <button>Submit</button> -->
	</p>
	</div>
	<div class="questions" id="question6">
	<p>6)What do you mean by chained exceptions in Java?<br>
		<input type="radio" name="answer6" value="Exceptions occurred by the VirtualMachineError">Exceptions occurred by the VirtualMachineError<br>
		<input type="radio" name="answer6" value="An exception caused by other exceptions">An exception caused by other exceptions<br>
		<input type="radio" name="answer6" value="Exceptions occur in chains with discarding the debugging information">Exceptions occur in chains with discarding the debugging information<br>
		<input type="radio" name="answer6" value="None of the above">None of the above<br>
		<!-- <button>Submit</button> -->
	</p>
	</div>
	<div class="questions" id="question7">
	<p>7)In which memory a String is stored, when we create a string using new operator?<br>
		<input type="radio" name="answer7" value="Stack">Stack<br>
		<input type="radio" name="answer7" value="String memory">String memory<br>
		<input type="radio" name="answer7" value="Heap memory">Heap memory<br>
		<input type="radio" name="answer7" value="Random storage space">Random storage space<br>
		<!-- <button>Submit</button> -->
	</p>
	</div>
	<div class="questions" id="question8">
	<p>8)What is the use of the intern() method?<br>
		<input type="radio" name="answer8" value="It returns the existing string from memory">It returns the existing string from memory<br>
		<input type="radio" name="answer8" value="It creates a new string in the database">It creates a new string in the database<br>
		<input type="radio" name="answer8" value="It modifies the existing string in the database">It modifies the existing string in the database<br>
		<input type="radio" name="answer8" value="None of the above">None of the above<br>
		<!-- <button>Submit</button> -->
	</p>
	</div>
	<div class="questions" id="question9">
	<p>9)Which of the following is a marker interface?<br>
		<input type="radio" name="answer9" value="Runnable interface">Runnable interface<br>
		<input type="radio" name="answer9" value="Remote interface">Remote interface<br>
		<input type="radio" name="answer9" value="Readable interface">Readable interface<br>
		<input type="radio" name="answer9" value="Result interface">Result interface<br>
		<!-- <button>Submit</button> -->
	</p>
	</div>
	<div class="questions" id="question10">
	<p>10)In java, jar stands for_____.<br>
		<input type="radio" name="answer10" value="Java Archive Runner">Java Archive Runner<br>
		<input type="radio" name="answer10" value="Java Application Resource">Java Application Resource<br>
		<input type="radio" name="answer10" value="Java Application Runner">Java Application Runner<br>
		<input type="radio" name="answer10" value="None of the above">None of the above<br>
		<!-- <button>Submit</button> -->
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
				if(rb.value=="An object that has no reference."){
					mark++;
				}
				break;
			}
		}
		
		//answer 2
		const rbs2=document.querySelectorAll('input[name="answer2"]');
		for(const rb2 of rbs2){
			if(rb2.checked){
				if(rb2.value=="Marker Interface"){
					mark++;
				}
				break;
			}
		}
		
		//answer 3
		const rbs3=document.querySelectorAll('input[name="answer3"]');
		for(const rb3 of rbs3){
			if(rb3.checked){
				if(rb3.value=="Applet class"){
					mark++;
				}
				break;
			}
		}
		
		//answer 4
		const rbs4=document.querySelectorAll('input[name="answer4"]');
		for(const rb4 of rbs4){
			if(rb4.checked){
				if(rb4.value=="A final class cannot extend other classes."){
					mark++;
				}
				break;
			}
		}
		
		//answer 5
		const rbs5=document.querySelectorAll('input[name="answer5"]');
		for(const rb5 of rbs5){
			if(rb5.checked){
				if(rb5.value=="Error and Exception class"){
					mark++;
				}
				break;
			}
		}
		
		//answer 6
		const rbs6=document.querySelectorAll('input[name="answer6"]');
		for(const rb6 of rbs6){
			if(rb6.checked){
				if(rb6.value=="An exception caused by other exceptions"){
					mark++;
				}
				break;
			}
		}
		
		//answer 7
		const rbs7=document.querySelectorAll('input[name="answer7"]');
		for(const rb7 of rbs7){
			if(rb7.checked){
				if(rb7.value=="Heap memory"){
					mark++;
				}
				break;
			}
		}
		
		//answer 8
		const rbs8=document.querySelectorAll('input[name="answer8"]');
		for(const rb8 of rbs8){
			if(rb8.checked){
				if(rb8.value=="It returns the existing string from memory"){
					mark++;
				}
				break;
			}
		}
		
		//answer 9
		const rbs9=document.querySelectorAll('input[name="answer9"]');
		for(const rb9 of rbs9){
			if(rb9.checked){
				if(rb9.value=="Remote interface"){
					mark++;
				}
				break;
			}
		}
		
		//answer 10
		const rbs10=document.querySelectorAll('input[name="answer10"]');
		for(const rb10 of rbs10){
			if(rb10.checked){
				if(rb10.value=="None of the above"){
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