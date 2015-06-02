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
<form:form action="initiala54.do" method="POST" commandName="initiala54">
<br>
<br>
<table class="CDR" width=100% border=1>
<tr bgcolor = "#08088A" style= "color :White;">
<td width= "60%"> 5. Medical conditions (cont.) </td>
<td width= "10%" ><font size=2px><b> <br>Absent</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Recent <br> Active</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Remote/Inactive</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Unknown</b></font></td>
</tr>
<tr>
<td width= "60%"> 5g. Incontinence - urinary</td>
<td><form:input type="radio" name="urinary" required ="required" path="incontu" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="urinary" required ="required" path="incontu" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="urinary" required ="required" path="incontu" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="urinary" required ="required" path="incontu" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td width= "60%"> 5h. Incontinence - bowel</td>
<td><form:input type="radio" name="bowel" value="0" required ="required" path="incontf" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="bowel" value="1" required ="required" path="incontf" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="bowel" value="2" required ="required" path="incontf" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="bowel" value="9" required ="required" path="incontf" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td width= "60%"> 5i. Sleep apnea</td>
<td><form:input type="radio" name="Sleep" required ="required" path="apnea" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="Sleep" required ="required" path="apnea" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="Sleep" required ="required" path="apnea" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="Sleep" required ="required" path="apnea" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td width= "60%"> 5j. REM Sleep behavior disorder (RBD)</td>
<td><form:input type="radio" name="RBD" value="0" required ="required" path="rbd" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="RBD" value="1" required ="required" path="rbd" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="RBD" value="2" required ="required" path="rbd" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="RBD" value="9" required ="required" path="rbd" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td width= "60%"> 5k. Hyposomnia /insomnia</td>
<td><form:input type="radio" name="insomnia" required ="required" path="insomn" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="insomnia" required ="required" path="insomn" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="insomnia" required ="required" path="insomn" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="insomnia" required ="required" path="insomn" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td width= "60%"> 5l. Other sleep disorder (SPECIFY) : <form:input type="text" name="MM" size ="30" required ="required" path="othsleex" maxlength="30" style="margin-left:0px;"/></td>
<td><form:input type="radio" name="insomnia" required ="required" path="orthsleep" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="insomnia" required ="required" path="orthsleep" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="insomnia" required ="required" path="orthsleep" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="insomnia" required ="required" path="orthsleep" value="9" style="margin-left:10px;" />9</td>
</tr>
</table>
<table class="CDR" width=100%  border=1>
<tr bgcolor = "#08088A" style= "color :White;">
<td width= "60%"> 6. Substance abuse </td>
<td width= "10%" ><font size=2px><b> <br>Absent</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Recent <br> Active</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Remote/Inactive</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Unknown</b></font></td>
</tr>
<tr>
<td width= "60%"> 6a. Alcohol abuse : clinically significant impairment occurring over a 12 month <br>
period manifested in one of the following areas: work, driving,legal, or social. </td>
<td><form:input type="radio" name="alcabuse" required ="required" path="alcohol" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="alcabuse" required ="required" path="alcohol" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="alcabuse" required ="required" path="alcohol" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="alcabuse" required ="required" path="alcohol" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td width= "60%"> 6b. Other abused substances:clinically significant impairment ocuuring over <br>
a 12 month period manifested in one of the following areas:<br> work,driving,legal,or social.(If absent or unknown ,<b> SKIP TO QUESTION 7a</b>) </td>
<td><form:input type="radio" name="othabuse" required ="required" path="abusothr" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="othabuse" required ="required" path="abusothr" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="othabuse" required ="required" path="abusothr" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="othabuse" required ="required" path="abusothr" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td>6b1. If recent/active or remote/inactive,specify abused <br> substance: 
<form:input type="text" name="psychiatric" required ="required" path="abusx" size = "30" maxlength ="30" style="margin-left:0px;"/></td>
</tr>
</table>
<br>
<br>
<table class="CDR" width =100% border=1>
<tr bgcolor = "#08088A" style= "color :White;">
<td width= "60%"> 7. Psychiatric conditions,diagnosed or treated by a physician </td>
<td width= "10%" ><font size=2px><b> <br>Absent</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Recent <br> Active</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Remote/Inactive</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Unknown</b></font></td>
</tr>
<tr>
<td width= "60%"> 7a. Post - traumatic stress disorder(PTSD) </td>
<td><form:input type="radio" name="PTSD" required ="required" path="ptsd" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="PTSD" required ="required" path="ptsd" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="PTSD" required ="required" path="ptsd" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="PTSD" required ="required" path="ptsd" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td width= "60%"> 7b. Bipolar disorder </td>
<td><form:input type="radio" name="Bipolar" required ="required" path="bipolar" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="Bipolar" required ="required" path="bipolar" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="Bipolar" required ="required" path="bipolar" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="Bipolar" required ="required" path="bipolar" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td width= "60%"> 7c. Schizophrenia </td>
<td><form:input type="radio" name="Schizo" required ="required" path="schiz" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="Schizo" required ="required" path="schiz" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="Schizo" required ="required" path="schiz" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="Schizo" required ="required" path="schiz" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td>7d. Depression <br>
&nbsp;&nbsp;&nbsp;7d1. Active depression in the last two year<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="Activedep" required ="required" path="dep2yrs" value="0" style="margin-left:0px;" />0 No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="Activedep" required ="required" path="dep2yrs" value="1" style="margin-left:10px;" />1 Yes
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="Activedep" required ="required" path="dep2yrs" value="9" style="margin-left:10px;"/>9 Unknown <br />
&nbsp;&nbsp;&nbsp;7d2. Depression episodes more than two years ago <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="Depressionepi" required ="required" path="depothr" value="0" style="margin-left:0px;" />0 No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="Depressionepi" required ="required" path="depothr" value="1" style="margin-left:10px;" />1 Yes
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="Depressionepi" required ="required" path="depothr" value="9" style="margin-left:10px;"/>9 Unknown <br />
</td>
</tr>
<tr>
<td>7e.Anxiety</td>
<td><form:input type="radio" name="Anxiety" required ="required" path="anxiety" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="Anxiety" required ="required" path="anxiety" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="Anxiety" required ="required" path="anxiety" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="Anxiety" required ="required" path="anxiety" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td>7f.Obsessive-compulsive disorder(OCD)</td>
<td><form:input type="radio" name="OCD" required ="required" path="ocd" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="OCD" required ="required" path="ocd" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="OCD" required ="required" path="ocd" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="OCD" required ="required" path="ocd" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td>7g.Developmental neuropsychiatric disorder (e.g., autism) spectrum disorder<br>
attention deficit hyperactivity disorder[ADHD],dyslexia</td>
<td><form:input type="radio" name="autism" required ="required" path="npsydev" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="autism" required ="required" path="npsydev" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="autism" required ="required" path="npsydev" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="autism" required ="required" path="npsydev" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td>7h. Other psychiatric disorders <br>
<font size=2px> &nbsp;&nbsp;&nbsp;(If absent or unknown,<b> END FORM HERE.</b>)</font> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7h1. If recent/active or remote/inactive,specify disorder: <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" name="psychiatric" required ="required" path="psycdis" size = "30" maxlength ="30" style="margin-left:0px;"/>
</td>
<td><form:input type="radio" name="psydisorder" required ="required" path="psycdisx" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="psydisorder" required ="required" path="psycdisx" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="psydisorder" required ="required" path="psycdisx" value="2" style="margin-left:10px;" />2</td>
<td ><form:input type="radio" name="psydisorder" required ="required" path="psycdisx" value="9" style="margin-left:10px;" />9</td>
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
<p class="footer1"> <b>Page 4 of 4</b> </p>
<br>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form:form>
</body>
</html>