<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Neuropsychological Battery Scores</title>
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
p.Silver
{
border: CornflowerBlue 1px solid;
background-color : Silver;
font-weight : light;
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
</head>
<body>
<form:form action="initialc22.do" method="POST" commandName="initialc22">
<table class="smallheader">
<tr>
<td><label for="textvalue1" style="margin-left:10px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:180px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" name="DD"style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
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
<br>
<br>

<p class="even">
1p. Attention - Serial 7s 
<form:input type="text" name="mocaser7" path="mocaser7" size ="2" maxlength="2" required ="required" style="margin-left:450px; width:50px;"/>&nbsp;&nbsp; (0-3,95-98)
</p>
<p class="Silver">
1q. Language - Repetition
<form:input type="text" name="mocarepe" path="mocarepe" size ="2" maxlength="2" required ="required" style="margin-left:425px; width:50px;"/>&nbsp;&nbsp; (0-2,95-98)
</p>
<p class="even">
1r. Language - Fluency 
<form:input type="text" name="mocaflue" path="mocaflue" size ="2" maxlength="2" required ="required" style="margin-left:450px; width:50px;"/>&nbsp;&nbsp; (0-1,95-98)
</p>
<p class="Silver">
1s. Abstraction
<form:input type="text" name="mocaabst" path="mocaabst" size ="2" maxlength="2" required ="required" style="margin-left:495px; width:50px;"/>&nbsp;&nbsp; (0-2,95-98)
</p>
<p class="even">
1t. Delayed recall - No cue
<form:input type="text" name="mocarecn" path="mocarecn" size ="2" maxlength="2" required ="required" style="margin-left:425px; width:50px;"/>&nbsp;&nbsp; (0-5,95-98)
</p>
<p class="Silver">
1u. Delayed recall - Category cue
<form:input type="text" name="mocarecc" path="mocarecc" size ="2" maxlength="2" required ="required" style="margin-left:375px; width:50px;"/>&nbsp;&nbsp; (0-5,88 = Not applicable)
</p>
<p class="even">
1v. Delayed recall - Recognition
<form:input type="text" name="mocarecr" path="mocarecr" size ="2" maxlength="2" required ="required" style="margin-left:400px; width:50px;"/>&nbsp;&nbsp; (0-5,88 = Not applicable)
</p>
<p class="Silver">
1w. Orientation - Date
<form:input type="text" name="mocaordt" path="mocaordt" size ="2" maxlength="2" required ="required" style="margin-left:450px; width:50px;"/>&nbsp;&nbsp; (0-2,95-98)
</p>
<p class="even">
1x. Orientation - Month
<form:input type="text" name="mocaormo" path="mocaormo" size ="2" maxlength="2" required ="required" style="margin-left:450px; width:50px;"/>&nbsp;&nbsp; (0-1,95-98)
</p>
<p class="Silver">
1y. Orientation - Year
<form:input type="text" name="mocaoryr" path="mocaoryr" size ="2" maxlength="2" required ="required" style="margin-left:450px; width:50px;"/>&nbsp;&nbsp; (0-1,95-98)
</p>
<p class="even">
1z. Orientation - Day
<form:input type="text" name="mocaordy" path="mocaordy" size ="2" maxlength="2" required ="required" style="margin-left:470px; width:50px;"/>&nbsp;&nbsp; (0-1,95-98)
</p>
<p class="Silver">
1aa. Orientation - Place
<form:input type="text" name="mocaorpl" path="mocaorpl" size ="2" maxlength="2" required ="required" style="margin-left:440px; width:50px;"/>&nbsp;&nbsp; (0-1,95-98)
</p>
<p class="even">
1bb. Orientation - City
<form:input type="text" name="mocaorct" path="mocaorct" size ="2" maxlength="2" required ="required" style="margin-left:450px; width:50px;"/>&nbsp;&nbsp; (0-1,95-98)
</p>
<p class="odd" style= "color :White;">
<b> 2. ADMINISTRATION OF THE REMAINDER OF THE BATTERY</b> <br>
</p>
<p class="even">
2a. The tests following the MoCA were administered:
<form:input type="radio" name="npsycloc" path="npsycloc" value="1" style="margin-left:100px;"/>1 In ADC/clinic 
<form:input type="radio" name="npsycloc" path="npsycloc" value="2" style="margin-left:52px;"/>2 In home 
<form:input type="radio" name="npsycloc" path="npsycloc" value="3" style="margin-left:52px;"/>3 In person -other 
</p>
<p class="even">
2b.  Language of test administration:
<form:input type="radio" name="npsylan" path="npsylan" value="1" style="margin-left:50px;"/>1 English 
<form:input type="radio" name="npsylan" path="npsylan" value="2" style="margin-left:52px;"/>2 Spanish 
<form:input type="radio" name="npsylan" path="npsylan" value="3" style="margin-left:52px;"/>3 Other (SPECIFY) : <form:input type="text" name="npsylanx" path="npsylanx" size ="20" maxlength="20" style="margin-left:0px; width:150px;"/>
</p>
<p class="odd" style= "color :White;">
<b> 3. Craft Story 21 Recall (Immediate)</b> <br>
</p>
<p class="even">
3a. Total story units recalled,verbatim scoring<br>
(If test not completed,enter reason code,95-98, and <b> SKIP TO QUESTION 4a.)</b>)
<form:input type="text" name="craftvrs" path="craftvrs" size ="2" maxlength="2" required ="required" style="margin-left:100px; width:50px;"/>&nbsp;&nbsp; (0-44,95-98)
</p>
<p class="even">
3b. Total story units recalled,paraphrase scoring
<form:input type="text" name="crafturs" path="crafturs" size ="2" maxlength="2" required ="required" style="margin-left:310px; width:50px;"/>&nbsp;&nbsp; (0-25)
</p>
<p class="odd" style= "color :White;">
<b> 4. Benson Complex Figure Copy</b> <br>
</p>
<p class="even">
4a. Total story for copy of Benson figure (If test not completed,enter reason code,95-98)
<form:input type="text" name="udsbentc" path="udsbentc" size ="2" maxlength="2" required ="required" style="margin-left:50px; width:50px;"/>&nbsp;&nbsp; (0-17,95-98)
</p>
<p class="odd" style= "color :White;">
<b> 5. Number Span Test : Forward</b> <br>
</p>
<p class="even">
5a. Number of correct trials<br>
(If test not completed,enter reason code,95-98, and <b> SKIP TO QUESTION 6a.)</b>)
<form:input type="text" name="digforct" path="digforct" size ="2" maxlength="2" required ="required" style="margin-left:100px; width:50px;"/>&nbsp;&nbsp; (0-14,95-98)
</p>
<p class="even">
5b. Longest span forward
<form:input type="text" name="digforsl" path="digforsl" size ="2" maxlength="2" required ="required" style="margin-left:450px; width:50px;"/>&nbsp;&nbsp; (0-3-9)
</p>
<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> <font color ="Red"> Form C2 : Neuropsychological Battery  Scores</font>
</p>
<p class="footer1"> <b>Page 2 of 4</b> </p>
<input type = "submit" name="action" value="Move to Page 3" style="margin-left:400px;" /> 
</form:form>
</body>
</html>