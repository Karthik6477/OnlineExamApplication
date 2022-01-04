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
#startButton{
position: absolute;
margin-top:220px;
left:630px;
width:100px;
height:50px;
font-weight:bold;
font-size:130%;
background-color:rgb(250, 156, 140);
}
#finish{
	visibility:hidden;
}
#startButton:hover{
background-color:black;
color:white;
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
</style>
<title>HTML Exam</title>
</head>
<body>
	
	<h2><u>HTML Exam</u></h2>
	<div id="clock">
    <b id="hour">--</b><label> &nbsp;:&nbsp;</label><b id="min">--</b>
</div>
<br> <button id="startButton" onclick="clcok()">Start</button>
	
	<div>
	<div class="questions" id="question1">
	<p>1)HTML stands for -<br>
		<input type="radio" name="answer1"  value="HighText Machine Language">HighText Machine Language<br>
		<input type="radio" name="answer1"  value="HyperText and links Markup Language">HyperText and links Markup Language<br>
		<input type="radio" name="answer1"  value="HyperText Markup Language">HyperText Markup Language<br>
		<input type="radio" name="answer1"  value="None of these">None of these<br>
		
	</p>
	</div>
	<div class="questions" id="question2">
	<p>2)The correct sequence of HTML tags for starting a webpage is -<br>
		<input type="radio" name="answer2" value="Head, Title, HTML, body">Head, Title, HTML, body<br>
		<input type="radio" name="answer2" value="HTML, Body, Title, Head">HTML, Body, Title, Head<br>
		<input type="radio" name="answer2" value="HTML, Head, Title, Body">HTML, Head, Title, Body<br>
		<input type="radio" name="answer2" value="Title, Head, Body, HTML">Title, Head, Body, HTML<br>
	
	</p>
	</div>
	<div class="questions" id="question3">
	<p>3)Which of the following element is responsible for making the text bold in HTML?<br>
		<input type="radio" name="answer3" value="pre tag">pre tag<br>
		<input type="radio" name="answer3" value="a tag">a tag<br>
		<input type="radio" name="answer3" value="b tag">b tag<br>
		<input type="radio" name="answer3" value="br tag">br tag<br>
		
	</p>
	</div>
	<div class="questions" id="question4">
	<p>4)Which of the following tag is used for inserting the largest heading in HTML?<br>
		<input type="radio" name="answer4" value="h3 tag">h3 tag<br>
		<input type="radio" name="answer4" value="h1 tag">h1 tag<br>
		<input type="radio" name="answer4" value="h5 tag">h5 tag<br>
		<input type="radio" name="answer4" value="h6 tag">h6 tag<br>
		
	</p>
	</div>
	<div class="questions" id="question5">
	<p>5)Which of the following tag is used to insert a line-break in HTML?<br>
		<input type="radio" name="answer5" value="br tag">br tag<br>
		<input type="radio" name="answer5" value="a tag">a tag<br>
		<input type="radio" name="answer5" value="pre tag">pre tag<br>
		<input type="radio" name="answer5" value="b tag">b tag<br>
		
	</p>
	</div>
	<div class="questions" id="question6">
	<p>6)Which character is used to represent the closing of a tag in HTML?<br>
		<input type="radio" name="answer6" value="\">\<br>
		<input type="radio" name="answer6" value="!">!<br>
		<input type="radio" name="answer6" value="/">/<br>
		<input type="radio" name="answer6" value=".">.<br>
		
	</p>
	</div>
	<div class="questions" id="question7">
	<p>7) input tag is -<br>
		<input type="radio" name="answer7" value="a format tag.">a format tag.<br>
		<input type="radio" name="answer7" value="an empty tag.">an empty tag.<br>
		<input type="radio" name="answer7" value="All of the above">All of the above<br>
		<input type="radio" name="answer7" value="None of the above">None of the above<br>
		
	</p>
	</div>
	<div class="questions" id="question8">
	<p>8)The hr tag in HTML is used for -<br>
		<input type="radio" name="answer8" value="new line">new line<br>
		<input type="radio" name="answer8" value="vertical ruler">vertical ruler<br>
		<input type="radio" name="answer8" value="new paragraph">new paragraph<br>
		<input type="radio" name="answer8" value="horizontal ruler">horizontal ruler<br>
	</p>
	</div>
	<div class="questions" id="question9">
	<p>9)Which of the following attribute is used to provide a unique name to an element?<br>
		<input type="radio" name="answer9" value="class">class<br>
		<input type="radio" name="answer9" value="id">id<br>
		<input type="radio" name="answer9" value="type">type<br>
		<input type="radio" name="answer9" value="None of the above">None of the above<br>
		
	</p>
	</div>
	<div class="questions" id="question10">
	<p>10)What are the types of unordered or bulleted list in HTML?<br>
		<input type="radio" name="answer10" value="disc, square, triangle">disc, square, triangle<br>
		<input type="radio" name="answer10" value="polygon, triangle, circle">polygon, triangle, circle<br>
		<input type="radio" name="answer10" value="disc, circle, square">disc, circle, square<br>
		<input type="radio" name="answer10" value="All of the above">All of the above<br>
		
	</p>
	
	</div>
	
</div>
<p id="result"></p>
<p id="passFail"></p>
<p id="studentGrade"></p>

<div id="buttons">
<button id="next" onclick="qu()" style="margin-left:650px;margin-top:380px;">Next</button>
<button id="submit" onclick="ans()">submit</button>
</div>

<%int userid= (int)session.getAttribute("userid");
int examId=Integer.parseInt(request.getParameter("examid"));
String examName=request.getParameter("examName");
%>
<div id="finish">
<form action="scoreDetails" >
<input style="visibility:hidden;" type="text" id="examId" name="examId" value="<%=examId%>">
<input style="visibility:hidden;" type="text" id="examName" name="examName" value="<%=examName%>">
<input style="visibility:hidden;" type="text" id="studentId" name="uID" value="<%=userid%>"/>
<input style="visibility:hidden;" type="text" id="score" name="score">
<input style="visibility:hidden;" type="text" id="passOrFail" name="passOrFail">
<input style="visibility:hidden;" type="text" id="grade" name="grade">
<button>View my Exam</button>
</form></div>
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
				if(rb.value=="HyperText Markup Language"){
					mark++;
				}
				break;
			}
		}
		
		//answer 2
		const rbs2=document.querySelectorAll('input[name="answer2"]');
		for(const rb2 of rbs2){
			if(rb2.checked){
				if(rb2.value=="HTML, Head, Title, Body"){
					mark++;
				}
				break;
			}
		}
		
		//answer 3
		const rbs3=document.querySelectorAll('input[name="answer3"]');
		for(const rb3 of rbs3){
			if(rb3.checked){
				if(rb3.value=="b tag"){
					mark++;
				}
				break;
			}
		}
		
		//answer 4
		const rbs4=document.querySelectorAll('input[name="answer4"]');
		for(const rb4 of rbs4){
			if(rb4.checked){
				if(rb4.value=="h1 tag"){
					mark++;
				}
				break;
			}
		}
		
		//answer 5
		const rbs5=document.querySelectorAll('input[name="answer5"]');
		for(const rb5 of rbs5){
			if(rb5.checked){
				if(rb5.value=="br tag"){
					mark++;
				}
				break;
			}
		}
		
		//answer 6
		const rbs6=document.querySelectorAll('input[name="answer6"]');
		for(const rb6 of rbs6){
			if(rb6.checked){
				if(rb6.value=="/"){
					mark++;
				}
				break;
			}
		}
		
		//answer 7
		const rbs7=document.querySelectorAll('input[name="answer7"]');
		for(const rb7 of rbs7){
			if(rb7.checked){
				if(rb7.value=="an empty tag."){
					mark++;
				}
				break;
			}
		}
		
		//answer 8
		const rbs8=document.querySelectorAll('input[name="answer8"]');
		for(const rb8 of rbs8){
			if(rb8.checked){
				if(rb8.value=="horizontal ruler"){
					mark++;
				}
				break;
			}
		}
		
		//answer 9
		const rbs9=document.querySelectorAll('input[name="answer9"]');
		for(const rb9 of rbs9){
			if(rb9.checked){
				if(rb9.value=="id"){
					mark++;
				}
				break;
			}
		}
		
		//answer 10
		const rbs10=document.querySelectorAll('input[name="answer10"]');
		for(const rb10 of rbs10){
			if(rb10.checked){
				if(rb10.value=="disc, circle, square"){
					mark++;
				}
				break;
			}
		}
		
		document.getElementById("finish").style.visibility="visible";
		console.log(mark);
		document.getElementById("result").innerHTML="Your Mark Is: "+mark;	
		//return mark;

		   clearInterval(inter);
		
		document.getElementById("buttons").style.visibility="hidden";
		document.getElementById("score").value=mark;
		if(mark>=5){
			
			document.getElementById("passOrFail").value="pass";
			document.getElementById("passFail").innerHTML="You have passed";
			if(mark==5){
				document.getElementById("grade").value="E";
				document.getElementById("studentGrade").innerHTML="Your grade is : E";
			}
			else if(mark==6){
				document.getElementById("grade").value="D";
				document.getElementById("studentGrade").innerHTML="Your grade is : D";
			}
			else if(mark==7){
				document.getElementById("grade").value="C";
				document.getElementById("studentGrade").innerHTML="Your grade is : C";
			}
			else if(mark==8){
				document.getElementById("grade").value="B";
				document.getElementById("studentGrade").innerHTML="Your grade is : B";
			}
			else if(mark==9){
				document.getElementById("grade").value="A";
				document.getElementById("studentGrade").innerHTML="Your grade is : A";
			}
			else if(mark==10){
				document.getElementById("grade").value="O";
				document.getElementById("studentGrade").innerHTML="Your grade is : O";
			}
		}
		else{
			document.getElementById("passOrFail").value="fail";
			document.getElementById("passFail").innerHTML="You have failed";
			document.getElementById("grade").value="RA";
			document.getElementById("studentGrade").innerHTML="Your grade is : RA";
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
var hour=15;
var inter=0;
function clcok(){
	document.getElementById("buttons").style.visibility="visible";
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
if(hour==7 && min==1){
document.getElementById("hour").style.color="red";
document.getElementById("min").style.color="red";
}
min--;
document.getElementById("hour").innerHTML=hour;
document.getElementById("min").innerHTML=min;
if(hour==0 && min==0)  {
    document.getElementById("hour").innerHTML="--";
    document.getElementById("min").innerHTML="--";
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

   //answer 1
		const rbs=document.querySelectorAll('input[name="answer1"]');
		for(const rb of rbs){
			if(rb.checked){
				//selectedvalue=rb.value;
				if(rb.value=="HyperText Markup Language"){
					mark++;
				}
				break;
			}
		}
		
		//answer 2
		const rbs2=document.querySelectorAll('input[name="answer2"]');
		for(const rb2 of rbs2){
			if(rb2.checked){
				if(rb2.value=="HTML, Head, Title, Body"){
					mark++;
				}
				break;
			}
		}
		
		//answer 3
		const rbs3=document.querySelectorAll('input[name="answer3"]');
		for(const rb3 of rbs3){
			if(rb3.checked){
				if(rb3.value=="b tag"){
					mark++;
				}
				break;
			}
		}
		
		//answer 4
		const rbs4=document.querySelectorAll('input[name="answer4"]');
		for(const rb4 of rbs4){
			if(rb4.checked){
				if(rb4.value=="h1 tag"){
					mark++;
				}
				break;
			}
		}
		
		//answer 5
		const rbs5=document.querySelectorAll('input[name="answer5"]');
		for(const rb5 of rbs5){
			if(rb5.checked){
				if(rb5.value=="br tag"){
					mark++;
				}
				break;
			}
		}
		
		//answer 6
		const rbs6=document.querySelectorAll('input[name="answer6"]');
		for(const rb6 of rbs6){
			if(rb6.checked){
				if(rb6.value=="/"){
					mark++;
				}
				break;
			}
		}
		
		//answer 7
		const rbs7=document.querySelectorAll('input[name="answer7"]');
		for(const rb7 of rbs7){
			if(rb7.checked){
				if(rb7.value=="an empty tag."){
					mark++;
				}
				break;
			}
		}
		
		//answer 8
		const rbs8=document.querySelectorAll('input[name="answer8"]');
		for(const rb8 of rbs8){
			if(rb8.checked){
				if(rb8.value=="horizontal ruler"){
					mark++;
				}
				break;
			}
		}
		
		//answer 9
		const rbs9=document.querySelectorAll('input[name="answer9"]');
		for(const rb9 of rbs9){
			if(rb9.checked){
				if(rb9.value=="id"){
					mark++;
				}
				break;
			}
		}
		
		//answer 10
		const rbs10=document.querySelectorAll('input[name="answer10"]');
		for(const rb10 of rbs10){
			if(rb10.checked){
				if(rb10.value=="disc, circle, square"){
					mark++;
				}
				break;
			}
		}
		
		document.getElementById("finish").style.visibility="visible";
		console.log(mark);
		document.getElementById("result").innerHTML="Your Mark Is: "+mark;	
		//return mark;

		   clearInterval(inter);
		
		document.getElementById("buttons").style.visibility="hidden";
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

}
</script>