<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinician Judgment of Symptoms</title>
<style>
body
{
margin-left : 200px;
margin-top : 50px;
font-family : Arial Black;
width: 950px;
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
<h3> Form B9:<font size = 5px>&nbsp;&nbsp;Clinician Judgment of Symptoms</font></h3>
<br>
<table class="smallheader">
<tr>
<td>ADC name : &nbsp;<input type="text" name="ID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue1" style="margin-left:150px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:100px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">



<font size =3px><i>INSTRUCTIONS : This form must be completed by a clinician .For additional clarification and examples , see UDS Coding Guidebook for Telephone Follow-up Visit Packet , Form B9. Check only <u> one</u> box per question.</i></font>
<br>
<br>
<form:form action="followupb92.do" method="POST" commandName="followupb92">

<p class="even">
5 . Indicate the predominant symptom which was first<br> recognized as a decline in the subject's cognition: 
<form:input type="radio" name="cogfpred" path="cogfpred" value="0" required ="required" style="margin-left:122px;" />0 &nbsp;Assessed at a previous UDS visit<br />
<form:input type="radio" name="cogfpred" path="cogfpred" value="1" required ="required" style="margin-left:441px;"/>1 &nbsp;Memory <br />
<form:input type="radio" name="cogfpred" path="cogfpred" value="2" required ="required" style="margin-left:441px;"/>2 &nbsp; Orientation<br />
<form:input type="radio" name="cogfpred" path="cogfpred" value="3" required ="required" style="margin-left:441px;"/>3 &nbsp; Executive function -Judgment,planning and problem-solving<br />
<form:input type="radio" name="cogfpred" path="cogfpred" value="4" required ="required" style="margin-left:441px;"/>4 &nbsp; Language<br />
<form:input type="radio" name="cogfpred" path="cogfpred" value="5" required ="required" style="margin-left:441px;"/>5 &nbsp; Visuospatial function<br />
<form:input type="radio" name="cogfpred" path="cogfpred" value="6" required ="required" style="margin-left:441px;"/>6 &nbsp; Attention/concentration<br />
<form:input type="radio" name="cogfpred" path="cogfpred" value="7" required ="required" style="margin-left:441px;"/>7 &nbsp; Fluctuating cognition<br />
<form:input type="radio" name="cogfpred" path="cogfpred" value="8" required ="required" style="margin-left:441px;"/>8 &nbsp; Other (SPECIFY)  <form:input type="text" name="cogfprex" path="cogfprex" style="margin-left:0px; width:130px;"/><br />
<form:input type="radio" name="cogfpred" path="cogfpred" value="99" required ="required" style="margin-left:441px;"/>99 &nbsp; Unknown<br />
</p>
<p class="even">
6 . Mode of onset of cognitive symptoms
<form:input type="radio" name="cogmode" path="cogmode" value="0" required ="required" style="margin-left:175px;" />0 &nbsp; Gradual <br />
<form:input type="radio" name="cogmode" path="cogmode" value="1" required ="required" style="margin-left:441px;"/>1 &nbsp;Subacute <br />
<form:input type="radio" name="cogmode" path="cogmode" value="2" required ="required" style="margin-left:441px;"/>8 &nbsp; Abrupt<br />
<form:input type="radio" name="cogmode" path="cogmode" value="3" required ="required" style="margin-left:441px;"/>8 &nbsp; Other (SPECIFY)  <form:input type="text" name="cogmodex" path="cogmodex" style="margin-left:0px; width:130px;"/><br />
<form:input type="radio" name="cogmode" path="cogmode" value="2" required ="required" style="margin-left:441px;"/>8 &nbsp; 99 &nbsp; Unknown<br>
</p>
<p class="even">
7. Based on the clinician's assessment , at what age did the cognitive decline begin? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" name="decage" path="decage" required ="required" style="margin-left:0px; width:30px;"/><br>
(777 = Age of onset provided at a previous UDS visit.)<br>
(The clinician must use his/her best judgment to estimate an age of onset of cognitive decline.)

</p>
<p class="Silver"> 
<b> Behavioral Symptoms</b> <br> </p>
<p class="even">
8. Based on the clinician's judgment, is the subject currently <br> experiencing any kind of Behavioral Symptoms ?
<form:input type="radio" name="decclbe" path="decclbe" required ="required" value="0" style="margin-left:181px;" />0 &nbsp; No  <b> If No,<font size=2px >SKIP TO QUESTION 13 </font></b> <br />
<form:input type="radio" name="decclbe" path="decclbe" required ="required" value="1" style="margin-left:514px;"/>1 &nbsp;Yes <br />
</p>
<p class="even">
9. Indicate whether the subject currently manifests the following behavioral
symptoms:</p>
<table class="CDR" border=1>
<tr>
<td width= "70%" ></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> No</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Yes</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Unknown </b></font></td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;9a. <b>Apathy/withdrawal
 </b>
Has the subject lost interest in or displayed a
reduced ability to initiate usual activitie
s and social interaction, such as
conversing with family
and/or friends? </td>
<td > <form:input type="radio" name="beapathy" path="beapathy" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="beapathy" path="beapathy" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="beapathy" path="beapathy" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;9b. <b>Depressed Mode </b>
Has the subject seemed depressed for more than two weeks
at a time; e.g., loss of interest or pl
easure in nearly all activities; sadness,
hopelessness, loss of appetite, fatigue? </td>
<td > <form:input type="radio" name="bedep" path="bedep" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="bedep" path="bedep" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="bedep" path="bedep" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;9c.<b> Psychosis</b> <br>
 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;9c1. Visual hallucinations </td>
<td > <form:input type="radio" name="bevhall" path="bevhall" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="bevhall" path="bevhall" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="bevhall" path="bevhall" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  9c1a. If yes, are the hallucinations well formed and detailed? </td>
<td > <form:input type="radio" name="bevwell" path="bevwell" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="bevwell" path="bevwell" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="bevwell" path="bevwell" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  9c1b. If well formed and clear-cut ,at what age did these visual hallucinations <br> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;begin?  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<form:input type="text" name="bevhago" path="bevhago" required ="required" style="margin-left:0px; width:30px;"/> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;(777 = Age of onset provided at a previous UDS visit.)<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;(The clinician must use his/her best judgment to estimate an age of onset.)
</td>
<td > </td>
<td > </td>
<td > </td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;9c2.Auditory hallucination <br> </td>
<td > <form:input type="radio" name="beahall" path="beahall" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="beahall" path="beahall" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="beahall" path="beahall" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;9c3. Abnormal/false/delusional belief <br> </td>
<td > <form:input type="radio" name="bedel" path="bedel" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="bedel" path="bedel" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="bedel" path="bedel" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;9d. <b>Disinhibition</b>
Does the subject use inappropriate coarse language or
exhibit inappropriate speech or behaviors in public or in the home? Does
s/he talk personally to strangers or
have disregard for personal hygiene?    </td>
<td > <form:input type="radio" name="bedisin" path="bedisin" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="bedisin" path="bedisin" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="bedisin" path="bedisin" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;9e. <b>Irritability</b>
Does the subject overreact, such as shouting at family
members or others??    </td>
<td > <form:input type="radio" name="beirrit" path="beirrit" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="beirrit" path="beirrit" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="beirrit" path="beirrit" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
</table>
<br>
<br>
<br>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Telephone Follow-up Visit</b></font> <font color = "Red">Form B9 : Clinical Judgment of Symptoms </font>
</p>
<p class="footer1"> <b>Page 2 of 5</b> </p>
<input type = "submit" name="action" value="Move to Page 2" style="margin-left:400px;" /> 
</form:form>
</body>
</html>