<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Behavioral Assessment</title>
<style>
body
{
margin-left : 200px;
margin-top : 50px;
font-family : Arial Black;
width: 900px;
}
h4
{
background-color : Black;
line-height : 1.5em;
}
img 
{
margin-left : 900px;
}
p.odd 
{
border: CornflowerBlue 1px solid;
background-color : Silver;
font-weight :light;
padding: 20px;
margin :0;
}
p.footer
{
text-align : left;
}
table.smallheader
{
font size :3px;
font-weight :bold;
}
p.footer1
{
text-align : right;
}
p label
{
    display: inline-block;
    width: 400px; 
}
p.even
{
border: CornflowerBlue 1px solid;
font-weight :light;
padding: 20px;
margin: 0;
}
p.lense
{
border: CornflowerBlue 1px solid;
font-weight :bold;
padding: 20px;
margin: 0;
}

p.lense label
{
display: inline-block;
width: 600px; 
}
p input
{
margin-left : 405px;
}
#content {
    position: relative;
}
.nacc {
    position: absolute;
    top: 0px;
    right: 0px;
}
</style>
<script type="text/javascript">
function disable(a)
{
	var rates = document.getElementsByName(a);
	var result;
	var count =0;
	
	for(var i = 0; i < rates.length; i++){
		 if(rates[i].checked){
		    	result = rates[i].value;
		    }
		 else
			 {
			 count++;
			 }
	}
	if(count ==3)
		return count;
}
function validate()
{ 
	
	var nogds = document.getElementsByName('nogds');
	if(!nogds[0].checked){
		
		var satis = disable("satis");
		var dropact = disable("dropact");
		var empty = disable("empty");
		var bored = disable("bored");
		var spirits = disable("spirits");
		var afraid = disable("afraid");
		var happy = disable("happy");
		var helpless = disable("helpless");
		var stayhome = disable("stayhome");
		var memprob = disable("memprob");
		var wondrful = disable("wondrful");
		var wrthless = disable("wrthless");
		var energy = disable("energy");
		var hopeless = disable("hopeless");
		var better = disable("better");   
	    }
	if(satis ==3 || dropact ==3 ||empty ==3 ||bored ==3 ||spirits ==3 ||afraid ==3 ||happy ==3 ||helpless ==3 ||stayhome ==3 ||memprob ==3 ||wondrful ==3 ||wrthless ==3 ||
			energy ==3 ||hopeless ==3 ||better ==3)
		{
		window.alert("Please select an option for all questions");
		return false;
		}
	
}
</script>
</head>
<body>
<div id="content">
<img src="/Show/index.jpg" height="100" width="150" class="nacc"></img>
</div>
<input type="text" value="FOLLOW - UP VISIT PACKET"  style="background-color:Black; color:White; width:200px; font-weight :bold;"/> &nbsp; &nbsp; 
 <b>NACC UNIFORM DATA SET(UDS)</b>
<h3> Form B6:<font size = 3px color ="GREY"> &nbsp;BEHAVIORAL ASSESSMENT</font> <font size = 5px>&nbsp;&nbsp;-Geriatric Depression Scale (GDS)<sup> 1 </sup></font></h3>
<br>
<table class="smallheader">
<tr>
<td>ADC name : &nbsp;<input type="text" name="ID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue1" style="margin-left:150px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" size ="10" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:100px;">Form date : </label><input type="text" name="MM" size ="2" maxlength="2" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" size ="2" maxlength="2" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" size ="4" maxlength="4" style="margin-left:0px; width:50px;"/>
</tr>
<tr>
<td><label for="textvalue3" style="margin-left:0px;">Visit # : </label><input type="text" size ="3" maxlength="3" name="Visit" style="margin-left:0px; width:30px;"/></td>
<td><label for="textvalue4" style="margin-left:150px;">Examiner's initials : </label><input type="text" size ="3" maxlength="3" name="EI" style="margin-left:0px; width:50px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">

<font size =3px><i>This form is to be completed by the clinician or other trained health professional,
based on subject response. For additional clarification and examples, see UDS Coding Guidebook for Initial Visit Packet, Form B6. Circle only
<u>one </u> answer per question.</i></font>
<br><br>
<br>
<form:form action="followupb6.do" method="POST" commandName="followupb6" onsubmit="return validate();">
<p class="odd" >
<form:input type="checkbox" name="complete" value="incomplete" path="nogds" style="margin-left:0px; 	text-align: justify;
    text-justify: inter-word;"/>&nbsp;&nbsp;Check this box and enter "88" below for the Total GDS Score <b>if and only if </b> the subject: 1) does not
attempt the GDS, or 2) answers fewer than twelve questions.
</p>
<p class="even" >
<b>Instruct the subject: </b>"In the next part of this interview, I will ask you questions about your feelings. Some of the
questions I will ask you may not apply, and some may make you feel uncomfortable. For each question, please
answer "yes" or "no", depending on how you have been feeling in <b>the past week, including today."</b>
</p>

<br>
<br>
<br>
 <table border = "1" cellpadding="3" cellspacing="0" width="100%">
 <tr >
 	<th height="40" style="width:70%;"></th>
    <th style="width:10%;" bgcolor="SlateBlue">Yes</th>
    <th style="width:10%;" bgcolor="SlateBlue">No</th>
    <th style="width:10%;" bgcolor="SlateBlue">Did not answer</th>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;1. Are you basically satisfied with your life?</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="satisfied" path="satis" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="satisfied" path="satis" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="satisfied" path="satis" value="9" />&nbsp;9</td>
  </tr>
  <tr bgcolor="Silver">
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;2 .Have you dropped many of your activities and interests?</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="interest" path="dropact" value="0" />&nbsp;0</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="interest" path="dropact" value="1" />&nbsp;1</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="interest" path="dropact" value="9" />&nbsp;9</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;3 .Do you feel that your life is empty? </td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="empty" path="empty" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="empty" path="empty" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="empty" path="empty" value="9" />&nbsp;9</td>
  </tr>
  <tr bgcolor="Silver">
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;4 .Do you often get bored?</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="bored" path="bored" value="0" />&nbsp;0</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="bored" path="bored" value="1" />&nbsp;1</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="bored" path="bored" value="9" />&nbsp;9</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;5 .Are you in good spirits most of the time? </td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="spirits" path="spirits" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="spirits" path="spirits" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="spirits" path="spirits" value="9" />&nbsp;9</td>
  </tr>
  <tr bgcolor="Silver">
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;6 .Are you afraid that something bad is going to happen to you?</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="afraid" path="afraid" value="0" />&nbsp;0</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="afraid" path="afraid" value="1" />&nbsp;1</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="afraid" path="afraid" value="9" />&nbsp;9</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;7 .Do you feel happy most of the time? </td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="happy" path="happy" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="happy" path="happy" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="happy" path="happy" value="9" />&nbsp;9</td>
  </tr>
  <tr bgcolor="Silver">
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;8 .Do you often feel helpless? </td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="helpless" path="helpless" value="0" />&nbsp;0</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="helpless" path="helpless" value="1" />&nbsp;1</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="helpless" path="helpless" value="9" />&nbsp;9</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;9 .Do you prefer to stay at home, rather than going out and doing new things? </td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="home" path="stayhome" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="home" path="stayhome" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="home" path="stayhome" value="9" />&nbsp;9</td>
  </tr>
  <tr bgcolor="Silver">
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;10 .Do you feel you have more problems with memory than most?</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="prob" path="memprob" value="0" />&nbsp;0</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="prob" path="memprob" value="1" />&nbsp;1</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="prob" path="memprob" value="9" />&nbsp;9</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;11 .Do you think it is wonderful to be alive now? </td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="alive" path="wondrful"  value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="alive" path="wondrful"  value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="alive" path="wondrful"  value="9" />&nbsp;9</td>
  </tr>
  <tr bgcolor="Silver">
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;12 .Do you feel pretty worthless the way you are now? </td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="worthless" path="wrthless" value="0" />&nbsp;0</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="worthless" path="wrthless" value="1" />&nbsp;1</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="worthless" path="wrthless" value="9" />&nbsp;9</td>
  </tr>
  <tr>
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;13 .Do you feel full of energy?  </td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="energy" path="energy" value="0" />&nbsp;0</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="energy" path="energy" value="1" />&nbsp;1</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="energy" path="energy" value="9" />&nbsp;9</td>
  </tr>
  <tr bgcolor="Silver" height="20">
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;14 .Do you feel that your situation is hopeless?  </td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="hopeless" path="hopeless" value="0" />&nbsp;0</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="hopeless" path="hopeless" value="1" />&nbsp;1</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="hopeless" path="hopeless" value="9" />&nbsp;9</td>
  </tr>
  <tr>
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;15 .Do you think that most people are better off than you are?</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="better" path="better" value="0" />&nbsp;0</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="better" path="better" value="1" />&nbsp;1</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="better" path="better" value="9" />&nbsp;9</td>
  </tr>
</table>

<br>
<br>
<p class ="odd">
16. <b>Sum all circled answers for a Total GDS Score </b> <font size =2px>(max score = 15 ; did not complete = 88)</font>
<form:input type="text" name="DD" path="gds" size ="2" maxlength="2" style="margin-left:80px; width:30px;"/>
</p>
<p >
<sup>1</sup>Sheikh JI, Yesavage JA. Geriatric Depression Scale (GDS): Recent evidence and development of a shorter version. Clinical
Gerontology: A Guide to Assessment and Intervention 165-173, NY: The Haworth Press, 1986. Reproduced by permission of
the publisher. 
</p>


<p class="footer">
National Alzheimer's Coordinating Center  | (206) 543 -8637  | fax :(206) 616-5927  |  naccmail@uw.edu  |  www.alz.washington.edu<br>
<b>UDS Version 3.0 ,March 2015</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Page 1 of 1  
</b></p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form:form>
</body>
</html>