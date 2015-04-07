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
<p class="Silver">
<b>4. If the subject meets criteria for dementia, answer Question 4a - 4f below and then SKIP TO QUESTION 6.</b> <br>
</p>

<p class="even">
Based entirely on the history and examination (including neuropsychological testing) , what is the cognitive/behavioral syndrome?<b> Select one or more as Present ; all others will default to Absent in NACC database.</b>
</p>
<form:form action="followupd12.do" method="POST" commandName="followupd12">
<p class="Silver">
<b>Dementia syndrome</b> <label for="textvalue1" style="margin-left:480px;"> <b> Present</b></label><br>
</p>
<p class="even">
4a. Amnestic multidomain dementia syndrome <form:input type="radio" name="amndem" path="amndem" value="1" style="margin-left:300px;"/>1
</p>
<p class="even">
4b. Posterior cortical atrophy syndrome (or primary visual presentation) <form:input type="radio" name="pca" path="pca" value="1" style="margin-left:140px;"/>1
</p>
<p class="even">
4c. Primary progressive aphasis (PPA)syndrome <form:input type="radio" name="ppasyn" path="ppasyn" value="1" style="margin-left:290px;"/>1<br>
4c1.<form:input type="radio" name="ppasyn" path="ppasyn" value="1" style="margin-left:20px;"/>1 Meets criteria for semantic PPA<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="ppasynt" path="ppasynt" value="2" style="margin-left:20px;"/>2 Meets criteria for logopenic PPA<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="ppasynt" path="ppasynt" value="3" style="margin-left:20px;"/>3 Meets criteria for nonfluent/agrammatic PPA<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="ppasynt" path="ppasynt" value="4" style="margin-left:20px;"/>4  PPA other/not otherwise specified<br>
</p>
<p class="even">
4d. Bahavioral variant FTD (bvFTD)syndrome <form:input type="radio" name="ftdsyn" path="ftdsyn" value="1" style="margin-left:290px;"/>1
</p>
<p class="even">
4e. Lewy body dementia syndrome <form:input type="radio" name="lbdsyn" path="lbdsyn" value="1" style="margin-left:365px;"/>1
</p>
<p class="even">
4f. Non- amnestic multidomain dementia,not PCA,PPA ,bvFTD,or DLB syndrome <form:input type="radio" name="namndem" path="namndem" value="1" style="margin-left:60px;"/>1
</p>
<br>

<p class="Silver">
<b>5. If the subject does not have normal cognition or behavior and is not clinically demented,indicate the type of cognitive impairment below</b> <br>
</p>
<p class="Silver">
MCI CORE CLINICAL CRITERIA <br>
. Is the subject, the co-participant ,or a clinician concerned about a change in cognition compared to the subject's previous level?<br>
. Is there impairment in one or more cognitive domains(memory,language,executive functions,attention, and visuospatial skills)?<br>
. IS there largely preserved independence in functional abilities (no change from prior manner of functional or uses minimal aids or assistance)?<br>
</p>

<p class="even">
Select one syndrome from 5a - 5e as being Present( all other will default to Absent in the NACC database), and then <b> CONTINUE TO QUESTION 6. </b> If you select MCI below,it should meet the MCI core clinical criteria outlined above. <br>
</p>

<table class="CDR" border=1>
<tr bgcolor = "Silver">
<td width= "30%" ><b> Type</b></td>
<td width= "30%" ><font size=2px><b> Present</b></font></td>
<td width= "20%" ><font size=2px><b> Affected domains</b></font></td>
<td width= "10%" ><font size=2px><b> No </b></font></td>
<td width= "10%" ><font size=2px><b> Yes </b></font></td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;5a. Amnestic MCI, single domain (aMCI SD) </td>
<td > <form:input type="radio" name="mciamem" path="mciamem" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;5b. Amnestic MCI, multiple domains (aMCI SD) </td>
<td > <form:input type="radio" name="mciaplus" path="mciaplus" value="1" style="margin-left:10px;" />1</td>
<td> <b> CHECK YES <font size = 2px>for at least one additional domain (besides memory)</font></b></td>
</tr>
<tr>
<td></td>
<td ></td>
<td> 5b1. Language </td>
<td > <form:input type="radio" name="mciaplan" path="mciaplan" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="mciaplan" path="mciaplan" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr>
<td></td>
<td ></td>
<td> 5b2. Attention </td>
<td > <form:input type="radio" name="mciapatt" path="mciapatt" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="mciapatt" path="mciapatt" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr>
<td></td>
<td ></td>
<td> 5b3. Executive </td>
<td > <form:input type="radio" name="mciapex" path="mciapex" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="mciapex" path="mciapex" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr>
<td></td>
<td ></td>
<td> 5b4. Visuospatial </td>
<td > <form:input type="radio" name="mciapvis" path="mciapvis" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="mciapvis" path="mciapvis" value="1" style="margin-left:10px;" />1</td>
</tr>

</table>
<br>
<br>
<br>
<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> <font color ="Red"> Form D1 : Clinician Diagnosis</font>
</p>
<p class="footer1"> <b>Page 2 of 7</b> </p>
<input type = "submit" name="action" value="Move to Page 3" style="margin-left:400px;" /> 
</form:form>
</body>
</html>