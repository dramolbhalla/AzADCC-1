<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Neuropsychological Battery  Scores</title>
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
<h3> Form C2:<font size = 5px>&nbsp;&nbsp;Neuropsychological Battery Scores</font></h3>
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

<font size =3px><i>INSTRUCTIONS : This form must be completed by ADC or clinic staff .For test administration and scoring,see instructions for Neuropsychological Battery Form C2. Any new subjects who enroll in the UDS after the implementation of UDS3 must be assessed with the new neuropsychological test battery (Form C2) </i></font>
<br>
<br>

<b>KEY:</b> If the subject cannot complete any of the following exams, please give
the reason by entering one of the following codes:<br>
<b>95/995 = Physical problem &nbsp;&nbsp;&nbsp;
96/996 = Cognitive/behavior problem &nbsp;&nbsp;
97/997 = Other problem &nbsp;&nbsp;
98/998 = Verbal refusal &nbsp;&nbsp;</b>
<br>
<br>
<form:form action="followupc2.do" method="POST" commandName="followupc2">
<p class="odd" style= "color :White;">
<b> 1. Montreal Cognitive Assessment (MoCA)</b> <br>
</p>
<p class="even">
1a.  Was any part of the MoCA administered? <br>
<form:input type="radio" name="mocacomp" path="mocacomp" value="0" style="margin-left:80px;"/>0 No <font size=2px> (If No, Enter reason code,95-98): &nbsp;&nbsp;</font> <form:input type="text" name="mocareas"  path="mocareas" size ="2" maxlength="2" required ="required" style="margin-left:0px; width:50px;"/> &nbsp;&nbsp;&nbsp;&nbsp;<b>SKIP to QUESTION 2a</b>):<br />
<form:input type="radio" name="mocacomp" path="mocacomp" value="1" style="margin-left:80px;"/>1 Yes <b> <font size=2px>(CONTINUE TO QUESTION 1b) </font></b><br />
</p>
<p class="even">
1b.  MoCA was administered:
<form:input type="radio" name="mocaloc" path="mocaloc" value="1" style="margin-left:100px;"/>1 In ADC/clinic 
<form:input type="radio" name="mocaloc" path="mocaloc" value="2" style="margin-left:52px;"/>2 In home 
<form:input type="radio" name="mocaloc" path="mocaloc" value="3" style="margin-left:52px;"/>3 In person -other 
</p>
<p class="even">
1c.  Language of MoCA administration:
<form:input type="radio" name="mocalan" path="mocalan" value="1" style="margin-left:50px;"/>1 English 
<form:input type="radio" name="mocalan" path="mocalan" value="2" style="margin-left:52px;"/>2 Spanish 
<form:input type="radio" name="mocalan" path="mocalan" value="3" style="margin-left:52px;"/>3 Other (SPECIFY) : <form:input type="text" name="mocalanx" path="mocalanx" size ="20" maxlength="20" style="margin-left:0px; width:150px;"/>
</p>
<p class="even">
1d. Subject was unable to complete one or more sections due to visual impairment:
<form:input type="radio" name="mocavis" path="mocavis" value="0" style="margin-left:135px;"/>0 No
<form:input type="radio" name="mocavis" path="mocavis" value="1" style="margin-left:52px;"/>1 Yes 
</p>
<p class="even">
1e. Subject was unable to complete one or more sections due to hearing impairment:
<form:input type="radio" name="mocahear" path="mocahear" value="0" style="margin-left:125px;"/>0 No
<form:input type="radio" name="mocahear" path="mocahear" value="1" style="margin-left:52px;"/>1 Yes
</p>
<p class="even">
1f. TOTAL RAW SCORE - UNCORRECTED (Not corrected for education or visual<br>/hearing impairment) <br>
Enter 88 if any of the following MoCA items were not administered :<br>
1g - 1l,1n -1t ,1w -1bb
<form:input type="text" name="mocatots" path="mocatots" size ="2" maxlength="2" required ="required" style="margin-left:530px; width:50px;"/>&nbsp;&nbsp; (0-30,88)
</p>
<p class="Silver">
1g. Visuospatial/executive - Trails 
<form:input type="text" name="mocatrai" path="mocatrai" size ="2" maxlength="2" required ="required" style="margin-left:450px; width:50px;"/>&nbsp;&nbsp; (0-1,95-98)
</p>
<p class="even">
1h. Visuospatial/executive - Cube
<form:input type="text" name="mocacube" path="mocacube" size ="2" maxlength="2" required ="required" style="margin-left:460px; width:50px;"/>&nbsp;&nbsp; (0-1,95-98)
</p>
<p class="Silver">
1i. Visuospatial/executive - Clock contour 
<form:input type="text" name="mocacloc" path="mocacloc" size ="2" maxlength="2" required ="required" style="margin-left:395px; width:50px;"/>&nbsp;&nbsp; (0-1,95-98)
</p>
<p class="even">
1j. Visuospatial/executive - Clock numbers
<form:input type="text" name="mocaclon" path="mocaclon" size ="2" maxlength="2" required ="required" style="margin-left:405px; width:50px;"/>&nbsp;&nbsp; (0-1,95-98)
</p>
<p class="Silver">
1k. Visuospatial/executive - Clock hands
<form:input type="text" name="mocacloh" path="mocacloh" size ="2" maxlength="2" required ="required" style="margin-left:405px; width:50px;"/>&nbsp;&nbsp; (0-1,95-98)
</p>
<p class="even">
1l. Language - Naming
<form:input type="text" name="mocanami" path="mocanami" size ="2" maxlength="2" required ="required" style="margin-left:525px; width:50px;"/>&nbsp;&nbsp; (0-3,95-98)
</p>
<p class="Silver">
1m. Memory - registration (two trials)
<form:input type="text" name="mocaregi" path="mocaregi" size ="2" maxlength="2" required ="required" style="margin-left:410px; width:50px;"/>&nbsp;&nbsp; (0-10,95-98)
</p>
<p class="even">
1n. Attention - Digits
<form:input type="text" name="mocadigi" path="mocadigi" size ="2" maxlength="2" required ="required" style="margin-left:540px; width:50px;"/>&nbsp;&nbsp; (0-2,95-98)
</p>
<p class="Silver">
1o. Attention - Letter A
<form:input type="text" name="mocalett" path="mocalett" size ="2" maxlength="2" required ="required" style="margin-left:510px; width:50px;"/>&nbsp;&nbsp; (0-1,95-98)
</p>


<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> 
</p>
<p class="footer1"> <b>Page 1 of 4</b> </p>
<input type = "submit" name="action" value="Move to Page 2" style="margin-left:400px;" /> 
</form:form>
</body>
</html>