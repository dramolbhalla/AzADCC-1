<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Co-Participant Demographics</title>
<style>
body
{
margin-left : 200px;
margin-top : 50px;
font-family : Arial Black;
width: 950px;
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
font-weight :bold;
padding: 20px;
margin: 0;
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
<h3> Form A2:<font size = 5px> &nbsp;Co-Participant Demographics</font></h3>
<br>
<table class="smallheader">
<tr>
<td>ADC name : &nbsp;<input type="text" name="ID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue1" style="margin-left:150px;">Subject ID : </label> &nbsp; <input type="text" name="SubID"  style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:100px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
</tr>
<tr>
<td><label for="textvalue3" style="margin-left:0px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
<td><label for="textvalue4" style="margin-left:150px;">Examiner's initials : </label><input type="text" name="EI" style="margin-left:0px; width:50px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">



<font size =3px><i>INSTRUCTION : This form is to be completed by intake interviewer based on co-participant's report.
For additional clarification and examples , see UDS Coding Guidebook 
for Initial Visit Packet , Form A2.Check only <u>one</u> box per question.</i></font>
<br>
<br>

<form:form action="initiala2.do" method="POST" commandName="initiala2">
<p class="odd">
<label for="textvalue1">1.  Co-Participant's Month and year of birth(MM/YYYY):</label>
<form:input type="text" name="DD" required="required" path="inbirmo" style="margin-left:0px; width:20px;"/>/<form:input type="text" required="required" path="inbiryr" name="YY" style="margin-left:0px; width:70px;"/> <b>&nbsp;&nbsp;(99/9999 = unknown)</b>
</p>

<p class="even">
<label for="textvalue2">2.  Co-Participant's sex:</label>
<form:input type="radio" name="a2sex" required="required" path="insex" value="1" style="margin-left:0px;"/>1 Male<br />
<form:input type="radio" name="a2sex" required="required" path="insex" value="2" />2 Female<br />
</p>


<p class="even">
<label for="textvalue4">3. Does the co-participant report being of Hispanic/latino <br>
<u>ethnicity </u> (i.e., having origins from a mainly Spanish - <br>
speaking Latin American country), regardless of race ?</label>
<form:input type="radio" name="hispanic" required="required" path="inhisp" value="0" style="margin-left:0px;" />1 No (If No, <b> SKIP TO QUESTION 4</b>)<br />
<form:input type="radio" name="hispanic" required="required" path="inhisp" value="1" />2 Yes<br />
<form:input type="radio" name="hispanic" required="required" path="inhisp" value="9" />9 Unknown (If Unknown ,<b>SKIP TO QUESTION 4</b>)<br />
</p>

<p class="odd">
<label for="textvalue5"> &nbsp;&nbsp;3a. if yes, what are the co-participant's reported origins? </label>
<form:input type="radio" name="origin" required="required" path="inhispor" value="1" style="margin-left:0px;" />1 Mexican , Chicano , or Mexican-American<br />
<form:input type="radio" name="origin" required="required" path="inhispor" value="2" />2 Puerto Rican<br />
<form:input type="radio" name="origin" required="required" path="inhispor" value="3" />3 Cuban<br />
<form:input type="radio" name="origin" required="required" path="inhispor" value="4" />4 Dominican <br />
<form:input type="radio" name="origin" required="required" path="inhispor" value="5" />5 Central American <br />
<form:input type="radio" name="origin" required="required" path="inhispor" value="6" />6 South American <br />
<form:input type="radio" name="origin" required="required" path="inhispor" value="50" />50 Other (SPECIFY) : <form:input type="text" name="Other" path="inhispox" style="margin-left:0px; width:200px;"/><br />
<form:input type="radio" name="origin" required="required" path="inhispor" value="99" />99 Unknown <br />
</p>

<p class="even">
<label for="textvalue6">4.  What is the co-participant report as his or her race? </label>
<form:input type="radio" name="race" required="required" path="inrace" value="1" style="margin-left:0px;" />1 White <br />
<form:input type="radio" name="race" required="required" path="inrace" value="2" />2 Black or African American<br />
<form:input type="radio" name="race" required="required" path="inrace" value="3" />3 American India or Alaska Native<br />
<form:input type="radio" name="race" required="required" path="inrace" value="4" />4 Native Hawaiian or other pacific Islander<br />
<form:input type="radio" name="race" required="required" path="inrace" value="5" />5 Asian<br />
<form:input type="radio" name="race" required="required" path="inrace" value="50" />50 Other (SPECIFY) : <form:input type="text" name="Otherrace"  path="inracex" style="margin-left:0px; width:200px;"/><br />
<form:input type="radio" name="race" required="required" path="inrace" value="99" />99 Unknown <br />
</p>

<p class="odd">
<label for="textvalue7">5.  What additional race does the co-participant?</label>
<form:input type="radio" name="addrace" required="required" path="inrasec" value="1" style="margin-left:0px;" />1 White <br />
<form:input type="radio" name="addrace" required="required" path="inrasec" value="2" />2 Black or African American<br />
<form:input type="radio" name="addrace" required="required" path="inrasec" value="3" />3 American India or Alaska Native<br />
<form:input type="radio" name="addrace" required="required" path="inrasec" value="4" />4 Native Hawaiian or other pacific Islander<br />
<form:input type="radio" name="addrace" required="required" path="inrasec" value="5" />5 Asian<br />
<form:input type="radio" name="addrace" required="required" path="inrasec" value="50" />50 Other (SPECIFY) : <form:input type="text" name="Otherrace" path="inrasecx" style="margin-left:0px; width:200px;"/><br />
<form:input type="radio" name="addrace" required="required" path="inrasec" value="88" />88 None reported <br />
<form:input type="radio" name="addrace" required="required" path="inrasec" value="99" />99 Unknown <br />
</p>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> 
</p>
<p class="footer1"> <b>Page 1 of 2</b> </p>
<input type = "submit" name="action" value="Move to Page 2" style="margin-left:400px;" /> 
</form:form>
</body>
</html>