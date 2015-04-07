<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Global Staging</title>
<style>
body
{
margin-left : 200px;
margin-top : 50px;
font-family : Arial Black;
width: 800px;
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
table.A4
{
display: inline-block;
font-size:13px;
margin-left : 20px ;
color : CornflowerBlue ;
float: left; 
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

p input
{
margin-left : 405px;
}
</style>
</head>
<body>
<table class="smallheader">
<tr>
<td><label for="textvalue1" style="margin-left:10px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:120px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
<td><label for="textvalue3" style="margin-left:120px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">

<br>
<br>
<br>

<p>
&nbsp;&nbsp;&nbsp;Please complete the appropriate sections below,using your best clinical judgement in selecting findings that indicate the <br>
&nbsp;&nbsp;&nbsp;likely syndrome(s) that is/are present.
</p>
<form:form action="followupb82.do" method="POST" commandName="followupb82">
<p class="odd">
<b> 3. Neurological signs considered by examiner to be most likely consistent with cerebrovascular disease</b> <br>
</p>
<p class="even">
<form:input type="radio" name="cvdsigns" path="cvdsigns" required ="required" value="0" style="margin-left:10px;" />0 &nbsp;No <b> <font size=2px> SKIP TO QUESTION 4</font></b>
<form:input type="radio" name="cvdsigns" path="cvdsigns" required ="required" value="1" style="margin-left:40px;"/>1 &nbsp;Yes<br />
</p>

<br>


<br>
<table width= "100%" >
<tr >
<td width= "50%" ><i> Findings not marked Yes or Not assesses will default to No in the NACC database.</i></td>
<td width= "20%" bgcolor = "#08088A" style= "color :White;">PRESENT</td>
</tr>
</table>
<table class="CDR" border=1>
<tr>
<td width= "50%" >Findings consistent with stroke/cerebrovascular disease</td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Yes</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Not assessed</b></font></td>
</tr>
<tr>
<td width= "50%" > 3a. Cortical cognitive deficit (e.g , alphasia,apraxia,neglect)</td>
<td width= "10%"><form:input type="radio" name="cortdef" path="cortdef" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%"><form:input type="radio" name="cortdef" path="cortdef" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td width= "50%" >3b. Focal or other neurological findings consistent with SIVD (subcortical ischemic <br> vascular dementia) </td>
<td width= "10%"><form:input type="radio" name="sivdfind" path="sivdfind" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%"><form:input type="radio" name="sivdfind" path="sivdfind" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
</table>
<br>
<table width= "100%" >
<tr style= "color :White;">
<td width= "55%" ></td>
<td width= "25%" bgcolor = "#08088A">&nbsp;LEFT</td>
<td width= "25%"bgcolor = "#08088A">&nbsp;RIGHT</td>
</tr>
</table>

<table class="CDR" border=1>
<tr style= "color :White;">
<td width= "50%" ></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Yes</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Not <br>assessed</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Yes</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Not <br>assessed</b></font></td>
</tr>
<tr>
<td width= "50%" > 3c. Motor (may include weakness of combinations of face,arm,and <br> leg;rflex changes;etc)</td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="cvdmotl" path="cvdmotl" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="cvdmotl" path="cvdmotl" required ="required" value="8" style="margin-left:10px;" />8</td>
<td width= "10%"><form:input type="radio" name="cvdmotr" path="cvdmotr" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" ><form:input type="radio" name="cvdmotr" path="cvdmotr"  required ="required" value="8" style="margin-left:10px;" />8</td>

</tr>
<tr>
<td width= "50%" >3d. Cortical visual field loss </td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="cortvisl" path="cortvisl" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="cortvisl" path="cortvisl" required ="required" value="8" style="margin-left:10px;" />8</td>
<td width= "10%" ><form:input type="radio" name="cortvisr" path="cortvisr" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" ><form:input type="radio" name="cortvisr" path="cortvisr" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td width= "50%" >3e. Somatosensory loss </td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="somatl" path="somatl" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="somatl" path="somatl" required ="required" value="8" style="margin-left:10px;" />8</td>
<td width= "10%" ><form:input type="radio" name="somatr" path="somatr" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" ><form:input type="radio" name="somatr" path="somatr" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
</table>
<p class="odd">
<b> 4. Higher cortical visual problem suggesting posterior cortical atrophy (e.g., prosopagnosia ,simultagnosia, Balint's syndrome) or apraxia of gaze</b> <br>
</p>
<p class="even">
<form:input type="radio" name="postcort" path="postcort" value="0" required ="required" style="margin-left:10px;" />0 &nbsp;No <b></b>
<form:input type="radio" name="postcort" path="postcort" value="1" required ="required" style="margin-left:40px;"/>1 &nbsp;Yes<br />
</p>
<p class="odd">
<b> 5. Findings suggestive of progessive supranuclear palsy (PSP),corticobasal syndrome,or other related disorders</b> <br>
</p>
<p class="even">
<form:input type="radio" name="pspcbs" path="pspcbs" value="0" required ="required" style="margin-left:10px;" />0 &nbsp;No <b> <font size=2px> (SKIP TO QUESTION 6)</font></b>
<form:input type="radio" name="pspcbs" path="pspcbs" value="1" required ="required" style="margin-left:40px;"/>1 &nbsp;Yes<br />
</p>

<br>
<br>
<table width= "93%" >
<tr >
<td width= "47%" ><i> <font size=2px>Findings not marked Yes or Not assesses will default to No in the NACC database.</font></i></td>
<td width= "20%" bgcolor = "#08088A" style= "color :White;">PRESENT</td>
</tr>
</table>
<table class="CDR" border=1>
<tr>
<td width= "50%" >Findings</td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Yes</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Not assessed</b></font></td>
</tr>
<tr>
<td width= "50%" > 5a. Eye movement changes consistent with PSP</td>
<td width= "10%"><form:input type="radio" name="eyepsp" path="eyepsp" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%"><form:input type="radio" name="eyepsp" path="eyepsp" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td width= "50%" >5b. Dysarthria consistent with PSP </td>
<td width= "10%"><form:input type="radio" name="dyspsp" path="dyspsp" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%"><form:input type="radio" name="dyspsp" path="dyspsp" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td width= "50%" >5c. Axial rigidity consistent with PSP </td>
<td width= "10%"><form:input type="radio" name="axialpsp" path="axialpsp" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%"><form:input type="radio" name="axialpsp" path="axialpsp" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td width= "50%" >5d. Gait disorder consistent with PSP </td>
<td width= "10%"><form:input type="radio" name="gaitpsp" path="gaitpsp" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%"><form:input type="radio" name="gaitpsp" path="gaitpsp" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td width= "50%" >5e. Apraxia of speech </td>
<td width= "10%"><form:input type="radio" name="apraxsp" path="apraxsp" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%"><form:input type="radio" name="apraxsp" path="apraxsp" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
</table>
<br>
<table width= "100%" >
<tr style= "color :White;">
<td width= "49%" ></td>
<td width= "29%" bgcolor = "#08088A">&nbsp;LEFT</td>
<td width= "30%"bgcolor = "#08088A">&nbsp;RIGHT</td>
</tr>
</table>

<table class="CDR" border=1>
<tr style= "color :White;">
<td width= "50%" ></td>
<td width= "15%" bgcolor = "Silver"><font size=2px><b> Yes</b></font></td>
<td width= "15%" bgcolor = "Silver"><font size=2px><b> Not <br>assessed</b></font></td>
<td width= "15%" bgcolor = "Silver"><font size=2px><b> Yes</b></font></td>
<td width= "15%" bgcolor = "Silver"><font size=2px><b> Not <br>assessed</b></font></td>
</tr>
<tr>
<td width= "50%" > 5f. Apraxia consistent with CBS</td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="apraxl" path="apraxl" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="apraxl" path="apraxl" required ="required" value="8" style="margin-left:10px;" />8</td>
<td width= "10%"><form:input type="radio" name="apraxr" path="apraxr" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" ><form:input type="radio" name="apraxr" path="apraxr" required ="required" value="8" style="margin-left:10px;" />8</td>

</tr>
<tr>
<td width= "50%" >5g. Cortical sensory deficits consistent with CBS </td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="cortsenl" path="cortsenl" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="cortsenl" path="cortsenl" required ="required" value="8" style="margin-left:10px;" />8</td>
<td width= "10%" ><form:input type="radio" name="cortsenr" path="cortsenr" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" ><form:input type="radio" name="cortsenr" path="cortsenr" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td width= "50%" >5h. Ataxia consistent with CBS </td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="ataxl" path="ataxl" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="ataxl" path="ataxl" required ="required" value="8" style="margin-left:10px;" />8</td>
<td width= "10%" ><form:input type="radio" name="ataxr" path="ataxr" value="1" required ="required" style="margin-left:10px;" />1</td>
<td width= "10%" ><form:input type="radio" name="ataxr" path="ataxr" value="8" required ="required" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td width= "50%" >5h. Alien limb consistent with CBS </td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="alienlml" path="alienlml" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="alienlml" path="alienlml" required ="required" value="8" style="margin-left:10px;" />8</td>
<td width= "10%" ><form:input type="radio" name="alienlmr" path="alienlmr" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" ><form:input type="radio" name="alienlmr" path="alienlmr" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td width= "50%" >5h. Dystonia consistent with CBS </td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="dystonl" path="dystonl" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="dystonl" path="dystonl" required ="required" value="8" style="margin-left:10px;" />8</td>
<td width= "10%" ><form:input type="radio" name="dystonr" path="dystonr" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" ><form:input type="radio" name="dystonr" path="dystonr" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td width= "50%" >5k. Myoclonus consistent with CBS </td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="myocllt" path="myocllt" required ="required" value="1" style="margin-left:10px;" />1</td>
<td width= "10%" bgcolor = "Silver"><form:input type="radio" name="myocllt" path="myocllt" required ="required" value="8" style="margin-left:10px;" />8</td>
<td width= "10%" ><form:input type="radio" name="myoclrt" path="myoclrt" value="1" required ="required" style="margin-left:10px;" />1</td>
<td width= "10%" ><form:input type="radio" name="myoclrt" path="myoclrt" value="8" required ="required" style="margin-left:10px;" />8</td>
</tr>
</table>
<br>
<br>
<br>

<p class="footer">
 <font size =2px>National Alzheimer's Coordinating Center &nbsp;&nbsp; | &nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br></font>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Follow-up Visit</b></font> <font color = "Red">Form B8 : Neurological Examination Findings </font>  
</p>
<p class="footer1"> <b>Page 2 of 3</b> </p>
<input type = "submit" name="action" value="Move to Page 3" style="margin-left:400px;" /> 
</form:form>
</body>
</html>