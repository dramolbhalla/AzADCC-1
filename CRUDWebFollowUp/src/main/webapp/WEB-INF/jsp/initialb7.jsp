<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Functional Activities Questionnaire</title>
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
table.smallheader
{
font size :3px;
font-weight :bold;
}
img 
{
margin-left : 900px;
}
p.footer
{
text-align : left;
}
p label
{
    display: inline-block;
    width: 400px; 
}
p.footer1
{
text-align : right;
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
<input type="text" value="INITIAL VISIT PACKET"  style="background-color:Black; color:White; width:200px; font-weight :bold;"/> &nbsp; &nbsp; 
 <b>NACC UNIFORM DATA SET(UDS)</b>
<h3> Form B7:<font size = 3px color ="GREY"> &nbsp;FUNCTIONAL ASSESSMENT</font> <font size = 5px>&nbsp;&nbsp;Functional Activities Questionnaire (FAQ)<sup> 1 </sup></font></h3>
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

<font size =3px><i>NOTE: This form is to be completed by the clinician or other trained health professional, based on information
provided by informant. For additional clarification and examples, see UDS Coding Guidebook for Telephone Follow-up
Packet, Form B7. Indicate the level of performance for each activity by circling the <u>one</u> appropriate response. </i></font>
<br><br>
<br>
<form:form action="initialb7.do" method="POST" commandName="initialb7" onsubmit="return validate();">
 <table border = "1" cellpadding="3" cellspacing="0" width="100%" BORDERCOLOR="CornflowerBlue">
 <tr >
 	<th height="40" style="width:70%;">In the past four weeks, did the subject have any difficulty or need help with: </th>
    <th style="width:10%;" bgcolor="SlateBlue">Not applicable (e.g., never did)</th>
    <th style="width:10%;" bgcolor="SlateBlue">Normal</th>
    <th style="width:10%;" bgcolor="SlateBlue">Has difficulty but does by self</th>
    <th style="width:10%;" bgcolor="SlateBlue">Requires assistance</th>
    <th style="width:10%;" bgcolor="SlateBlue">Dependent</th>
    <th style="width:10%;" bgcolor="SlateBlue">Unknown</th>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;1. Writing checks, paying bills, or balancing a checkbook.</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="bills" required ="required" path="bills" value="8" />&nbsp;8</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="bills" required ="required" path="bills" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="bills" required ="required" path="bills" value="1" />1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="bills" required ="required" path="bills" value="2" />&nbsp;2</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="bills" required ="required" path="bills" value="3" />&nbsp;3</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="bills" required ="required" path="bills" value="9" />&nbsp;9</td>
  </tr>
  <tr bgcolor="Silver">
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;2 . Assembling tax records, business affairs, or other papers.</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="tax" required ="required" path="taxes" value="8" />&nbsp;8</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="tax" required ="required" path="taxes" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="tax" required ="required" path="taxes" value="1" />1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="tax" required ="required" path="taxes" value="2" />&nbsp;2</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="tax" required ="required" path="taxes" value="3" />&nbsp;3</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="tax" required ="required" path="taxes" value="9" />&nbsp;9</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;3 .Shopping alone for clothes, household necessities, or groceries. </td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="clothes" required ="required" path="shopping" value="8" />&nbsp;8</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="clothes" required ="required" path="shopping" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="clothes" required ="required" path="shopping" value="1" />1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="clothes" required ="required" path="shopping" value="2" />&nbsp;2</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="clothes" required ="required" path="shopping" value="3" />&nbsp;3</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="clothes" required ="required" path="shopping" value="9" />&nbsp;9</td>
  </tr>
  <tr bgcolor="Silver">
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;4 .Playing a game of skill such as bridge or chess, working on a hobby. </td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="chess" required ="required" path="games" value="8" />&nbsp;8</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="chess" required ="required" path="games" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="chess" required ="required" path="games" value="1" />1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="chess" required ="required" path="games" value="2" />&nbsp;2</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="chess" required ="required" path="games" value="3" />&nbsp;3</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="chess" required ="required" path="games" value="9" />&nbsp;9</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;5 .Heating water, making a cup of coffee, turning off the stove. </td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="coffee" required ="required" path="stove" value="8" />&nbsp;8</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="coffee" required ="required" path="stove" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="coffee" required ="required" path="stove" value="1" />1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="coffee" required ="required" path="stove" value="2" />&nbsp;2</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="coffee" required ="required" path="stove" value="3" />&nbsp;3</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="coffee" required ="required" path="stove" value="9" />&nbsp;9</td>
  </tr>
  <tr bgcolor="Silver">
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;6 .Preparing a balanced meal?</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="meal" required ="required" path="mealprep" value="8" />&nbsp;8</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="meal" required ="required" path="mealprep" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="meal" required ="required" path="mealprep" value="1" />1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="meal" required ="required" path="mealprep" value="2" />&nbsp;2</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="meal" required ="required" path="mealprep" value="3" />&nbsp;3</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="meal" required ="required" path="mealprep" value="9" />&nbsp;9</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;7 .Keeping track of current events.? </td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="events" required ="required" path="events" value="8" />&nbsp;8</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="events" required ="required" path="events" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="events" required ="required" path="events" value="1" />1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="events" required ="required" path="events" value="2" />&nbsp;2</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="events" required ="required" path="events" value="3" />&nbsp;3</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="events" required ="required" path="events" value="9" />&nbsp;9</td>
  </tr>
  <tr bgcolor="Silver">
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;8 .Paying attention to and understanding a TV program, book, or magazine</td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="TV" required ="required" path="payattn" value="8" />&nbsp;8</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="TV" required ="required" path="payattn" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="TV" required ="required" path="payattn" value="1" />1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="TV" required ="required" path="payattn" value="2" />&nbsp;2</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="TV" required ="required" path="payattn" value="3" />&nbsp;3</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="TV" required ="required" path="payattn" value="9" />&nbsp;9</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;9 . Remembering appointments, family occasions, holidays, medications.  </td>
  <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="holidays" required ="required" path="remdates" value="8" />&nbsp;8</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="holidays" required ="required" path="remdates" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="holidays" required ="required" path="remdates" value="1" />1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="holidays" required ="required" path="remdates" value="2" />&nbsp;2</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="holidays" required ="required" path="remdates" value="3" />&nbsp;3</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="holidays" required ="required" path="remdates" value="9" />&nbsp;9</td>
  </tr>
  <tr bgcolor="Silver">
  <td height="40" style="width:80%;">&nbsp;&nbsp;&nbsp;10 .Traveling out of the neighborhood, driving, or arranging to take public transportation. </td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="driving" required ="required" path="travel" value="8" />&nbsp;8</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="driving" required ="required" path="travel" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="driving" required ="required" path="travel" value="1" />1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="driving" required ="required" path="travel" value="2" />&nbsp;2</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="driving" required ="required" path="travel" value="3" />&nbsp;3</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="driving" required ="required" path="travel" value="9" />&nbsp;9</td>
  </tr>
  </table>
<br>
<br>
<p >
<sup>1</sup><font size=2px>Pfeffer RI, Kurosaki TT, Harrah CH, et al. Measurement of functional activities of older adults in the community.
J Gerontol 37:323-9, 1982. Copyright © 1982.The Gerontological Society of America. Reproduced by permission of the publisher.</font> 
</p>


<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Follow-up Visit</b></font> 
</p>
<p class="footer1"> <b>Page 1 of 1</b> </p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form:form>
</body>
</html>