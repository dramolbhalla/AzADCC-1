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

<table class="smallheader">
<tr>
<td><label for="textvalue1" style="margin-left:10px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:180px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
<td><label for="textvalue3" style="margin-left:250px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">
<form:form action="followupc23.do" method="POST" commandName="followupc23">
<b>KEY : 
95/995 = Physical problem
96/996 = Cognitive/behavior problem
97/997 = Other problem
98/998 = Verbal refusal 
</b>
<br>
<br>
<p class="odd" style= "color :White;">
<b> 6. Number Span Test : Backward</b> <br>
</p>
<p class="even">
6a. Number of correct trials<br>
(If test not completed,enter reason code,95-98, and <b> SKIP TO QUESTION 7a.)</b>)
<form:input type="text" name="digbacct" path="digbacct" size ="2" maxlength="2" required ="required" style="margin-left:110px; width:50px;"/>&nbsp;&nbsp; (0-14,95-98)
</p>
<p class="even">
6b. Longest span backward
<form:input type="text" name="digbacls" path="digbacls" size ="2" maxlength="2" required ="required" style="margin-left:450px; width:50px;"/>&nbsp;&nbsp; (0-3-9)
</p>
<p class="odd" style= "color :White;">
<b> 7. Category Fluency </b> <br>
</p>
<p class="even">
7a. Animals: Total number of animals named in 60 seconds<br>
(If test not completed,enter reason code,95-98)
<form:input type="text" name="animals" path="animals" size ="2" maxlength="2" required ="required" style="margin-left:330px; width:50px;"/>&nbsp;&nbsp; (0-77,95-98)
</p>
<p class="even">
7b. Vegetables :Total number of vegetables named in 60 seconds<br>
(If test not completed,enter reason code,95-98)
<form:input type="text" name="veg" path="veg" size ="2" maxlength="2" required ="required" style="margin-left:330px; width:50px;"/>&nbsp;&nbsp; (0-77-95-98)
</p>
<p class="odd" style= "color :White;">
<b> 8. Trial Making Test </b> <br>
</p>
<p class="Silver">
8a. PART A: Total number of seconds to complete (if not finished by 150 seconds, enter 150)<br>
(If test not completed,enter reason code,995-998 , and <b> SKIP TO QUESTION 8b.)</b>)
<form:input type="text" name="traila" path="traila" size ="3" maxlength="3" required ="required" style="margin-left:100px; width:50px;"/>&nbsp;&nbsp; (0-150,995-998)
</p>
<p class="even">
8a1. Number of commission errors
<form:input type="text" name="trailarr" path="trailarr" size ="2" maxlength="2" required ="required" style="margin-left:440px; width:50px;"/>&nbsp;&nbsp; (0-40)
</p>
<p class="even">
8a2. Number of correct lines
<form:input type="text" name="trailali" path="trailali" size ="2" maxlength="2" required ="required" style="margin-left:475px; width:50px;"/>&nbsp;&nbsp; (0-24)
</p>
<p class="Silver">
8b. PART B: Total number of seconds to complete (if not finished by 300 seconds, enter 300)<br>
(If test not completed,enter reason code,995-998 , and <b> SKIP TO QUESTION 9a.)</b>)
<form:input type="text" name="trailb" path="trailb" size ="3" maxlength="3" required ="required" style="margin-left:110px; width:50px;"/>&nbsp;&nbsp; (0-300,995-998)
</p>
<p class="even">
8b1. Number of commission errors
<form:input type="text" name="trailbrr" path="trailbrr" size ="2" maxlength="2" required ="required" style="margin-left:440px; width:50px;"/>&nbsp;&nbsp; (0-40)
</p>
<p class="even">
8b2. Number of correct lines
<form:input type="text" name="trailbli" path="trailbli" size ="2" maxlength="2" required ="required" style="margin-left:475px; width:50px;"/>&nbsp;&nbsp; (0-24)
</p>
<p class="odd" style= "color :White;">
<b> 9. Craft Story 21 Recall (Delayed) </b> <br>
</p>
<p class="even">
9a. total score units recalled,verbatim scoring<br>
(If test not completed,enter reason code,95-98 , and <b> SKIP TO QUESTION 10a.)</b>)
<form:input type="text" name="craftdvr" path="craftdvr" size ="2" maxlength="2" required ="required" style="margin-left:130px; width:50px;"/>&nbsp;&nbsp; (0-44,95-98)
</p>
<p class="even">
9b. Total story units recalled.paraphrase scoring
<form:input type="text" name="craftdre" path="craftdre" size ="2" maxlength="2" required ="required" style="margin-left:350px; width:50px;"/>&nbsp;&nbsp; (0-25)
</p>
<p class="even">
9c. Delay time (minutes) (99 = Unknown)
<form:input type="text" name="craftdti" path="craftdti" size ="2" maxlength="2" required ="required" style="margin-left:390px; width:50px;"/>&nbsp;&nbsp; (0-85 minutes)
</p>
<p class="even">
9d. Cue ("boy") needed
<form:input type="radio" name="craftcue" path="craftcue" required ="required" value="0" style="margin-left:500px;"/>0 No
<form:input type="radio" name="craftcue" path="craftcue" required ="required" value="1" style="margin-left:52px;"/>1 Yes
</p>
<p class="odd" style= "color :White;">
<b> 10. Benson Complex Figure Recall </b> <br>
</p>
<p class="even">
10a. total score for drawing benson figure following 10- to 15 -minute delay<br>
(If test not completed,enter reason code,95-98 , and <b> SKIP TO QUESTION 11a.)</b>)
<form:input type="text" name="udsbentd" path="udsbentd" size ="2" maxlength="2" required ="required" style="margin-left:130px; width:50px;"/>&nbsp;&nbsp; (0-17,95-98)
</p>
<p class="even">
10b. Recognized original stimulus from among four options?
<form:input type="radio" name="udsbenrs" path="udsbenrs" required ="required" value="0" style="margin-left:265px;"/>0 No
<form:input type="radio" name="udsbenrs" path="udsbenrs" required ="required" value="1" style="margin-left:52px;"/>1 Yes
</p>


<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> <font color ="Red"> Form C2 : Neuropsychological Battery  Scores</font>
</p>
<p class="footer1"> <b>Page 3 of 4</b> </p>
<input type = "submit" name="action" value="Move to Page 4" style="margin-left:400px;" /> 
</form:form>
</body>
</html>