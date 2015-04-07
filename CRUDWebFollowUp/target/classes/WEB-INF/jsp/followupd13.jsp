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
width: 70%;
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
p.Silver
{
border: CornflowerBlue 1px solid;
background-color : Silver;
font-weight : light;
padding: 20px;
margin: 0;
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

<table class="smallheader">
<tr>
<td><label for="textvalue1" style="margin-left:10px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:180px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
<td><label for="textvalue3" style="margin-left:250px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">
<p class="even">
Select one syndrome from 5a - 5e as being Present( all other will default to Absent in the NACC database), and then <b> CONTINUE TO QUESTION 6. </b> If you select MCI below,it should meet the MCI core clinical criteria outlined above. <br>
</p>
<form:form action="followupd13.do" method="POST" commandName="followupd13">
<table class="CDR" border=1>
<tr bgcolor = "Silver">
<td width= "30%" ><b> Type</b></td>
<td width= "10%" ><font size=2px><b> Present</b></font></td>
<td width= "40%" ><font size=2px><b> Affected domains</b></font></td>
<td width= "10%" ><font size=2px><b> No </b></font></td>
<td width= "10%" ><font size=2px><b> Yes </b></font></td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;5c. Non - Amnestic MCI, single domain (naMCI SD) </td>
<td > <form:input type="radio" name="mcinon1" path="mcinon1" value="1" style="margin-left:10px;" />1</td>
<td> <b> CHECK YES <font size = 2px>to indicate the affected domain</font></b></td>
</tr>
<tr>
<td></td>
<td ></td>
<td> 5c1. Language </td>
<td > <form:input type="radio" name="mcin1lan" path="mcin1lan" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="mcin1lan" path="mcin1lan" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr>
<td></td>
<td ></td>
<td> 5c2. Attention </td>
<td > <form:input type="radio" name="mcin1att" path="mcin1att" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="mcin1att"  path="mcin1att" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr>
<td></td>
<td ></td>
<td> 5c3. Executive </td>
<td > <form:input type="radio" name="mcin1ex" path="mcin1ex" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="mcin1ex" path="mcin1ex" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr>
<td></td>
<td ></td>
<td> 5c4. Visuospatial </td>
<td > <form:input type="radio" name="mcin1vis" path="mcin1vis" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="mcin1vis" path="mcin1vis" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;5d. Amnestic MCI, multiple domains (naMCI SD) </td>
<td > <form:input type="radio" name="mcinon2" path="mcinon2" value="1" style="margin-left:10px;" />1</td>
<td> <b> CHECK YES <font size = 2px>for at least two domains : </font></b></td>
</tr>
<tr>
<td></td>
<td ></td>
<td> 5d1. Language </td>
<td > <form:input type="radio" name="mcin2lan" path="mcin2lan" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="mcin2lan" path="mcin2lan" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr>
<td></td>
<td ></td>
<td> 5d2. Attention </td>
<td > <form:input type="radio" name="mcin2att" path="mcin2att" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="mcin2att" path="mcin2att" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr>
<td></td>
<td ></td>
<td> 5d3. Executive </td>
<td > <form:input type="radio" name="mcin2ex" path="mcin2ex" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="mcin2ex" path="mcin2ex"value="1" style="margin-left:10px;" />1</td>
</tr>
<tr>
<td></td>
<td ></td>
<td> 5d4. Visuospatial </td>
<td > <form:input type="radio" name="mcin2vis" path="mcin2vis" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="mcin2vis" path="mcin2vis" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr>
<td>5e. Cognitively impaired ,not MCI</td>
<td > <form:input type="radio" name="impnomci" path="impnomci"  value="1" style="margin-left:10px;" />1</td>
</tr>
</table>
<br>
<br>
<br>
<p class="odd" style= "color :White;">
<b> &nbsp;&nbsp;&nbsp; SECTION 2: Biomarkers,imaging, and genetics</b> <br>
</p>
<p class = "Silver">
Section 2 must be completed for all subjects.
</p>
<p class = "even">
<b> Indicate neurodegenerative biomarker status,using local standards for positivity.</b>
</p>
<table class="CDR" border=1>
<tr>
<td width= "70%" >Biomarker findings</td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> No</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Yes</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Unknown/not assessed</b></font></td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;6a. Abnormally elevated amyloid on PET </td>
<td > <form:input type="radio" name="amylpet" path="amylpet" value="0" required ="required" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="amylpet" path="amylpet" value="1" required ="required" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="amylpet" path="amylpet" value="8" required ="required" style="margin-left:10px;" />8</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp; 6b.Abnormally elevated amyloid on CSF</td>
<td > <form:input type="radio" name="amylcsf" path="amylcsf" value="0" required ="required" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="amylcsf" path="amylcsf" value="1" required ="required" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="amylcsf" path="amylcsf" value="8" required ="required" style="margin-left:10px;" />8</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp; 6c. FDG-PET pattern of AD  </td>
<td > <form:input type="radio" name="fdgad" path="fdgad" value="0" required ="required" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="fdgad" path="fdgad" value="1" required ="required" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="fdgad" path="fdgad" value="8" required ="required" style="margin-left:10px;" />8</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;6d. Hippocampal atrophy   </td>
<td > <form:input type="radio" name="hippatr" path="hippatr" value="0" required ="required" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="hippatr" path="hippatr" value="1" required ="required" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="hippatr" path="hippatr" value="8" required ="required" style="margin-left:10px;" />8</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;6e.Tau PET evidence for AD </td>
<td > <form:input type="radio" name="taupetad" path="taupetad" value="0" required ="required" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="taupetad" path="taupetad" value="1" required ="required" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="taupetad" path="taupetad" value="8" required ="required" style="margin-left:10px;" />8</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;6f. Abnormally elevated CSF tau or ptau   </td>
<td > <form:input type="radio" name="csftau" path="csftau" value="0" required ="required" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="csftau" path="csftau" value="1" required ="required" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="csftau" path="csftau" value="8" required ="required" style="margin-left:10px;" />8</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;6g. FDG-PET evidence for frontal or anterior temporal hypermatebolism for FTLD </td>
<td > <form:input type="radio" name="fdgftld" path="fdgftld" value="0" required ="required" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="fdgftld" path="fdgftld" value="1" required ="required" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="fdgftld" path="fdgftld" value="8" required ="required" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;6h.Tau PET evidence for FTLD </td>
<td > <form:input type="radio" name="tpetftld" path="tpetftld" value="0" required ="required" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="tpetftld" path="tpetftld" value="1" required ="required" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="tpetftld" path="tpetftld" value="8" required ="required" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;6i.Structural MR evidence for frontal or anterior temporal atrophy for FTLD </td>
<td > <form:input type="radio" name="mrftld" path="mrftld" value="0" required ="required" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="mrftld" path="mrftld" value="1" required ="required" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="mrftld" path="mrftld" value="8" required ="required" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;6j.Dopamine transporter scan (DATscan) evidence for Lewy body disease</td>
<td > <form:input type="radio" name="datscan" path="datscan" value="0" required ="required" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="datscan" path="datscan value="1" required ="required" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="datscan" path="datscan value="8" required ="required" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;6k.Other (SPECIFY): <form:input type="text" name="othbiomx" path="othbiomx" required ="required" style="margin-left:0px; width:130px;"/></td>
<td > <form:input type="radio" name="othbiom" path="othbiomx" value="0" required ="required" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="othbiom" path="othbiomx" value="1" required ="required" style="margin-left:10px;" />1</td>
</tr>
</table>
<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> <font color ="Red"> Form D1 : Clinician Diagnosis</font>
</p>
<p class="footer1"> <b>Page 3 of 7</b> </p>
<input type = "submit" name="action" value="Move to Page 4" style="margin-left:400px;" /> 
</form:form>
</body>
</html>