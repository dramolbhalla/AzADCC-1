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
<tr>
<td><label for="textvalue3" style="margin-left:0px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
<td><label for="textvalue4" style="margin-left:150px;">Examiner's initials : </label><input type="text" name="EI" style="margin-left:0px; width:50px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">



<font size =3px><i>INSTRUCTIONS : This form must be completed by a clinician .For additional clarification and examples , see UDS Coding Guidebook for Telephone Follow-up Visit Packet , Form B9. Check only <u> one</u> box per question.</i></font>
<br>
<br>
<form:form action="followupb93.do" method="POST" commandName="followupb93">
<table class="CDR" border=1>
<tr>
<td width= "70%" ></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> No</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Yes</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Unknown </b></font></td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;9f. <b>Agitation
 </b>
Does the subject have trouble sitting still; does s/he shout, hit,
and/or kick? </td>
<td > <form:input type="radio" name="beagit" path="beagit" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="beagit" path="beagit" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="beagit" path="beagit" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;9g. <b>Personality change </b>
Does the subject exhibit bizarre behavior or
behavior uncharacteristic of the subject, such as unusual collecting,
suspiciousness [without delusions], unusual dress, or dietary changes?
Does the subject fail to take other's feelings into account? </td>
<td > <form:input type="radio" name="beperch" path="beperch" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="beperch" path="beperch" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="beperch" path="beperch" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;9h.<b> REM sleep behavior disorder</b> <br>
Does the subject appear to act out his/her
dreams while sleeping (e.g., punch or flail their arms, shout or scream?</td>
<td > <form:input type="radio" name="berem" path="berem" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="berem" path="berem" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="berem" path="berem" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  9h1. If yes,at what age did the REM sleep behavior disorder begin? <form:input type="text" name="beremago" path="beremago" style="margin-left:0px; width:30px;"/> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;(777 = Age of onset provided at a previous UDS visit.)<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;(The clinician must use his/her best judgment to estimate an age of onset.)
</td>
<td > </td>
<td > </td>
<td > </td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;9i. <b>Anxiety </b>
For example , does s/he show signs of nervousness (e.g., frequent sighing,anxious facial expressions,or hand-wringing) and/or excessive worrying? </td>
<td > <form:input type="radio" name="beanx" path="beanx" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="beanx" path="beanx" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="beanx" path="beanx" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;9j. <b>Other  </b> (SPECIFY) <form:input type="text"  name="beothrx" path="beothrx" style="margin-left:0px; width:150px;"/> </td>
<td > <form:input type="radio" name="beothr" path="beothrx" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="beothr" path="beothrx" value="1" style="margin-left:10px;" />1</td>
<td > </td>
</tr>

</table>

<p class="even">
10 . Indicate the predominant symptom which was first<br> recognized as a decline in the subject's behavior: 
<form:input type="radio" name="befpred" path="befpred" required ="required" value="0" style="margin-left:122px;" />0 &nbsp;Assessed at a previous UDS visit<br />
<form:input type="radio" name="befpred" path="befpred" required ="required" value="1" style="margin-left:441px;"/>1 &nbsp; Apathy/withdrawal <br />
<form:input type="radio" name="befpred" path="befpred" required ="required" value="2" style="margin-left:441px;"/>2 &nbsp; Depressed mood <br />
<form:input type="radio" name="befpred" path="befpred" required ="required" value="3" style="margin-left:441px;"/>3 &nbsp; Psychosis <br />
<form:input type="radio" name="befpred" path="befpred" required ="required" value="4" style="margin-left:441px;"/>4 &nbsp; Disinhibition<br />
<form:input type="radio" name="befpred" path="befpred" required ="required" value="5" style="margin-left:441px;"/>5 &nbsp; Irritability<br />
<form:input type="radio" name="befpred" path="befpred" required ="required" value="6" style="margin-left:441px;"/>6 &nbsp; Agitation<br />
<form:input type="radio" name="befpred" path="befpred" required ="required" value="7" style="margin-left:441px;"/>7 &nbsp; Personality change<br />
<form:input type="radio" name="befpred" path="befpred" required ="required" value="8" style="margin-left:441px;"/>8 &nbsp; REM sleep behavior disorder<br />
<form:input type="radio" name="befpred" path="befpred" required ="required" value="9" style="margin-left:441px;"/>9 &nbsp; Anxiety<br />
<form:input type="radio" name="befpred" path="befpred" required ="required" value="10" style="margin-left:441px;"/>10 &nbsp; Other (SPECIFY)  <form:input type="text" name="befpredx" path="befpredx" style="margin-left:0px; width:130px;"/><br />
<form:input type="radio" name="befpred" path="befpred" required ="required" value="99" style="margin-left:441px;"/>99 &nbsp; Unknown<br />
</p>
<p class="even">
11 . Mode of onset of behavior symptoms
<form:input type="radio" name="bemode" path="bemode" required ="required" value="1" style="margin-left:175px;" />1 &nbsp; Gradual <br />
<form:input type="radio" name="bemode" path="bemode" required ="required" value="2" style="margin-left:441px;"/>2 &nbsp;Subacute <br />
<form:input type="radio" name="bemode" path="bemode" required ="required" value="3" style="margin-left:441px;"/>3 &nbsp; Abrupt<br />
<form:input type="radio" name="bemode" path="bemode" required ="required" value="4" style="margin-left:441px;"/>4 &nbsp; Other (SPECIFY)  <form:input type="text" name="bemodex" path="bemodex" style="margin-left:0px; width:130px;"/><br />
<form:input type="radio" name="bemode" path="bemode" required ="required" value="99" style="margin-left:441px;"/>99 &nbsp;  Unknown<br>
</p>
<p class="even">
12. Based on the clinician's assessment , at what age did the cognitive decline begin? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" required ="required" name="beage" path="beage" style="margin-left:0px; width:30px;"/><br>
(777 = Age of onset provided at a previous UDS visit.)<br>
(The clinician must use his/her best judgment to estimate an age of onset of cognitive decline.)

</p>
<p class="Silver"> 
<b> Motor Symptoms</b> <br> </p>
<p class="even">
13. Based on the clinician's judgment, is the subject currently <br> experiencing meaningful change in motor function in any of the following areas: ?
<form:input type="radio" name="decclmot" path="decclmot" required ="required" value="0" style="margin-left:81px;" />0 &nbsp; No  <b> If No,<font size=2px >SKIP TO QUESTION 8 </font></b> <br />
<form:input type="radio" name="decclmot" path="decclmot" required ="required" value="1" style="margin-left:612px;"/>1 &nbsp;Yes <br />
</p>
<p class="even">
14. Indicate whether the subject currently
is impaired meaningfully change in motor function in any of the following areas:</p>
<table class="CDR" border=1>
<tr>
<td width= "70%" ></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> No</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Yes</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Unknown </b></font></td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;14a. <b>Gait disorder </b>
Has the subject's walking changed, not specifically due to
arthritis or an injury? Is s/he unstead
y, or does s/he shuffle when walking,
have little or no arm-swing, or drag a foot? </td>
<td > <form:input type="radio" name="mogait" path="mogait" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="mogait" path="mogait" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="mogait" path="mogait" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;14b. <b>Falls </b>
Does the subject fall more than usual? </td>
<td > <form:input type="radio" name="mofalls" path="mofalls" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="mofalls" path="mofalls" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="mofalls" path="mofalls" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;14c.<b>Tremor</b> 
Has the subject had rhythmic shaking, especially in the hands,
arms, legs, head, mouth, or tongue?  </td>
<td > <form:input type="radio" name="motrem" path="motrem" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="motrem" path="motrem" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="motrem" path="motrem" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;14d. <b>Slowness</b>
Has the subject noticeably slowed down in walking or moving
or handwriting, other than due to an
injury or illness? Has his/her facial
expression changed, or become
more "wooden" or masked and
unexpressive?   </td>
<td > <form:input type="radio" name="moslow" path="moslow" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="moslow" path="moslow" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="moslow" path="moslow" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>
</table>
<br>
<br>
<br>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Telephone Follow-up Visit</b></font> <font color = "Red">Form B9 : Clinical Judgment of Symptoms </font>
</p>
<p class="footer1"> <b>Page 3 of 5</b> </p>
<input type = "submit" name="action" value="Move to Page 3" style="margin-left:400px;" /> 
</form:form>
</body>
</html>