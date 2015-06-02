<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinical Judgment of Symptoms</title>
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
table.Biological
{
width :"100% ";
border: 1px solid CornflowerBlue;
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
<table class="smallheader">
<tr>
<td>Subject ID : &nbsp;<input type="text" name="ID" style="margin-left:0px;"/></td>
<td><label for="textvalue1" style="margin-left:120px;">Form Date : </label> &nbsp; <input type="text" name="MM" style="margin-left:0px; width:20px;"/> &nbsp; / &nbsp; <input type="text" name="DD" style="margin-left:0px; width:20px;"/> &nbsp; / &nbsp;<input type="text" name="YY" style="margin-left:0px; width:70px;"/></td>
<td><label for="textvalue2" style="margin-left:190px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:50px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">
<br>
<br>

<i> INSTRUCTIONS: This form is to be completed by the clinician.For additional clarification and example,see UDS Coding Guidebook for Telephone
Initial Visit packet , Form B9. Check only <u> one</u> box per question.</i>
<br>
<br>
<form:form action="initialb94.do" method="POST" commandName="initialb94">
<p class="even">
15.  Indicate the <b>predominant</b> domain that was first recognized as  <br>
     a decline in the subject's motor function:
     NOTE : Enter 0 if this <br>information was provided on a previously
     submitted Form B9
<form:input type="radio" name="mofrst" path="mofrst" required ="required" value="0" style="margin-left:82px;"/>0 Assessed<br />
<form:input type="radio" name="mofrst" path="mofrst" required ="required" value="1" style="margin-left:482px;"/>1 Gait disorder<br />
<form:input type="radio" name="mofrst" path="mofrst" required ="required" value="2" style="margin-left:482px;"/>2 Falls<br />
<form:input type="radio" name="mofrst" path="mofrst" required ="required" value="3" style="margin-left:482px;"/>3 Tremor<br />
<form:input type="radio" name="mofrst" path="mofrst" required ="required" value="4" style="margin-left:482px;"/>4 Slowness<br />
<form:input type="radio" name="mofrst" path="mofrst" required ="required" value="99" style="margin-left:482px;"/>99 Unknown<br />
</p>
<p class="even">
16.  Mode of onset of motor symptoms:
<form:input type="radio" name="momode" path="momode" value="1" required ="required" style="margin-left:228px;"/>1 Gradual<br />
<form:input type="radio" name="momode" path="momode" value="2" required ="required" style="margin-left:482px;"/>2 Subacute<br />
<form:input type="radio" name="momode" path="momode" value="3" required ="required" style="margin-left:482px;"/>3 Abrupt<br />
<form:input type="radio" name="momode" path="momode" value="4" required ="required" style="margin-left:482px;"/>4 Other (SPECIFY): <form:input type="text" name="momodex" path="momodex" style="margin-left:0px; width:20px;"/><br />
<form:input type="radio" name="momode" path="momode" value="99" required ="required" style="margin-left:482px;"/>99 Unknown<br />
</p>
<p class="even">
17. Were changes in motor function suggestive of Parkinsonism?
<form:input type="radio" name="momopark" path="momopark" required ="required" value="1" style="margin-left:50px;"/>0 No
<form:input type="radio" name="momopark" path="momopark" required ="required" value="2" style="margin-left:82px;"/>1 Yes
<form:input type="radio" name="momopark" path="momopark" required ="required" value="99" style="margin-left:82px;"/>9 Unknown<br /> 
<label for="textvalue1" style="margin-left:470px;">If No or Unknown , <b> SKIP TO QUESTION 18</b></label>
</p>
<p class="even">
17 a. If yes, at what age did the motor changes suggestive of Parkinsonism begin?
<br> (The clinician must use his/her best judgment to estimate an age of onset.)
<form:input type="text" name="parkage" path="parkage" required ="required" style="margin-left:100px;"/>
<font size=2px style="margin-left:580px;" >(777 =provided at a previous UDS visit)</font>
</p>
<p class="even">
18. Were changes in motor function suggestive of amyotrophic <br>lateral sclerosis?
<form:input type="radio" name="momoals" path="momoals" required ="required" value="1" style="margin-left:360px;"/>0 No
<form:input type="radio" name="momoals" path="momoals" required ="required" value="2" style="margin-left:82px;"/>1 Yes
<form:input type="radio" name="momoals" path="momoals" required ="required" value="99" style="margin-left:82px;"/>9 Unknown<br /> 
<label for="textvalue1" style="margin-left:470px;">If No or Unknown , <b> SKIP TO QUESTION 19</b></label>
</p>
<p class="even">
18 a. If yes, at what age did the motor changes suggestive of ALS begin?
<br> (The clinician must use his/her best judgment to estimate an age of onset.)
<form:input type="text" name="alsage" path="alsage" style="margin-left:100px;"/>
<font size=2px style="margin-left:580px;" >(777 =provided at a previous UDS visit)</font>
</p>
<p class="even">
19. Based on the clinician's assessment , at what age did the motor change begin?
<br> (The clinician must use his/her best judgment to estimate an age of onset.)
<form:input type="text" required ="required" name="moage" path="moage" style="margin-left:100px;"/>
<font size=2px style="margin-left:580px;" >(777 =provided at a previous UDS visit)</font>
</p>
<p class="odd">
<b> Overall course of decline and predominant domain</b> <br>
</p>
<p class="even">
20.  Overall course of decline of cognitive/behavorial/motor syndrome:
<form:input type="radio" name="course" path="course" value="1" required ="required" style="margin-left:25px;"/>1 Gradually progressive<br />
<form:input type="radio" name="course" path="course" value="2" required ="required" style="margin-left:482px;"/>2 Stepwise<br />
<form:input type="radio" name="course" path="course" value="3" required ="required" style="margin-left:482px;"/>3 Static<br />
<form:input type="radio" name="course" path="course" value="4" required ="required" style="margin-left:482px;"/>4 Fluctuating<br />
<form:input type="radio" name="course" path="course" value="5" required ="required" style="margin-left:482px;"/>5 Improved<br />
<form:input type="radio" name="course" path="course" value="8" required ="required" style="margin-left:482px;"/>8 N/A<br />
<form:input type="radio" name="course" path="course" value="9" required ="required" style="margin-left:482px;"/>9 Unknown<br />
</p>
<p class="even">
21.  Indicate the <b>predominant</b> domain that was first recognized as  <br>
     changed in the subject.
     NOTE : Enter 0 if this information was provided <br>on a previously
     submitted Form B9
<form:input type="radio" name="frstchg" path="frstchg" required ="required" value="0" style="margin-left:250px;"/>0 Assessed at a previous UDS visit<br />
<form:input type="radio" name="frstchg" path="frstchg" required ="required" value="1" style="margin-left:481px;"/>1 Cognitive<br />
<form:input type="radio" name="frstchg" path="frstchg" required ="required" value="2" style="margin-left:481px;"/>2 Behavior<br />
<form:input type="radio" name="frstchg" path="frstchg" required ="required" value="3" style="margin-left:481px;"/>3 Motor function<br />
<form:input type="radio" name="frstchg" path="frstchg" required ="required" value="8" style="margin-left:481px;"/>8 N/A<br />
<form:input type="radio" name="frstchg" path="frstchg" required ="required" value="9" style="margin-left:481px;"/>9 Unknown<br />
</p>


<br>
<br>
<br>
<p class="footer">
 <font size =2px>National Alzheimer's Coordinating Center &nbsp;&nbsp; | &nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br></font>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Telephone Follow-up Visit</b></font> <font color = "Red">Form B9 : Clinical Judgment of Symptoms </font>  
</p>
<p class="footer1"> <b>Page 4 of 5</b> </p>
<input type = "submit" name="action" value="Move to Page 4" style="margin-left:400px;" /> 
</form:form>
</body>
</html>