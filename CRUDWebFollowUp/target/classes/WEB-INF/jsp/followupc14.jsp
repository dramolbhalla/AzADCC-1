<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
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
</style>
</head>
<body>
<input type="text" value="FOLLOW - UP VISIT PACKET"  style="background-color:Black; color:White; width:200px; font-weight :bold;"/> &nbsp; &nbsp; 
 <b>NACC UNIFORM DATA SET(UDS)</b>
<h3> Form C1:<font size = 5px>&nbsp;&nbsp;Neuropsychological Battery Summary Scores</font></h3>
<br>
<table class="smallheader">
<tr>
<td><label for="textvalue1" style="margin-left:10px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:180px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
<td><label for="textvalue3" style="margin-left:250px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">

<br>
<br>
<br>

<p class="odd" style= "color :White;">
<b> 13. Overall appraisal</b> <br>
</p>
<form:form action="followupc14.do" method="POST" commandName="followupc14">
<p class="even">
13a. Per the clinician (e.g., neuropsychologist,behavioral neurologist,or other suitably <br>qualified clinician),based on the UDS neuropsychological examination,the subject's <br>cognitive status is deemed:
<form:input type="radio" name="cogstat" path="cogstat" required ="required" value="1" style="margin-left:400px;"/>1 Better than normal for age <br>
<form:input type="radio" name="cogstat" path="cogstat" required ="required" value="2" style="margin-left:577px;"/>2 Normal for age <br />
<form:input type="radio" name="cogstat" path="cogstat" required ="required" value="3" style="margin-left:577px;"/>3 One or two test scores are abnormal <br>
<form:input type="radio" name="cogstat" path="cogstat" required ="required" value="4" style="margin-left:577px;"/>4 Three or more scores are abnormal or lower than expected <br />
<form:input type="radio" name="cogstat" path="cogstat" required ="required" value="0" style="margin-left:577px;"/>0 Clinician unable to render opinion <br>

</p>
<br>
<br>
<br>
<br>
<br>
<br>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> <font color ="Red"> Form C1 : Neuropsychological Battery Summary Scores</font>
</p>
<p class="footer1"> <b>Page 4 of 4</b> </p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form:form>
</body>
</html>