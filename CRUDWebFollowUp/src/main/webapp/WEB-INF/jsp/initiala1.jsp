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
width: 1050px;
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
<input type="text" value="INITIAL VISIT PACKET"  style="background-color:Black; color:White; width:200px; font-weight :bold;"/> &nbsp; &nbsp; 
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
medical records, and proxy co-participant report (as needed.) For additional clarification and examples , see UDS Coding Guidebook
for Initial Visit Packet , Form A1.Check only <u>one</u> box per question.</i></font>
<br><br>
<br>
<br>
<font color="red"> <span>${message}</span></font>
<form:form action="initiala1.do" method="POST" commandName="initiala1">
<p class="odd">
<label for="textvalue2">1.  Primary reason for coming to ADC</label>
<form:input type="radio" name="prirea" path="reason" required ="required" value="1" style="margin-left:0px;" />1 To participate in a research study<br />
<form:input type="radio" name="prirea" path="reason" required ="required" value="2" />2 To have a clinical evaluation<br />
<form:input type="radio" name="prirea" path="reason" required ="required" value="4" />4 Both <font size =2px>(to participate in a research study and to have a clinical evaluation)</font><br />
<form:input type="radio" name="prirea" path="reason" required ="required" value="9" />9 Unknown<br />
</p>

<p class="even">
<label for="textvalue2">2a.  Principal referral source :</label> <br><font size =2px>(If answer is 1 or 2, <b> CONTINUE TO QUESTION 2B;</b> otherwise,<br> <b> SKIP TO QUESTION 3.</b>)</font>
<form:input type="radio" name="prinref" path="refersc" required ="required" value="1" style="margin-left:260px;" />1 Self - referral<br />
<form:input type="radio" name="prinref" path="refersc" required ="required" value="2" />2 Non - professional contact <font size=2px>(spouse/partner, relative,friend, coworker,etc.)</font><br />
<form:input type="radio" name="prinref" path="refersc" required ="required" value="3" />3 ADC participant referral<br />
<form:input type="radio" name="prinref" path="refersc" required ="required" value="4" />4 ADC clinician,staff, or investigator referral<br />
<form:input type="radio" name="prinref" path="refersc" required ="required" value="5" />5 Nurse, doctor, or other health care provider<br />
<form:input type="radio" name="prinref" path="refersc" required ="required" value="6" />6 <font size=2px>Other research study clinician/staff/investigator (non-ADC; e.g.,ADNI, Women's Health Initiative)</font><br />
<form:input type="radio" name="prinref" path="refersc" required ="required" value="8" />8 Other<br />
<form:input type="radio" name="prinref" path="refersc" required ="required" value="9" />9 Unknown<br />
</p>

<p class="odd">
<label for="textvalue3">2b.  If the referral source was self-referral or a non- professional contact,how did the referral source learn of the ADC?</label>
<form:input type="radio" name="selfref" path="learned" required ="required" value="1" style="margin-left:0px;" />1 <font size=2px> ADC advertisement(e.g., website,mailing,newspaper ad,community presentation)</font><br />
<form:input type="radio" name="selfref" path="learned" required ="required" value="2" />2 News article or TV program mentioning the ADC study<br />
<form:input type="radio" name="selfref" path="learned" required ="required" value="3" />3 Conference or community event (e.g community memory walk)<br />
<form:input type="radio" name="selfref" path="learned" required ="required" value="4" />4 <font size=2px>Another organization's media appeal or website (e.g., Alzheimer's Association,clinicaltrials.gov)</font><br />
<form:input type="radio" name="selfref" path="learned" required ="required" value="5" />5 Nurse, doctor, or other health care provider<br />
<form:input type="radio" name="selfref" path="learned" required ="required" value="6" />6 <font size=2px>Other research study clinician/staff/investigator(non-ADC; e.g.,ADNI, Women's Health Initiative)</font><br />
<form:input type="radio" name="selfref" path="learned" required ="required" value="8" />8 Other<br />
<form:input type="radio" name="selfref" path="learned" required ="required" value="9" />9 Unknown<br />
</p>

<p class="even">
<label for="textvalue4">3.  Presumed disease status at enrollment </label>
<form:input type="radio" name="status" path="prestat" required ="required" value="1" style="margin-left:0px;" />1 Case,patient,or proband<br />
<form:input type="radio" name="status" path="prestat" required ="required" value="2" />2 Control or normal<br />
<form:input type="radio" name="status" path="prestat" required ="required" value="3" />3 No presumed disease status<br />
</p>

<p class="odd">
<label for="textvalue5">4.  Presumed participation: </label>
<form:input type="radio" name="Presumed" path="prespart" required ="required" value="1" style="margin-left:0px;" />1 Initial evaluation only<br />
<form:input type="radio" name="Presumed" path="prespart" required ="required" value="2" />2 Longitudinal follow - up planned<br />
</p>

<p class="even">
<label for="textvalue6">5.  ADC enrollment type </label>
<form:input type="radio" name="enroltype" path="sourcenw" required ="required" value="1" style="margin-left:0px;" /><font size =2px>1 Primary ADC - funded (Clinical Core, Satellite Core,or other ADC Core or project)</font><br />
<form:input type="radio" name="enroltype" path="sourcenw" required ="required" value="2" /><font size =2px>2 Subject is supported primarily by a non-ADC study(e.g., R01,including non-ADC grants supporting FTLD Module Participation)</font><br />
</p>

<br>
<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Initial Visit</b></font> 
</p>
<p class="footer1"> <b>Page 1 of 3</b> </p>
<input type = "submit" name="action" value="Move to Page 2" style="margin-left:400px;" /> 
</form:form>
</body>
</html>