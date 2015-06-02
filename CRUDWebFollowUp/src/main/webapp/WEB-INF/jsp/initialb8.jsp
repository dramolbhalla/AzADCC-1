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
<h3> Form B8:<font size = 3px color ="GREY"> &nbsp;EVALUATION FORM</font> <font size = 5px>&nbsp;&nbsp;Neurological Examination Findings</font></h3>
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



<font size =3px><i>INSTRUCTIONS : This form must be completed by a clinician with experience in assessing the neurological signs listed below <br>
and in attributing the observed findings to a particular syndrome.Please use your best clinical judgement in assigning the <br>
syndrome.For additional clarification and examples , see UDS Coding Guidebook for Follow-up Visit Packet , Form B8.</i></font>
<br>
<br>
<form:form action="initialb8.do" method="POST" commandName="initialb8">
<p class="Silver"> 
<b> 1. Were there abnormal neurological exam findings?</b> <br> </p>
<p class="even">
<form:input type="radio" name="normexam" path="normexam" required ="required" value="0" style="margin-left:10px;" />0 &nbsp; No abnormal findings <b> <font size=2px >(END FORM HERE) </font></b> <br />
<form:input type="radio" name="normexam" path="normexam" required ="required" value="1" style="margin-left:10px;"/>1 &nbsp;Yes - abnormal findings were consistent with syndromes listed in Questions 2-8<br />
<form:input type="radio" name="normexam" path="normexam" required ="required" value="2" style="margin-left:10px;"/>2 &nbsp;Yes - abnormal findings were consistent with age- associated changes or irrelevant to dementing disorders <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (e.g., Bell's palsy ) <font size=2px > (SKIP TO QUESTION 8)</font><br />
</p>
<p class="odd">
<label for="text11" style= "color :White;">&nbsp;&nbsp;&nbsp;&nbsp;INSTRUCTIONS FOR QUESTION 2-8</label>
</p>
<p class="even">
  Please complete the appropriate sections below,using your best clinical judgment in selecting findings that indicate the likely syndrome(s) that is/are present.
</p>
<p class="odd" style= "color :White;">
&nbsp;&nbsp;&nbsp;&nbsp;CHECK ALL OF THE GROUPS OF FINDINGS/SYNDROMES THAT WERE PRESENT
</p>
<p class="Silver"> 
<b> 2. Parkinsonian signs</b> <br> </p>
<p class="even">
<form:input type="radio" name="parksign" path="parksign" required ="required" value="0" style="margin-left:10px;" />0 &nbsp; No <b> <font size=2px >(SKIP TO QUESTION 3)</font></b> <br />
<form:input type="radio" name="parksign" path="parksign" required ="required" value="1" style="margin-left:10px;" />1 &nbsp; Yes <br />

</p>

<i> Findings not marked Yes or Not assesses will default to No in the NACC database.</i>
<br>
<table width= "53%" >
<tr style= "color :White;">
<td width= "50%" ></td>
<td width= "20%" bgcolor = "#08088A">LEFT</td>
<td width= "20%"bgcolor = "#08088A">RIGHT</td>
</tr>
</table>

<table class="CDR" border=1>
<tr bgcolor = "#08088A" style= "color :White;">
<td width= "50%" ><i> Parkinsonian signs</i></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Yes</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Not <br>assessed</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Yes</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Not <br>assessed</b></font></td>
</tr>
<tr>
<td width= "50%" > 2a. Resting tremor - arm</td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="resttrl" path="resttrl"  required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" path="resttrl" name="resttrl" required ="required" value="8" style="margin-left:10px;" />8</td>
<td width= "10%"><form:input type="radio" name="resttrr" path="resttrr" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" ><form:input type="radio" name="resttrr" path="resttrr" required ="required" value="8" style="margin-left:10px;" />8</td>

</tr>
<tr>
<td width= "50%" >2b. Slowing of fine motor movements </td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="slowingl" path="slowingl" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="slowingl" path="slowingl" required ="required" value="8" style="margin-left:10px;" />8</td>
<td width= "10%" ><form:input type="radio" name="slowingr" path="slowingr" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" ><form:input type="radio" name="slowingr" path="slowingr" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td width= "50%" >2c. Rigidity - arm </td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="rigidl" path="rigidl" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="rigidl" path="rigidl" required ="required" value="8" style="margin-left:10px;" />8</td>
<td width= "10%" ><form:input type="radio" name="rigidr" path="rigidr" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" ><form:input type="radio" name="rigidr" path="rigidr" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
</table>
<br>
<br>
<br>

<table class="CDR" border=1>
<tr>
<td width= "50%" ></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Yes</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Not <br>assessed</b></font></td>
</tr>
<tr>
<td width= "50%" > 2d. Bradykinesia</td>
<td width= "10%"><form:input type="radio" name="brady" path="brady"  required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%"><form:input type="radio" name="brady" path="brady"  required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td width= "50%" >2e. Parkinsonian gait disorder </td>
<td width= "10%"><form:input type="radio" name="parkgait" path="parkgait" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%"><form:input type="radio" name="parkgait" path="parkgait" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td width= "50%" >2f. Postural instability </td>
<td width= "10%"><form:input type="radio" name="postinst" path="postinst" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%"><form:input type="radio" name="postinst" path="postinst" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
</table>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> 
</p>
<p class="footer1"> <b>Page 1 of 3</b> </p>
<input type = "submit" name="action" value="Move to Page 2" style="margin-left:400px;" /> 
</form:form>
</body>
</html>