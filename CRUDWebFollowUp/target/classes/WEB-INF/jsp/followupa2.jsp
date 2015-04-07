<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>

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
table.smallheader
{
font size :3px;
font-weight :bold;
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
<div path="content">
<img src="/CRUDWebFollowUp/index.jpg" height="100" width="150" class="nacc"></img>
</div>
<input type="text" value="FOLLOW - UP VISIT PACKET"  style="background-color:Black; color:White; width:200px; font-weight :bold;"/> &nbsp; &nbsp; 
 <b>NACC UNIFORM DATA SET(UDS)</b>
<h3> Form A2:<font size = 5px> &nbsp;Co-Participant Demographics</font></h3>
<br>

<table class="smallheader">
<tr>
<td>ADC name : &nbsp;<input type="text" name="ID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue1" style="margin-left:150px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:100px;">Form date : </label><input type="text" name="MM" size= "2" maxlength="2"/>/<input type="text" name="DD" size= "2" maxlength="2"/>/<input type="text" name="YY" size= "4" maxlength="4"/>
</tr>
<tr>
<td><label for="textvalue3" style="margin-left:0px;">Visit # : </label><input type="text" name="Visit" size= "3" maxlength="3"/></td>
<td><label for="textvalue4" style="margin-left:150px;">Examiner's initials : </label><input type="text" name="EI" size= "3" maxlength="3"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">



<font size =3px><i>INSTRUCTION : This form is to be completed by intake interviewer based on co-participant's report.
For additional clarification and examples , see UDS Coding Guidebook 
for Follow-Up Visit Packet , Form A2.Check only <u>one</u> box per question.</i></font>
<br><br>
<b>To print a copy of data collected for this form at a previous UDS visit, go to</b> <font size=2px color ="CornflowerBlue">https://www.alz.washington.edu/MEMBER/siteprint.html</font><b>.</b>
<br>
<br>

<font color="red"> <span>${message}</span></font>
<form action="followupa2.do" method="POST">
<p class="odd">
<label for="textvalue1">1.  Co-Participant's Month and year of birth(MM/YYYY):</label>
<input type="text" required="required" path="inbirmo" name="DD" size= "2" maxlength="2"/>/<input type="text" required="required" path="inbiryr" name="YY"  size= "4" maxlength="4"/> <b>&nbsp;&nbsp;(99/9999 = unknown)</b>
</p>

<p class="even">
<label for="textvalue2">2.  Subject's sex:</label>
<input type="radio" required="required" name="a2sex" path="insex" value="1" style="margin-left:0px;"/>1 Male<br />
<input type="radio" required="required" name="a2sex" path="insex" value="2" />2 Female<br />
</p>

<p class="odd">
<label for="textvalue3">3. Is this a new co-participant - i.e., one who was not a co- <br>
participant at any past UDS visit?: </label>
<input type="radio" name="newinf" required="required" path="insex" value="0" style="margin-left:0px;" />0 No ( If No, <b>SKIP TO QUESTION 9 </b>)<br />
<input type="radio" name="newinf" required="required" path="insex" value="1" />1 Yes<br />
</p>

<p class="even">
<label for="textvalue4">4. Does the co-participant report being of Hispanic/latino <br>
<u>ethnicity </u> (i.e., having origins from a mainly Spanish - <br>
speaking Latin American country), regardless of race ?</label>
<input type="radio" name="inhisp" required="required" path="inhisp" value="0" style="margin-left:0px;" />1 No (If No, <b> SKIP TO QUESTION 9</b>)<br />
<input type="radio" name="inhisp" required="required" path="inhisp" value="1" />2 Yes<br />
<input type="radio" name="inhisp" required="required" path="inhisp" value="9" />9 Unknown (If Unknown ,<b>SKIP TO QUESTION 5</b>)<br />
</p>

<p class="odd">
<label for="textvalue5"> &nbsp;&nbsp;4a. if yes, what are the co-participant's reported origins? </label>
<input type="radio" name="inhispor" required="required" path="inhispor" value="1" style="margin-left:0px;" />1 Mexican , Chicano , or Mexican-American<br />
<input type="radio" name="inhispor" required="required" path="inhispor" value="2" />2 Puerto Rican<br />
<input type="radio" name="inhispor" required="required" path="inhispor" value="3" />3 Cuban<br />
<input type="radio" name="inhispor" required="required" path="inhispor" value="4" />4 Dominican <br />
<input type="radio" name="inhispor" required="required" path="inhispor" value="5" />5 Central American <br />
<input type="radio" name="inhispor" required="required" path="inhispor" value="6" />6 South American <br />
<input type="radio" name="inhispor" required="required" path="inhispor" value="50" />50 Other (SPECIFY) : <input type="text" name="inhispox" size= "20" maxlength="20"/><br />
<input type="radio" name="inhispor" required="required" path="inhispor" value="99" />99 Unknown <br />
</p>

<p class="even">
<label for="textvalue6">5.  What is the co-participant report as his or her race? </label>
<input type="radio" name="inrace" required="required" path="inrace" value="1" style="margin-left:0px;" />1 White <br />
<input type="radio" name="inrace" required="required" path="inrace" value="2" />2 Black or African American<br />
<input type="radio" name="inrace" required="required" path="inrace" value="3" />3 American India or Alaska Native<br />
<input type="radio" name="inrace" required="required" path="inrace" value="4" />4 Native Hawaiian or other pacific Islander<br />
<input type="radio" name="inrace" required="required" path="inrace" value="5" />5 Asian<br />
<input type="radio" name="inrace" required="required" path="inrace" value="50" />50 Other (SPECIFY) : <input type="text" name="inracex" size= "20" maxlength="20""/><br />
<input type="radio" name="inrace" required="required" path="inrace" value="99" />99 Unknown <br />
</p>

<p class="odd">
<label for="textvalue7">5.  What additional race does the co-participant?</label>
<input type="radio" name="inrasec" required="required" path="inrater" value="1" style="margin-left:0px;" />1 White <br />
<input type="radio" name="inrasec" required="required" path="inrater" value="2" />2 Black or African American<br />
<input type="radio" name="inrasec" required="required" path="inrater" value="3" />3 American India or Alaska Native<br />
<input type="radio" name="inrasec" required="required" path="inrater" value="4" />4 Native Hawaiian or other pacific Islander<br />
<input type="radio" name="inrasec" required="required" path="inrater" value="5" />5 Asian<br />
<input type="radio" name="inrasec" required="required" path="inrater" value="50" />50 Other (SPECIFY) : <input type="text" name="inrasecx" size= "20" maxlength="20"/><br />
<input type="radio" name="inrasec" required="required" path="inrater" value="88" />88 None reported <br />
<input type="radio" name="inrasec" required="required" path="inrater" value="99" />99 Unknown <br />
</p>

<input type = "submit" name="action" value="Move to Page 2" style="margin-left:400px;" /> 
</form>
<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Follow-up Visit</b></font> 
</p>
<p class="footer1"> <b>Page 1 of 1</b> </p> 
<div>
<a href="FollowupA22">Move to Page 2</a>
</div>
</body>
</html>