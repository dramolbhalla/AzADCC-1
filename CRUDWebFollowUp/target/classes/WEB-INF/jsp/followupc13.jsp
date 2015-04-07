<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Neuropsychological Battery Summary Scores</title>
<style>
body
{
margin-left : 200px;
margin-top : 50px;
font-family : Arial Black;
width: 70%;
min-width: 800px;
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
background-color : #08088A;
font-weight :bold;
padding: 0px;
margin :0;
}
p.footer
{
text-align : left;
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
p.Silver
{
border: CornflowerBlue 1px solid;
background-color : Silver;
font-weight :bold;
padding: 20px;
margin: 0;
}
table.CDR
{
width :"100% ";
border: 1px solid CornflowerBlue;
}
table.smallheader
{
font size :3px;
font-weight :bold;
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
</style>
</head>
<body>
<input type="text" value="FOLLOW - UP VISIT PACKET"  style="background-color:Black; color:White; width:200px; font-weight :bold;"/> &nbsp; &nbsp; 
 <b>NACC UNIFORM DATA SET(UDS)</b>
<h3> Form C1:<font size = 5px>&nbsp;&nbsp;Neuropsychological Battery Summary Scores</font></h3>
<br>
<table class="smallheader">
<tr>
<td><label for="textvalue1" style="margin-left:10px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:180px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
<td><label for="textvalue3" style="margin-left:250px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">

<b>KEY : 
95/995 = Physical problem
96/996 = Cognitive/behavior problem
97/997 = Other problem
98/998 = Verbal refusal 
</b>
<p class="odd" style= "color :White;">
<b> 8. Trial Making Test</b> <br>
</p>
<form:form action="followupc13.do" method="POST" commandName="followupc13">
<p class="even">
8 a. PART A: Total number of seconds to complete <font size=2px> (If not finished by 150 seconds,enter 150):</font><br>
<font size=2px> (If test not completed , enter reason code, 995-998 , and <b> SKIP TO QUESTION 8b</b>)</font> <form:input type="text" name="traila" path="traila" size ="3" maxlength="3" required ="required" style="margin-left:280px; width:40px;"/><font size=3px> (0-150,995-998)</font>
</p>
<p class="even">
8 a1. Number of commission errors
<form:input type="text" name="trailarr" path="trailarr" size ="2" maxlength="2" required ="required" style="margin-left:490px; width:40px;"/>(0-40)
</p>
<p class="even">
8 a2. Number of correct lines:
 <form:input type="text" name="trailali" path="trailali" size ="2" maxlength="2" required ="required" style="margin-left:530px; width:40px;"/>(0-24)
</p>
<p class="even">
8 b. PART B: Total number of seconds to complete <font size=2px> (If not finished by 300 seconds,enter 300):</font><br>
<font size=2px> (If test not completed , enter reason code, 995-998 , and <b> SKIP TO QUESTION 9a</b>)</font> <form:input type="text" name="trailb" path="trailb" size ="3" maxlength="3" required ="required" style="margin-left:280px; width:40px;"/><font size=3px> (0-300,995-998)</font>
</p>
<p class="even">
8 b1. Number of commission errors
<form:input type="text" name="trailbrr" path="trailbrr" size ="2" maxlength="2" required ="required" style="margin-left:490px; width:40px;"/>(0-40)
</p>
<p class="even">
8 b2. Number of correct lines:
 <form:input type="text" name="trailbli" path="trailbli" size ="2" maxlength="2" required ="required" style="margin-left:520px; width:40px;"/>(0-24)
</p>
<p class="odd" style= "color :White;">
<b> 9. Logical Memory IIA-Delayed</b> <br>
</p>
<p class="even">
9 a. Total number of story units recalled:<br>
<font size=2px> (If test not completed , enter reason code, 95-98 , and <b> SKIP TO QUESTION 10a</b>)</font> <form:input type="text" name="memunits" path="memunits" size ="2" maxlength="2" required ="required" style="margin-left:280px; width:40px;"/><font size=3px> (0-25,95-98)</font>
</p>
<p class="even">
9 b. Time elapsed since Logical Memory IA - Immediate
<form:input type="text" name="memtime" path="memtime" size ="2" maxlength="2" required ="required" style="margin-left:350px; width:40px;"/><font size=3px> (0-85 minutes)(99=unknown)</font>
</p>



<p class="odd" style= "color :White;">
<b> 10. Benson Complex Figure Recall</b> <br>
</p>
<p class="even">
10 a. Total score of 10- to 15 minute delayed drawing of Benson figure:<br>
<font size=2px> (If test not completed , enter reason code, 95-98 , and <b> SKIP TO QUESTION 11a</b>)</font> <form:input type="text" name="udsbentd" path="udsbentd" size ="2" maxlength="2" required ="required" style="margin-left:280px; width:40px;"/><font size=3px> (0-17,95-98)</font>
</p>
<p class="even">
10b. Recognized original stimulus from among four options? 
<form:input type="radio" name="udsbenrs" path="udsbenrs" required ="required" value="1" style="margin-left:320px;"/>0 No 
<form:input type="radio" name="udsbenrs" path="udsbenrs" required ="required" value="2" style="margin-left:22px;"/>1 Yes <br />
</p>
<p class="odd" style= "color :White;">
<b> 11. Boston Naming Test (30 odd-numbered items)</b> <br>
</p>
<p class="even">
11 a.Total score: <form:input type="text" name="boston" path="boston" size ="2" maxlength="2" required ="required" style="margin-left:600px; width:40px;"/><font size=3px> (0-30,95-98)</font>
</p>

<p class="odd" style= "color :White;">
<b> 12. Verbal Fluency : Phonemic Test</b> <br>
</p>
<p class="even">
12a. Number of correct <b> F-words</b>generated in 1 minute <br>
<font size=2px> (If test not completed , enter reason code, 95-98 , and <b> SKIP TO QUESTION 12d</b>)</font> <form:input type="text" name="udsverfc" path="udsverfc" size ="2" maxlength="2" required ="required" style="margin-left:275px; width:40px;"/><font size=3px> (0-40,95-98)</font>
</p>
<p class="even">
12b. Number of <b> F-words</b> repeated in 1 minute<form:input type="text" name="udsverfn" path="udsverfn" size ="2" maxlength="2" required ="required" style="margin-left:415px; width:40px;"/> <font size=3px> (0-15)</font>
</p>
<p class="even">
12c. Number of <b>non- F-words</b> and rule violation errors in 1 minute<form:input type="text" name="udsvernf" path="udsvernf" size ="2" maxlength="2" required ="required" style="margin-left:280px; width:40px;"/> <font size=3px> (0-15)</font>
</p>
<p class="even">
12d. Number of correct <b> L-words</b>generated in 1 minute <br>
<font size=2px> (If test not completed , enter reason code, 95-98 , and <b> SKIP TO QUESTION 13a</b>)</font> <form:input type="text" name="udsverlc" path="udsverlc" size ="2" maxlength="2" required ="required" style="margin-left:275px; width:40px;"/><font size=3px> (0-40,95-98)</font>
</p>
<p class="even">
12e. Number of <b> L-words</b> repeated in 1 minute<form:input type="text" name="udsverlr" path="udsverlr" size ="2" maxlength="2" required ="required" style="margin-left:415px; width:40px;"/> <font size=3px> (0-15)</font>
</p>
<p class="even">
12f. Number of <b>non- F-words</b> and rule violation errors in 1 minute<form:input type="text" name="udsverln" path="udsverln" size ="2" maxlength="2" required ="required" style="margin-left:280px; width:40px;"/> <font size=3px> (0-15)</font>
</p>
<p class="even">
12g. TOTAL Number of correct<b>F-words and L-words</b><form:input type="text" name="udsvertn" path="udsvertn" size ="2" maxlength="2" required ="required" style="margin-left:360px; width:40px;"/> <font size=3px> (0-80)</font>
</p>
<p class="even">
12h. TOTAL Number of <b>F-words and L-words</b> repetition errors<form:input type="text" name="udsverte" path="udsverte" size ="2" maxlength="2" required ="required" style="margin-left:300px; width:40px;"/> <font size=3px> (0-30)</font>
</p>
<p class="even">
12i. TOTAL Number of <b>non-F/L words</b> and rule violation errors<form:input type="text" name="udsverti" path="udsverti" size ="2" maxlength="2" required ="required" style="margin-left:300px; width:40px;"/> <font size=3px> (0-30)</font>
</p>


<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> <font color ="Red"> Form C1 : Neuropsychological Battery Summary Scores</font>
</p>
<p class="footer1"> <b>Page 3 of 4</b> </p>
<input type = "submit" name="action" value="Move to Page 4" style="margin-left:400px;" /> 
</form:form>
</body>
</html>