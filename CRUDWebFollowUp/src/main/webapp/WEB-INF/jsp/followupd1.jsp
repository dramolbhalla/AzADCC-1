<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinician Diagnosis</title>
<style>
body
{
margin-left : 200px;
margin-top : 50px;
font-family : Arial Black;
width: 1050px;
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
font-weight :light;
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
<h3> Form D1:<font size = 5px>&nbsp;&nbsp;Clinician Diagnosis</font></h3>
<br>
<table class="smallheader">
<tr>
<td>ADC name : &nbsp;<input type="text" name="ID" path="ID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue1" style="margin-left:150px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" size ="10" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:100px;">Form date : </label><input type="text" name="MM" size ="2" maxlength="2" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" size ="2" maxlength="2" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" size ="4" maxlength="4" style="margin-left:0px; width:50px;"/>
</tr>
<tr>
<td><label for="textvalue3" style="margin-left:0px;">Visit # : </label><input type="text" size ="3" maxlength="3" name="Visit" style="margin-left:0px; width:30px;"/></td>
<td><label for="textvalue4" style="margin-left:150px;">Examiner's initials : </label><input type="text" size ="3" maxlength="3" name="EI" style="margin-left:0px; width:50px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">

<font size =3px><i>INSTRUCTIONS : This form must be completed by a clinician .For additional clarification and examples , see UDS Coding Guidebook for Follow-up Visit Packet , Form D1. Check only <u> one</u> box per question.</i></font>
<br>
<br>
<p class="Silver">
This form is divided into three main sections:<br>
Section 1: &nbsp;&nbsp;&nbsp;<b> Cognitive status:</b> Normal cognition/MCI /dementia and dementia syndrome<br>
Section 2: &nbsp;&nbsp;&nbsp;<b> Biomarkers,imaging,and genetics:</b> Neurodegenerative imaging and CSF biomarkers,imaging evidences for CVD, and known genetic mutations for AD and FTLD<br>
Section 3: &nbsp;&nbsp;&nbsp;<b> Etiological status:</b> Presumed  Etiological diagnoses for the cognitive disorder<br>
</p>
<br>
<br>
<form:form action="followupd1.do" method="POST" commandName="followupd1">
<p class="even">
1.  Diagonosis method - responses in this form are based on diagosis by: <br>
<form:input type="radio" name="dxmethod"  path="dxmethod" required ="required" value="1" style="margin-left:0px;"/>1 A single clinician
<form:input type="radio" name="dxmethod" path="dxmethod" required ="required" value="2" style="margin-left:80px;"/>2 A formal consensus panel
<form:input type="radio" name="dxmethod" path="dxmethod" required ="required" value="3" style="margin-left:80px;"/>3 Other (e.g., two or more clinicians or other informal group)
</p>

<p class="odd" style= "color :White;">
<b> &nbsp;&nbsp;&nbsp; SECTION 1: Cognitive and behavioral status</b> <br>
</p>
<p class="even">
2.  Does the subject have normal cognition (global CDR =0 and/or neuropsychological testing within normal range) and normal behaviour <br>
(i.e., the subject does not exhibit behavior sufficient to diagnose MCI or dementia due to FTLD or LBD)?<br>
<form:input type="radio" name="normcog" path="normcog" required ="required" value="0" style="margin-left:80px;"/>0 No  &nbsp;&nbsp;&nbsp;&nbsp;<b>CONTINUE TO QUESTION 3</b>):<br />
<form:input type="radio" name="normcog" path="normcog" required ="required" value="1" style="margin-left:80px;"/>1 Yes <b> <font size=2px>(SKIP TO QUESTION 6) </font></b><br />
</p>
<p class="Silver">
<b>ALL - CAUSE DEMENTIA</b> <br>
<b>The subject has cognitive or behavioral (neuropsychiatric)symptoms that meet all of the following criteria :</b> <br>
. Interface with ability to function as before at work or at usual activities?
. Represent a decline from previous levels of functioning?
. Are not explained by delirium or major psychiatric disorder?
.Include cognitive impairment detected and diagnosed through a combination of 1) history-taking and 2)objective cognitive assessment (bedside or neuropsychological testing)?
<br>
<br>
<u><b>AND</b></u> <br>
<b> Impairment in one* or more of the following domains ,</b><br>
- Impaired ability to acquire and remember new information<br>
- Impaired reasoning and handling of complex tasks,poor judgment<br>
- Impaired visuospatial abilities.<br>
- Impaired Language functions.
- Changes in personality,behavior, or comportment.

* In the event of single domain impairment (e.q., language in PPA,behavior in bvFTD,posterior cortical atrophy),the subject must not fulfill criteria for MCI.

</p>
<p class="even">
3. Does the subject meet the criteria for dementia?<br>
<form:input type="radio" name="demented" path="demented" value="0" style="margin-left:20px;"/>0 No  &nbsp;&nbsp;&nbsp;&nbsp;<b>(SKIP TO QUESTION 5)</b>):<br />
<form:input type="radio" name="demented" path="demented" value="1" style="margin-left:20px;"/>1 Yes &nbsp;&nbsp;&nbsp;&nbsp;<b> <font size=2px> (CONTINUE TO QUESTION 4) </font></b><br />
</p>



<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> 
</p>
<p class="footer1"> <b>Page 1 of 7</b> </p>
<input type = "submit" name="action" value="Move to Page 2" style="margin-left:400px;" /> 
</form:form>
</body>
</html>