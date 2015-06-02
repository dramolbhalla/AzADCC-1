<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Subject Demographics</title>
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
table.smallheader
{
font size :3px;
font-weight :bold;
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
<input type="text" value="FOLLOW - UP VISIT PACKET"  style="background-color:Black; color:White; width:200px; font-weight :bold;"/> &nbsp; &nbsp; 
 <b>NACC UNIFORM DATA SET(UDS)</b>
<h3> Form A1:<font size = 5px> &nbsp;Subject Demographics</font></h3>
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



<font size =3px><i>INSTRUCTION : This form is to be completed by intake interviewer based on ADC scheduling records,subject interview,
medical records, and co-participant report (as needed.) For additional clarification and examples , see UDS Coding Guidebook
for Follow-Up Visit Packet , Form A1.Check only <u>one</u> box per question.</i></font>
<br><br>
<b>To print a copy of data collected for this form at a previous UDS visit, go to</b> <font size=2px color ="CornflowerBlue">https://www.alz.washington.edu/MEMBER/siteprint.html</font><b>.</b>
<br>
<br>
<font color="red"> <span>${message}</span></font>
<form:form action="initiala12.do" method="POST" commandName="initiala12">
<p class="odd">
<label for="textvalue1">6.  Subject's Month and year of birth(MM/YYYY):</label>
<form:input type="text" required ="required" path="birthmo" size= "2" maxlength="2" style="margin-left:0px;width:20px;"/>/<form:input type="text" size="4" maxlength="4" required ="required" path="birthyr" style="margin-left:0px;"/>
</p>

<p class="odd">
<label for="textvalue3">7.  Subject's sex:</label>
<form:input type="radio" name="sex" path="sex" required ="required" value="0" style="margin-left:0px;"/>1 Male<br />
<form:input type="radio" name="sex" path="sex" required ="required" value="1" />2 Female<br />
</p>

<p class="even">
<label for="textvalue4">8. Does the subject report being of Hispanic/Latino <u> ethnicity</u>(i.e ., having origins from a mainly Spanish-speaking Latin American country),regardless of race? </label>
<form:input type="radio" name="Hispanic" path="hispanic" required ="required" value="0" style="margin-left:0px;" />0 No (If No, <b> SKIP TO QUESTION 9</b>)<br />
<form:input type="radio" name="Hispanic" path="hispanic" required ="required" value="1" />2 Yesr<br />
<form:input type="radio" name="Hispanic" path="hispanic" required ="required" value="9" />3 Unknown (If Unknown, <b> SKIP TO QUESYION 9</b>)<br />
</p>

<p class="odd">
<label for="textvalue5">8a. If yes,what are the subject's reported origins? </label>
<form:input type="radio" name="origin" path="hispor" required ="required" value="1" style="margin-left:0px;" />1 Mexican , Chicano , or Mexican-American<br />
<form:input type="radio" name="origin" path="hispor" required ="required" value="2" />2 Puerto Rican<br />
<form:input type="radio" name="origin" path="hispor" required ="required" value="3" />3 Cuban<br />
<form:input type="radio" name="origin" path="hispor" required ="required" value="4" />4 Dominican <br />
<form:input type="radio" name="origin" path="hispor" required ="required" value="5" />5 Central American <br />
<form:input type="radio" name="origin" path="hispor" required ="required" value="6" />6 South American <br />
<form:input type="radio" name="origin" path="hispor" required ="required" value="50" />50 Other (SPECIFY) : <form:input type="text" name="Other" path="hisporx" style="margin-left:0px; width:200px;"/><br />
<form:input type="radio" name="origin" path="hispor" required ="required" value="99" />99 Unknown <br />
</p>

<p class="even">
<label for="textvalue6">9.  What does the subject report as his or her race? </label>
<form:input type="radio" name="race" path="race" required ="required" value="1" style="margin-left:0px;" />1 White <br />
<form:input type="radio" name="race" path="race" required ="required" value="2" />2 Black or African American<br />
<form:input type="radio" name="race" path="race" required ="required" value="3" />3 American India or Alaska Native<br />
<form:input type="radio" name="race" path="race" required ="required" value="4" />4 Native Hawaiian or other pacific Islander<br />
<form:input type="radio" name="race" path="race" required ="required" value="5" />5 Asian<br />
<form:input type="radio" name="race" path="race" required ="required" value="50" />50 Other (SPECIFY) : <form:input type="text" name="Otherrace" path="racex" style="margin-left:0px; width:200px;"/><br />
<form:input type="radio" name="race" path="race" required ="required" value="99" />99 Unknown <br />
</p>

<p class="even">
<label for="textvalue6">10.  What additional race does the subject report?</label>
<form:input type="radio" name="race" path="racesec" required ="required" value="1" style="margin-left:0px;" />1 White <br />
<form:input type="radio" name="race" path="racesec" required ="required" value="2" />2 Black or African American<br />
<form:input type="radio" name="race" path="racesec" required ="required" value="3" />3 American India or Alaska Native<br />
<form:input type="radio" name="race" path="racesec" required ="required" value="4" />4 Native Hawaiian or other pacific Islander<br />
<form:input type="radio" name="race" path="racesec" required ="required" value="5" />5 Asian<br />
<form:input type="radio" name="race" path="racesec" required ="required" value="50" />50 Other (SPECIFY) : <form:input type="text" name="Otherrace" path="racesecx" style="margin-left:0px; width:200px;"/><br />
<form:input type="radio" name="race" path="racesec" required ="required" value="88" />88 None reported <br />
<form:input type="radio" name="race" path="racesec" required ="required" value="99" />99 Unknown <br />
</p>

<p class="even">
<label for="textvalue6">11.  What additional race , beyond those reported in Question 9 and 10, does the subject report ?</label>
<form:input type="radio" name="race" path="raceter" required ="required" value="1" style="margin-left:0px;" />1 White <br />
<form:input type="radio" name="race" path="raceter" required ="required" value="2" />2 Black or African American<br />
<form:input type="radio" name="race" path="raceter" required ="required" value="3" />3 American India or Alaska Native<br />
<form:input type="radio" name="race" path="raceter" required ="required" value="4" />4 Native Hawaiian or other pacific Islander<br />
<form:input type="radio" name="race" path="raceter" required ="required" value="5" />5 Asian<br />
<form:input type="radio" name="race" path="raceter" required ="required" value="50" />50 Other (SPECIFY) : <form:input type="text" name="Otherrace" path="raceterx" style="margin-left:0px; width:200px;"/><br />
<form:input type="radio" name="race" path="raceter" required ="required" value="88" />88 None reported <br />
<form:input type="radio" name="race" path="raceter" required ="required" value="99" />99 Unknown <br />
</p>

<br>
<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Initial Visit</b></font><font size=2px color = "Red"> Form A1 : Subject Demographics</font>
</p>
<p class="footer1"> <b>Page 2 of 3</b> </p>
<input type = "submit" name="action" value="Move to Page 3" style="margin-left:400px;" /> 
</form:form>
</body>
</html>