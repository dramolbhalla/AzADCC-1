<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
<div id="content">
<img src="/Show/index.jpg" height="100" width="150" class="nacc"></img>
</div>
<input type="text" value="FOLLOW - UP VISIT PACKET"  style="background-color:Black; color:White; width:200px; font-weight :bold;"/> &nbsp; &nbsp; 
 <b>NACC UNIFORM DATA SET(UDS)</b>
<h3> Form C1:<font size = 5px>&nbsp;&nbsp;Neuropsychological Battery Summary Scores</font></h3>
<br>
<table class="smallheader">
<tr>
<td>ADC name : &nbsp;<input type="text" name="ID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue1" style="margin-left:150px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:100px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
</tr>
<tr>
<td><label for="textvalue3" style="margin-left:0px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
<td><label for="textvalue4" style="margin-left:150px;">Examiner's initials : </label><input type="text" name="EI" style="margin-left:0px; width:50px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">



<font size =3px><i>INSTRUCTIONS : This form must be completed by ADC or clinic staff .For test administration and scoring,see instructions for Neuropsychological Battery Form C1. </i></font>
<br>
<br>

<p class="Silver"> 
PROTOCOL FOR ADMINISTERING the neuropsychological battery UDS Version 3 FVP (using either FOrm C1 or Form C2): <b> For subjects who had already been seen for one or more UDS visits before the implemention of Version 3 , you may:</b> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a.) continue to follow those subjects with the old neuropsychological battery (Form C1);<br>
<b> -OR-</b><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b.) switch those subjects to the new neuropsychological battery (Form C2).<br>
A given subject may be switched to the new battery at any time after Version 3 implementation , at the Center's discretion.<br>
</p>
<p>
<b>KEY:</b> If the subject cannot complete any of the following exams, please use
the following codes for test scores (except for the Trail Making Test):<br>
<b>95 = Physical problem
97 = Other problem
96 = Cognitive/behavior problem 98 = Verbal refusal </b>
</p>
<p class="odd" style= "color :White;">
<b> 1. Mini-Mental State Examination</b> <br>
</p>
<p class="even">
1.  Was any part of the MMSE completed?
<input type="radio" name="MMSE" value="0" style="margin-left:80px;"/>0 No <font size=2px> (Enter reason code,95-98 ,and <b> SKIP to QUESTION 2a</b>):</font> <input type="text" name="MMSENO" style="margin-left:0px; width:50px;"/><br />
<input type="radio" name="MMSE" value="1" style="margin-left:352px;"/>1 Yes <b> <font size=2px>(CONTINUE TO QUESTION 1a) </font></b><br />
</p>
<p class="even">
1a.  Administration of the MMSE was?
<input type="radio" name="AMMSE" value="1" style="margin-left:100px;"/>1 In ADC/clinic <br />
<input type="radio" name="AMMSE" value="2" style="margin-left:352px;"/>2 In home <br />
<input type="radio" name="AMMSE" value="3" style="margin-left:352px;"/>3 In person -other <br />
</p>
<p class="even">
1a1.  Language of MMSE administration?
<input type="radio" name="LMMSE" value="1" style="margin-left:90px;"/>1 English <br />
<input type="radio" name="LMMSE" value="2" style="margin-left:352px;"/>2 Spanish <br />
<input type="radio" name="LMMSE" value="3" style="margin-left:352px;"/>3 Other (SPECIFY) : <input type="text" name="Language" style="margin-left:0px; width:50px;"/><br />
</p>
<p class="even">
1b. Subject was unable to complete one or more<br> sections due to visual impairment
<input type="radio" name="Visual" value="0" style="margin-left:135px;"/>0 No<br />
<input type="radio" name="Visual" value="1" style="margin-left:352px;"/>1 Yes <br />
</p>
<p class="even">
1c. Subject was unable to complete one or more<br> sections due to hearing impairment
<input type="radio" name="hearing" value="0" style="margin-left:125px;"/>0 No<br />
<input type="radio" name="hearing" value="1" style="margin-left:352px;"/>1 Yes <br />
</p>


<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> 
</p>
<p class="footer1"> <b>Page 1 of 4</b> </p>

</body>
</html>