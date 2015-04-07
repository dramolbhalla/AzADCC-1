<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Evaluation Form</title>
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
font-weight :bold;
padding: 20px;
margin: 0;
}
p.lense
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
p.lense label
{
display: inline-block;
width: 600px; 
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
<h3> Form B1:<font size = 3px color ="GREY"> &nbsp;EVALUATION FORM</font> <font size = 5px>&nbsp;&nbsp;Physical</font></h3>
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



<font size =3px><i>INSTRUCTION : This form is to be completed by the clinician.For additional clarification and examples , see UDS Coding Guidebook
for Follow-Up Visit Packet , Form B1.Check only <u>one</u> box per question.</i></font>
<br><br>
<br>
<form:form action="followupb1.do" method="POST" commandName="followupb1">
<p class="odd" style= "color :White;">
<label for="textvalue11"> Subject physical measurement</label>
</p>

<p class="even">
<label for="textvalue1">1.  Subject height (inches)</label>
<form:input type="text" required="required" name="height" path="height" size="4" maxlength="4" style="margin-left:50px;"/> <b>&nbsp;&nbsp;(88.8 = not assessed)</b>
</p>

<p class="even">
<label for="textvalue2">2.  Subject weight (lbs.)</label>
<form:input type="text" required="required" name="weight" path="weight" size="3" maxlength="3" style="margin-left:50px;"/> <b>&nbsp;&nbsp;(888 = not assessed)</b>
</p>

<p class="even">
<label for="textvalue3">3.  Subject blood pressure at initial reading (sitting)</label>
<form:input type="text" name="blood" required="required" path="bpsys"  size="3" maxlength="3" style="margin-left:50px;"/> / 
<form:input type="text" name="blood1" required="required" path="bpdias"  size="3" maxlength="3" style="margin-left:0px;"/> <b>&nbsp;&nbsp;(888/888 = not assessed)</b>
</p>

<p class="even">
<label for="textvalue4">4.  Subject resting heart rate (pulse)</label>
<form:input type="text" required="required" name="heart" path="hrate" size="3" maxlength="3" style="margin-left:50px;"/> <b>&nbsp;&nbsp;(888 = not assessed)</b>
</p>

<p class="odd" style= "color :White;">
Additional physical Observation  <font size="3px" style="margin-left:480px;">No &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Yes  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Unknown</font>
</p>
<p class="lense" >
<label for="textvalue5">5.  Without corrective lenses , is the subject's vision functionally normal?</label>
<form:input type="radio" name="b1lense" required="required" path="vision" value="0" style="margin-left:80px;"/>0
<form:input type="radio" name="b1lense" required="required" path="vision" value="1" style="margin-left:60px;"/>1
<form:input type="radio" name="b1lense" required="required" path="vision" value="9" style="margin-left:60px;"/>9
</p>

<p class="lense">
<label for="textvalue6">6.  Does the subject usually wear corrective lenses?<br>
 <font size=2px> (If no or unknown ,<b> SKIP TO QUESTION 7</b>)</font></label>
<form:input type="radio" required="required" name="b1clense" path="viscorr" value="0" style="margin-left:80px;"/>0
<form:input type="radio" required="required" name="b1clense" path="viscorr" value="1" style="margin-left:60px;"/>1
<form:input type="radio" required="required" name="b1clense" path="viscorr" value="9" style="margin-left:60px;"/>9
</p>


<p class="lense">
<label for="textvalue7">&nbsp;&nbsp;&nbsp;&nbsp;6a.  If yes,is the subject's vision functionally normal <u> with</u> corrective lenses?</label>
<form:input type="radio" required="required" name="b1nlense" path="viswcorr" value="0" style="margin-left:80px;"/>0
<form:input type="radio" required="required" name="b1nlense" path="viswcorr" value="1" style="margin-left:60px;"/>1
<form:input type="radio" required="required" name="b1nlense" path="viswcorr" value="9" style="margin-left:60px;"/>9
</p>


<p class="lense">
<label for="textvalue8">7.  Without a hearing aid(s), is the subject's hearing functionally normal?</label>
<form:input type="radio" name="b1waid" required="required" path="hearing" value="0" style="margin-left:80px;"/>0
<form:input type="radio" name="b1waid" required="required" path="hearing" value="1" style="margin-left:60px;"/>1
<form:input type="radio" name="b1waid" required="required" path="hearing" value="9" style="margin-left:60px;"/>9
</p>


<p class="lense">
<label for="textvalue9">8.  Does the subject usually wear a  hearing aid(s) ?
<br><font size=2px> (If no or unknown ,<b> END FORM HERE</b>)</font></label>
<form:input type="radio" required="required" name="b1yesaid" path="hearaid" value="0" style="margin-left:80px;"/>0
<form:input type="radio" required="required" name="b1yesaid" path="hearaid" value="1" style="margin-left:60px;"/>1
<form:input type="radio" required="required" name="b1yesaid" path="hearaid" value="9" style="margin-left:60px;"/>9
</p>

<p class="lense">
<label for="textvalue10">&nbsp;&nbsp;&nbsp;&nbsp;8a.  If yes, is the subject's hearing functionally normal <u> with </u> hearing aid(s)? </label>
<form:input type="radio" required="required" name="b1ynaid" path="hearwaid" value="0" style="margin-left:80px;"/>0
<form:input type="radio" required="required" name="b1ynaid" path="hearwaid" value="1" style="margin-left:60px;"/>1
<form:input type="radio" required="required" name="b1ynaid" path="hearwaid" value="9" style="margin-left:60px;"/>9
</p>

<br>
<p class="footer">
National Alzheimer's Coordinating Center  | (206) 543 -8637  | fax :(206) 616-5927  |  naccmail@uw.edu  |  www.alz.washington.edu<br>
<b>UDS Version 3.0 ,March 2015</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Page 1 of 1  
</b></p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form:form>
</body>
</html>