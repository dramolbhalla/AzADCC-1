<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Global Staging</title>
<style>
body
{
margin-left : 200px;
margin-top : 50px;
font-family : Arial Black;
min-width: 950px;
}
h1,h2,h3,h4,h5,h6
{
font - family : verdana;
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
font-weight :bold;
padding: 20px;
margin :0;
}
p.footer
{
text-align : left;
font size : 3px;
color: Grey;
}
p.footer1
{
text-align : right;
font-weight :bold;
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
table.A4
{
display: inline-block;
font-size:13px;
margin-left : 20px ;
color : CornflowerBlue ;
float: left; 
}
table.CDR
{
width :"100% ";
border: 1px solid CornflowerBlue;
float: left;
font-size:20px;
}
table.B5
{
display: inline-block;
border: 1px solid CornflowerBlue;
font-size:13px;
}
table.smallheader
{
font size :3px;
font-weight :bold;
}

p input
{
margin-left : 405px;
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
<form:form action="initiala52.do" method="POST" commandName="initiala52">
<p class="even">
<b> FOR SECTION 2-7,BELOW ,</b> record the presence or absence of a <b> history</b> of these conditions <b> at this visit,</b> as determined by the clinician's best judgment following the medical history interview with the subject and co-participant.
</p>

<p class="even">
<b> A CONDITION SHOULD BE CONSIDERED ...</b> <br>
 <b> . Absent</b>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; If &nbsp;&nbsp;&nbsp; ...it is not indicated by information obtained from the subject and co-participant interview. <br>
 <b> . Recent/Active</b>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; If &nbsp;&nbsp;&nbsp; ...it happened within the last year or still requires active management and is consistent with information obtained from the subject and co-participant interview.<br>
  <b> . Remote/InActive</b>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; If &nbsp;&nbsp;&nbsp; ...it existed or occured in the past (more than one year ago)  but was resolved or there is no treatment currently under way.<br>
  <b> . Recent/Active</b>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; If &nbsp;&nbsp;&nbsp; ... there is insufficient information available from the subject and co-participant interview.<br>
 

</p>
<br>
<br>
<table class="CDR" border=1>
<tr bgcolor = "#08088A" style= "color :White;">
<td width= "60%"> 2. Cardiovascular disease </td>
<td width= "10%" ><font size=2px><b> <br>Absent</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Recent <br> Active</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Remote/Inactive</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Unknown</b></font></td>
</tr>
<tr>
<td>2a. Heart attack/cardiac arrest (If absent or unknown ,<b> SKIP TO QUESTION 2b</b>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
&nbsp;&nbsp;&nbsp;2a1. More than one heart attack ? 
<form:input type="radio" name="option" required ="required" path="hattmult" value="0" style="margin-left:0px;" />0 No
<form:input type="radio" name="option" required ="required" path="hattmult" value="1" style="margin-left:10px;" />1 Yes
<form:input type="radio" name="option" required ="required" path="hattmult" value="9" style="margin-left:10px;"/>9 Unknown <br />
&nbsp;&nbsp;&nbsp;2a2. Year of the most recent heart attack (9999 = unknown) <form:input type="text" name="HeartattYY" size = "4" required ="required" path="hattyear" maxlength = "4" style="margin-left:0px; width:50px;"/>
</td>
<td><form:input type="radio" name="heartatk" required ="required" path="cvhatt" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="heartatk" required ="required" path="cvhatt" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="heartatk" required ="required" path="cvhatt" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="heartatk" required ="required" path="cvhatt" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td> 2b. Atrial fibrillation</td>
<td><form:input type="radio" name="Atrial" value="0" required ="required" path="cvafib" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="Atrial" value="1" required ="required" path="cvafib" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="Atrial" value="2" required ="required" path="cvafib" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="Atrial" value="9" required ="required" path="cvafib" style="margin-left:10px;" />9</td>
</tr>
<tr> 
<td>2c. Angioplasty/endarterectomy/stent    </td>
<td><form:input type="radio" name="Angioplasty" value="0" required ="required" path="cvangio" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="Angioplasty" value="1" required ="required" path="cvangio" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="Angioplasty" value="2" required ="required" path="cvangio" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="Angioplasty" value="9" required ="required" path="cvangio" style="margin-left:10px;" />9</td>
</tr>
<tr> 
<td>2d. Cardiac bypass procedure   </td>
<td><form:input type="radio" name="Cardiac" value="0" required ="required" path="cvbypass" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="Cardiac" value="1" required ="required" path="cvbypass" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="Cardiac" value="2" required ="required" path="cvbypass" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="Cardiac" value="9" required ="required" path="cvbypass" style="margin-left:10px;" />9</td>
</tr>
<tr> 
<td>2e. Pacemaker and/or defibrillator  </td>
<td><form:input type="radio" name="Pacemaker" value="0" required ="required" path="cvpacdef" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="Pacemaker" value="1" required ="required" path="cvpacdef" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="Pacemaker" value="2" required ="required" path="cvpacdef" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="Pacemaker" value="9" required ="required" path="cvpacdef" style="margin-left:10px;" />9</td>
</tr>
<tr> 
<td>2f. Congestive heart failure  </td>
<td><form:input type="radio" name="Congestive" required ="required" path="cvchf" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="Congestive" required ="required" path="cvchf" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="Congestive" required ="required" path="cvchf" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="Congestive" required ="required" path="cvchf" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr> 
<td>2g. Angina  </td>
<td><form:input type="radio" name="Angina" required ="required" path="cvangina" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="Angina" required ="required" path="cvangina" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="Angina" required ="required" path="cvangina" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="Angina" required ="required" path="cvangina" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr> 
<td>2h. Heart valve replacement or repair  </td>
<td><form:input type="radio" name="replacement" required ="required" path="cvhalve" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="replacement" required ="required" path="cvhalve"  value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="replacement" required ="required" path="cvhalve"  value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="replacement" required ="required" path="cvhalve"  value="9" style="margin-left:10px;" />9</td>
</tr>
<tr> 
<td>2i. Other cardiovascular disease (SPECIFY): <form:input type="text" name="Othercardio" required ="required" path="cvothrx" size = "30" maxlength ="30" style="margin-left:0px;"/> </td>
<td><form:input type="radio" name="replacement" required ="required" path="cvothr" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="replacement" required ="required" path="cvothr" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="replacement" required ="required" path="cvothr" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="replacement" required ="required" path="cvothr" value="9" style="margin-left:10px;" />9</td>
</tr>
</table>
<br>
<br>
<table class="CDR" width =100% border=1>
<tr bgcolor = "#08088A" style= "color :White;">
<td width= "60%"> 3. Cerebrovascular disease </td>
<td width= "10%" ><font size=2px><b> <br>Absent</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Recent <br> Active</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Remote/Inactive</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Unknown</b></font></td>
</tr>
<tr>
<td>3a. Stroke - by history,not exam (imaging is not required)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
(If absent or unknown, <b>SKIP TO QUESTION 3b </b>)<br>
&nbsp;&nbsp;&nbsp;3a1. More than one Stroke ? 
<form:input type="radio" name="option" required ="required" path="strokmul" value="0" style="margin-left:0px;" />0 No
<form:input type="radio" name="option" required ="required" path="strokmul" value="1" style="margin-left:10px;" />1 Yes
<form:input type="radio" name="option" required ="required" path="strokmul" value="9" style="margin-left:10px;"/>9 Unknown <br />
&nbsp;&nbsp;&nbsp;3a2. Year of the most recent Stroke (9999 = unknown): &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" name="StrokeYY" required ="required" path="strokyr" size = "4" maxlength = "4" style="margin-left:0px; width:50px;"/>
</td>
<td><form:input type="radio" name="Stroke" required ="required" path="cbstroke" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="Stroke" required ="required" path="cbstroke" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="Stroke" required ="required" path="cbstroke" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="Stroke" required ="required" path="cbstroke" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td>3b. Transient ischemic attack <font size = 2px>(TIA) (If absent or unknown,<b>SKIP TO QUESTION 4a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></font><br>
&nbsp;&nbsp;&nbsp;3b1. More than one TIA ? 
<form:input type="radio" name="option" required ="required" path="tiamult" value="0" style="margin-left:0px;" />0 No
<form:input type="radio" name="option" required ="required" path="tiamult" value="1" style="margin-left:10px;" />1 Yes
<form:input type="radio" name="option" required ="required" path="tiamult" value="9" style="margin-left:10px;"/>9 Unknown <br />
&nbsp;&nbsp;&nbsp;3b2. Year of the most recent TIA (9999 = unknown):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <form:input type="text" name="YY" size = "4" required ="required" path="tiayear" maxlength = "4" style="margin-left:0px; width:50px;"/>
</td>
<td><form:input type="radio" name="ischemic" required ="required" path="cbtia" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="ischemic" required ="required" path="cbtia" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="ischemic" required ="required" path="cbtia" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="ischemic" required ="required" path="cbtia" value="9" style="margin-left:10px;" />9</td>
</tr>
</table>
<br>
<br>
<br>
<br>

<p class="footer">
<br>
<br>
<br>
<br>
<br>
<br>
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Initial Visit</b></font> <font color = "Red">Form A5:Subject Health History</font>
</p>
<p class="footer1"> <b>Page 2 of 4</b> </p>
<br>
<input type = "submit" name="action" value="Move to Page 3" style="margin-left:400px;" /> 
</form:form>
</body>
</html>