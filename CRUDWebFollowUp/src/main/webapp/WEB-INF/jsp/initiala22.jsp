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
p.even
{
border: CornflowerBlue 1px solid;
font-weight :bold;
padding: 20px;
margin: 0;
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
<td>ADC name : &nbsp;<input type="text" name="ID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue1" style="margin-left:150px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:100px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">
<br>
<br>
<form:form action="initiala22.do" method="POST" commandName="initiala22">
<p class="odd">
<label for="textvalue1">6.  What additional beyond those reported in Questions 4 and 5 , does the co-participant report?</label>
<form:input type="radio" name="addracerep" required="required" path="inrater" value="1" style="margin-left:0px;" />1 &nbsp;&nbsp;&nbsp;White <br />
<form:input type="radio" name="addracerep" required="required" path="inrater" value="2" />2 &nbsp;&nbsp;&nbsp;Black or African American<br />
<form:input type="radio" name="addracerep" required="required" path="inrater" value="3" />3 &nbsp;&nbsp;&nbsp;American India or Alaska Native<br />
<form:input type="radio" name="addracerep" required="required" path="inrater" value="4" />4 &nbsp;&nbsp;&nbsp;Native Hawaiian or other pacific Islander<br />
<form:input type="radio" name="addracerep" required="required" path="inrater" value="5" />5 &nbsp;&nbsp;&nbsp;Asian<br />
<form:input type="radio" name="addracerep" required="required" path="inrater" value="50" />50 &nbsp;Other (SPECIFY) : <form:input type="text" name="Otherrace" path="inraterx" style="margin-left:0px; width:200px;"/><br />
<form:input type="radio" name="addracerep" required="required" path="inrater" value="88" />88 &nbsp;None reported <br />
<form:input type="radio" name="addracerep" required="required" path="inrater" value="99" />99 &nbsp;Unknown <br />
</p>
<p class="even">
7. Co-participant's years of education - use the codes below to report the level achieved; if an<br>
 attempted level is not completed, enter the number of years completed:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  <form:input type="text" name="educ" required="required" path="ineduc" style="margin-left:0px; width:20px;"/> <br>
<font size=2px> <b>12= high school or GED &nbsp;&nbsp;&nbsp;16 = bachelor's degree &nbsp;&nbsp;&nbsp; 18= master's degree &nbsp;&nbsp;&nbsp; 20= doctorate &nbsp;&nbsp;&nbsp; 99 = unknown </b></font>
</p>

<p class="odd">
<label for="textvalue3">8. What is the co-participant's relationship to the subject? </label>
<form:input type="radio" name="rel" required="required" path="inrelto" value="1" style="margin-left:0px;" />1 &nbsp; Spouse, partner , or companion (include ex-spouse, <br> &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbspex-partner,fiance(e),boyfriend,girlfriend) <br />
<form:input type="radio" name="rel" required="required" path="inrelto" value="2" />2 &nbsp;Child(by blood or through marriage or adoption)<br />
<form:input type="radio" name="rel" required="required" path="inrelto" value="3" />3 &nbsp;Sibling (by blood or through marriage or adoption)  <br />
<form:input type="radio" name="rel" required="required" path="inrelto" value="4" />4 &nbsp;Other relative (by blood or through marriage or adoption)<br />
<form:input type="radio" name="rel" required="required" path="inrelto" value="5" />5 &nbsp;Friend,neighbour, or someone known through <br> &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;family, friend, work, or community (e.g., church) <br />
<form:input type="radio" name="rel" required="required" path="inrelto" value="6" />6 &nbsp;paid caregiver, health care provider or clinician<br />
</p>

<p class="even">
<label for="textvalue4">&nbsp;&nbsp;&nbsp; &nbsp;8a. How long has the co-participant known the subject? </label><form:input type="text" name="longknown" required="required" path="inknown" style="margin-left:10px;"/><b> years &nbsp; (999 =unknown)</b>
</p>

<p class="odd">
<label for="textvalue2">9.  Does the co-participant live with the subject?:</label>
<form:input type="radio" name="live" required="required" path="inlivwth" value="1" style="margin-left:0px;"/>1 &nbsp;&nbsp;No<br />
<form:input type="radio" name="live" required="required" path="inlivwth" value="2" />2 &nbsp;&nbsp;Yes (if Yes, <b> SKIP TO QUESTION 10</b>)<br />
</p>

<p class="even">
<label for="textvalue3">&nbsp;&nbsp; &nbsp; &nbsp;9 a. If no, approximate frequency of in-person visits? </label>
<form:input type="radio" name="visit" required="required" path="invisits" value="1" style="margin-left:0px;" />1 &nbsp;&nbsp;Daily <br />
<form:input type="radio" name="visit" required="required" path="invisits" value="2" />2 &nbsp;&nbsp;At least three times per week<br />
<form:input type="radio" name="visit" required="required" path="invisits" value="3" />3 &nbsp;&nbsp;Weekly <br />
<form:input type="radio" name="visit" required="required" path="invisits" value="4" />4 &nbsp;&nbsp;At least three times per month<br />
<form:input type="radio" name="visit" required="required" path="invisits" value="5" />5 &nbsp;&nbsp;Monthly <br />
<form:input type="radio" name="visit" required="required" path="invisits" value="6" />6 &nbsp;&nbsp;Less than once a month<br />
</p>

<p class="odd">
<label for="textvalue4">&nbsp;&nbsp;9 b. If no, approximate frequency of telephone contact? </label>
<form:input type="radio" name="phone" required="required" path="incalls" value="1" style="margin-left:0px;" />1 &nbsp;&nbsp;Daily <br />
<form:input type="radio" name="phone" required="required" path="incalls" value="2" />2 &nbsp;&nbsp;At least three times per week<br />
<form:input type="radio" name="phone" required="required" path="incalls" value="3" />3 &nbsp;&nbsp; Weekly <br />
<form:input type="radio" name="phone" required="required" path="incalls" value="4" />4 &nbsp;&nbsp;At least three times per month<br />
<form:input type="radio" name="phone" required="required" path="incalls" value="5" />5 &nbsp;&nbsp;Monthly <br />
<form:input type="radio" name="phone" required="required" path="incalls" value="6" />6 &nbsp;&nbsp;Less than once a month<br />
</p>

<p class="even">
<label for="textvalue4">10. Is there a question about the co-participant's reliability? </label>
<form:input type="radio" name="reliable" required="required" path="inrely" value="0" style="margin-left:0px;" />0 &nbsp;&nbsp; No <br />
<form:input type="radio" name="reliable" required="required" path="inrely" value="1" />1 &nbsp;&nbsp;Yes<br />
</p>
<br>
<br>
<br>



<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)Initial Visit</b></font><font color = "Red">Form A2 : Co-participant Demographics </font> 
</p>
<p class="footer1"> <b>Page 2 of 2</b> </p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form:form>
</body>
</html>