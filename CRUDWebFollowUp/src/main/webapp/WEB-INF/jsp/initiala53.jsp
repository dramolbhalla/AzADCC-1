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
<form:form action="initiala53.do" method="POST" commandName="initiala53">
<br>
<br>
<table class="CDR" width=100% border=1>
<tr bgcolor = "#08088A" style= "color :White;">
<td width= "60%"> 4. Neurologic conditions </td>
<td width= "10%" ><font size=2px><b> <br>Absent</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Recent <br> Active</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Remote/Inactive</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Unknown</b></font></td>
</tr>
<tr>
<td width= "60%"> 4a. Parkinson's disease (PD) (If Absent or Unknown, <b> SKIP TO QUESTION 4b</b>) <br>
&nbsp;&nbsp;&nbsp;4a1.Year of PD diagnosis (9999 = unknown) : <form:input type="text" name="pdyr" required ="required" path="pdyr" size = "4" maxlength="4" style="margin-left:0px;"/>
</td>
<td><form:input type="radio" name="pd" required ="required" path="pd" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="pd" required ="required" path="pd" value="1" style="margin-left:10px;" />1</td>
<td ></td>
<td ><form:input type="radio" name="pd" required ="required" path="pd" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td width= "60%"> 4b. Other parkinsonism disorder (e.g., PSP,CBD)<br>
(If Absent or Unknown, <b> SKIP TO QUESTION 4c</b>)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4b1. Year of parkinsonism disorder diagnosis (9999 = unknown):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" name="pdothryr" required ="required" path="pdothryr" size = "4" maxlength="4" style="margin-left:0px;"/>
</td>
<td><form:input type="radio" name="pdothr" required ="required" path="pdothr" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="pdothr" required ="required" path="pdothr" value="1" style="margin-left:10px;" />1</td>
<td ></td>
<td ><form:input type="radio" name="pdothr" required ="required" path="pdothr" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td width= "60%"> 4c. Seizures</td>
<td><form:input type="radio" name="seizures" required ="required" path="seizures" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="seizures" required ="required" path="seizures" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="seizures" required ="required" path="seizures" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="seizures" required ="required" path="seizures" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td width= "60%"> 4d. Traumatic brain injury(TBI) <br>
(If Absent or Unknown, <b> SKIP TO QUESTION 5a</b>)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4d1. TBI with brief loss of consciousness (<5 minutes)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="tbibrief" required ="required" path="tbibrief" value="0" style="margin-left:10px;" />0 No
<form:input type="radio" name="tbibrief" value="1" required ="required" path="tbibrief" style="margin-left:10px;" />1 Single
<form:input type="radio" name="tbibrief" value="2" required ="required" path="tbibrief" style="margin-left:10px;" />2 Repeated/multiple
<form:input type="radio" name="tbibrief" value="9" required ="required" path="tbibrief" style="margin-left:10px;" />9 Unknown<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4d2. TBI with extended loss of consciousness (>5 minutes)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="tbiexten" required ="required" path="tbiexten" value="0" style="margin-left:10px;" />0 No
<form:input type="radio" name="tbiexten" value="1" required ="required" path="tbiexten" style="margin-left:10px;" />1 Single
<form:input type="radio" name="tbiexten" value="2" required ="required" path="tbiexten" style="margin-left:10px;" />2 Repeated/multiple
<form:input type="radio" name="tbiexten" value="9" required ="required" path="tbiexten" style="margin-left:10px;" />9 Unknown<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4d3. TBI without loss of consciousness( as might result from military detonations or sports <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;injuries)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="tbiwolos" required ="required" path="tbiwolos" value="0" style="margin-left:10px;" />0 No
<form:input type="radio" name="tbiwolos" value="1" required ="required" path="tbiwolos" style="margin-left:10px;" />1 Single
<form:input type="radio" name="tbiwolos" value="2" required ="required" path="tbiwolos" style="margin-left:10px;" />2 Repeated/multiple
<form:input type="radio" name="tbiwolos" value="9" required ="required" path="tbiwolos" style="margin-left:10px;" />9 Unknown<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4d4. Year of most recent TBI (9999 = unknown) : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <form:input type="text" name="tbiyear" required ="required" path="tbiyear" size = "4" maxlength="4" style="margin-left:0px;"/><br>
</td>
<td><form:input type="radio" name="tbi" value="0" required ="required" path="tbi" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="tbi" value="1" required ="required" path="tbi" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="tbi" value="2" required ="required" path="tbi" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="tbi" value="9" required ="required" path="tbi" style="margin-left:10px;" />9</td>
</tr>
</table>
<br>
<br>
<table class="CDR" width =100% border=1>
<tr bgcolor = "#08088A" style= "color :White;">
<td width= "60%"> 5 Medical conditions </td>
<td width= "10%" ><font size=2px><b> <br>Absent</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Recent <br> Active</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Remote/Inactive</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Unknown</b></font></td>
</tr>
<tr>
<td>
<b> If any of the conditions still require active management and /or medications, please select "Recent/active."</b>
</td>
</tr>
<tr>
<td width= "60%"> 5a. Diabetes (If absent or unknown ,<b>SKIP TO QUESTION 5b</b>) <br>
&nbsp;&nbsp;&nbsp;5a1. If Recent/active or Remote/inactive ,which type?<br>
<form:input type="radio" name="diabtype" required ="required" path="diabtype" value="1" style="margin-left:10px;" />1 Type 1<br>
<form:input type="radio" name="diabtype" required ="required" path="diabtype" value="2" style="margin-left:10px;" />2 Type 2<br>
<form:input type="radio" name="diabtype" required ="required" path="diabtype" value="3" style="margin-left:10px;" />3 Other type(diabetes insipidus,latent autoimmune diabetes/type 1.5,gestational diabetes)<br>
<form:input type="radio" name="diabtype" required ="required" path="diabtype" value="9" style="margin-left:10px;" />9 Unknown<br>
 </td>
<td><form:input type="radio" name="diabetes" required ="required" path="diabetes" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="diabetes" required ="required" path="diabetes" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="diabetes" required ="required" path="diabetes" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="diabetes" required ="required" path="diabetes" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td width= "60%"> 5b.Hypertension </td>
<td><form:input type="radio" name="hyperten" required ="required" path="hyperten" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="hyperten" required ="required" path="hyperten" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="hyperten" required ="required" path="hyperten" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="hyperten" required ="required" path="hyperten" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td width= "60%"> 5c. Hypercholesterolemia </td>
<td><form:input type="radio" name="hypercho" required ="required" path="hypercho" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="hypercho" required ="required" path="hypercho" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="hypercho" required ="required" path="hypercho" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="hypercho" required ="required" path="hypercho" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td>5d. B12 deficiency <br></td>
<td><form:input type="radio" name="b12def" value="0" required ="required" path="b12def" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="b12def" value="1" required ="required" path="b12def"  style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="b12def" value="2" required ="required" path="b12def"  style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="b12def" value="9" required ="required" path="b12def"  style="margin-left:10px;" />9</td>
</tr>
<tr>
<td>5e.Thyroid disease</td>
<td><form:input type="radio" name="thyroid" required ="required" path="thyroid"  value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="thyroid" required ="required" path="thyroid" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="thyroid" required ="required" path="thyroid" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="thyroid" required ="required" path="thyroid" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td>5f.Arthritis (If absent or unknown ,<b> SKIP TO QUESTION 5g</b>)<br>
&nbsp;&nbsp;&nbsp;5f1. Type of arthritis:<br>
<form:input type="radio" name="arthtype" required ="required" path="arthtype" value="1" style="margin-left:10px;" />1 Rheumatoid
<form:input type="radio" name="arthtype" required ="required" path="arthtype" value="2" style="margin-left:10px;" />2 Osteoarthritis
<form:input type="radio" name="arthtype" required ="required" path="arthtype" value="3" style="margin-left:10px;" />3 Other (SPECIFY) : <form:input type="text" name="arthtypx" required ="required" path="arthtypx" size ="20" maxlength="20" style="margin-left:0px;"/><br>
<form:input type="radio" name="arthtype" required ="required" path="arthtype" value="9" style="margin-left:10px;" />9 Unknown<br>
&nbsp;&nbsp;&nbsp;5f2. Region(s) affected (Check all that apply):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
5f2a.<form:input type="checkbox" name="arthupex" path="arthupex" value="1" style="margin-left:10px;" />1 Upper extremity
5f2b.<form:input type="checkbox" name="arthupex" path="arthupex" value="2" style="margin-left:10px;" />1 Lower extremity
5f2c.<form:input type="checkbox" name="arthupex" path="arthupex" value="3" style="margin-left:10px;" />1 Spine
5f2d.<form:input type="checkbox" name="arthupex" path="arthupex" value="9" style="margin-left:10px;" />1 Unknown<br>
</td>
<td><form:input type="radio" name="arthrit" required ="required" path="arthrit" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="arthrit" required ="required" path="arthrit" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="arthrit" required ="required" path="arthrit" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="arthrit" required ="required" path="arthrit" value="9" style="margin-left:10px;" />9</td>
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
<p class="footer1"> <b>Page 3 of 4</b> </p>
<br>
<input type = "submit" name="action" value="Move to Page 4" style="margin-left:400px;" /> 
</form:form>
</body>
</html>