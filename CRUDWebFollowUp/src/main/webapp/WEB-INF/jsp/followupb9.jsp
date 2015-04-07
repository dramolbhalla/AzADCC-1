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
<td><label for="textvalue1" style="margin-left:150px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" size ="10" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:100px;">Form date : </label><input type="text" name="MM" size ="2" maxlength="2" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" size ="2" maxlength="2" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" size ="4" maxlength="4" style="margin-left:0px; width:50px;"/>
</tr>
<tr>
<td><label for="textvalue3" style="margin-left:0px;">Visit # : </label><input type="text" size ="3" maxlength="3" name="Visit" style="margin-left:0px; width:30px;"/></td>
<td><label for="textvalue4" style="margin-left:150px;">Examiner's initials : </label><input type="text" size ="3" maxlength="3" name="EI" style="margin-left:0px; width:50px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">



<font size =3px><i>INSTRUCTIONS : This form must be completed by a clinician .For additional clarification and examples , see UDS Coding Guidebook for Telephone Follow-up Visit Packet , Form B9. Check only <u> one</u> box per question.</i></font>
<br>
<br>
<form:form action="followupb9.do" method="POST" commandName="followupb9">
<p class="Silver"> 
<b> Declines in memory reported by subject and co-participant</b> <br> </p>
<p class="even">
1 . Does the subject report a decline in memory ( relative to prevously <br>attained abilities?)
<form:input type="radio" name="decsub" path="decsub" required ="required" value="0" style="margin-left:400px;" />0 &nbsp; No  <b> <font size=2px >(END FORM HERE) </font></b> <br />
<form:input type="radio" name="decsub" path="decsub" required ="required" value="1" style="margin-left:522px;"/>1 &nbsp;Yes <br />
<form:input type="radio" name="decsub" path="decsub" required ="required" value="2" style="margin-left:522px;"/>8 &nbsp; Could not be assessed/subject is too impaired<br />
</p>
<p class="even">
2 . Does the co-participant report a decline in the subject's <br>memory (relative to previously attained abilities)?)
<form:input type="radio" name="decin" path="decin" required ="required" value="0" style="margin-left:181px;" />0 &nbsp; No  <b> <font size=2px >(END FORM HERE) </font></b> <br />
<form:input type="radio" name="decin" path="decin" required ="required" value="1" style="margin-left:511px;"/>1 &nbsp;Yes <br />
<form:input type="radio" name="decin" path="decin" required ="required" value="2" style="margin-left:511px;"/>8 &nbsp; There is no co-participant<br />
</p>
<p class="Silver"> 
<b> Cognitive Symptoms</b> <br> </p>
<p class="even">
3. Based on the clinician's judgment, is the subject currently <br> experiencing meaningful impairment in cognition ?
<form:input type="radio" name="decclcog" path="decclcog" required ="required" value="0" style="margin-left:181px;" />0 &nbsp; No  <b> If No,<font size=2px >SKIP TO QUESTION 8 </font></b> <br />
<form:input type="radio" name="decclcog" path="decclcog" required ="required" value="1" style="margin-left:514px;"/>1 &nbsp;Yes <br />
</p>
<p class="even">
4. Indicate whether the subject currently
is impaired meaningfully, relative to
previously attained abilities, in the following cognitive domains or has
fluctuating cognition:</p>
<table class="CDR" border=1>
<tr>
<td width= "70%" ></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> No</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Yes</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Unknown </b></font></td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;4a. <b>Memory </b>
For example, does s/he forget conversations and/or dates;
repeat questions and/or statements; misplace more than usual; forget
names of people s/he knows well? </td>
<td > <form:input type="radio" name="cogmem" path="cogmem" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="cogmem" path="cogmem" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="cogmem" path="cogmem" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;4b. <b>Orientation </b>
For example, does s/he have trouble knowing the day,month, and year , or not recognize familiar
locations,or get lost in familiar locations? </td>
<td > <form:input type="radio" name="cogori" path="cogori" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="cogori" path="cogori" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="cogori" path="cogori" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;4c.<b> Executive function -Judgment and problem-solving</b> 
For example, does s/he have trouble
handling money (tips); paying bills; shopping; preparing meals; handling
appliances; handling medications; driving?  </td>
<td > <form:input type="radio" name="cogjudg" path="cogjudg" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="cogjudg" path="cogjudg" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="cogjudg" path="cogjudg" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;4d. <b>Language</b>
For example, does s/he have hesitant speech; have trouble
finding words; use inappropriate words without self-correction?   </td>
<td > <form:input type="radio" name="coglang" path="coglang" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="coglang" path="coglang" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="coglang" path="coglang" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;4e. <b>Visuospatial function</b>
Does s/he have difficulty interpreting visual stimuli and finding
his/her way around.    </td>
<td > <form:input type="radio" name="cogvis" path="cogvis" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="cogvis" path="cogvis" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="cogvis" path="cogvis" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;4f. <b>Attention/concentration</b>
Does the subject have a short
attention span or ability to concentr
ate? Is s/he easily distracted?    </td>
<td > <form:input type="radio" name="cogattn" path="cogattn" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="cogattn" path="cogattn" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="cogattn" path="cogattn" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;4g. <b>Fluctuating cognition</b>
Does s/he have pronounced variation in attention
and alertness, noticeably over hours or days? For example, long periods
of staring into space or lapses, or times when his/her ideas have a
disorganized flow.   <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4g1. If yes, at what age did the fluctuating cognition begin? <form:input type="text" name="cogflago" path="cogflago" style="margin-left:0px; width:130px;"/><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(777 = Age of onset provided at a previous UDS visit.)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(The clinician must use his/her best judgment to estimate an age of onset.)

   </td>
<td > <form:input type="radio" name="cogfluc" path="cogfluc" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="cogfluc" path="cogfluc" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="cogfluc" path="cogfluc" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;4f. <b>Other (SPECIFY)</b> <form:input type="text" name="cogothrx" path="cogothrx" style="margin-left:0px; width:130px;"/><br></td>
<td > <form:input type="radio" name="cogothr" path="cogothr" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="cogothr" path="cogothr" value="1" style="margin-left:10px;" />1</td>
</tr>
</table>
<br>
<br>
<br>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> 
</p>
<p class="footer1"> <b>Page 1 of 5</b> </p>
<input type = "submit" name="action" value="Move to Page 2" style="margin-left:400px;" /> 
</form:form>
</body>
</html>