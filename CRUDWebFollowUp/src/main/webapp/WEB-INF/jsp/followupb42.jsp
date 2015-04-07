<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
<h3> Form B4:<font size = 5px> &nbsp;Global Staging - Clinical Dementia Rating (CDR)</font> <font size=3px> STANDARD AND SUPPLEMENTAL</font></h3>
<br>
<table class="smallheader">
<tr>
<td><label for="textvalue1" style="margin-left:10px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:180px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
<td><label for="textvalue3" style="margin-left:250px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">



<font size =3px><i>INSTRUCTIONs : For information on the required online CDR training , see UDS Coding Guidebook for Follow-up Visit Packet , Form B4.This form is to be completed by the 
clinician or other trained health professional , based on co - participant report and behavioral and neurological exam of the subject.in the extremely rare instances when no 
co - participant is available , the clinician or other trained health professional must complete this form using all other available information and his/her best clinical judgement.
Score only as decline from previous level due to <u> cognitive loss,</u> not impairment due to other factors, such as physical disability. For further information , see UDS Coding 
Guidebook for Follow-up Visit Packet , Form B4.</i></font>
<br>
<br>
<b> SECTION 2: SUPPLEMENTAL CDR</b>

<br>
<br>

<form action="followupb42.do" method="POST">
<table class="CDR" border=1>
<tr bgcolor = "#08088A" style= "color :White;">
<td width= "10%"><i> Please enter score below</i></td>
<td width= "10%"><font size=2px><b> None --0</b></font></td>
<td width= "10%"><font size=2px><b> Questionable - 0.5</b></font></td>
<td width= "10%"><font size=2px><b> Mild - 1</b></font></td>
<td width= "10%"><font size=2px><b> Moderate -2</b></font></td>
<td width= "10%"><font size=2px><b> Severe - 3</b></font></td>
</tr>
<tr>
<td width= "10%" bgcolor = "#D8D8D8"> <b> 9. BEHAVIOR, COMPORTMENT AND PERSONALITY <sup>2 </sup><br></b><input type="text" name="PLeft" required="required" path="comport" size ="3" maxlength="3" style="margin-left:20px; width:20px ;"/> </td>
<td width= "10%">Socially appropriate behavior. </td>
<td width= "10%">Questionable changes in comportment, empathy, appropriateness of actions.  </td>
<td width= "10%">Mild but definite changes in behavior.  </td>
<td width= "10%">Moderate behavioral changes, affecting interpersonal relationships and interactions in a significant manner.  </td>
<td width= "10%">Severe behavioral changes, making interpersonal interactions all unidirectional.  </td>
</tr>
<tr>
<td width= "10%" bgcolor = "#D8D8D8"> <b> 10. LANGUAGE <sup> 3</sup> <br></b><input type="text" name="LLeft" required="required" path="cdrlang" size ="3" maxlength="3" style="margin-left:20px; width:20px ;"/> </td>
<td width= "10%">No language difficulty or occasional mild tip-of-the-tongue. </td>
<td width= "10%">Consistent mild word finding difficulties; simplification of word choice; circumlocution; decreased phrase length; and/or mild comprehension difficulties.  </td>
<td width= "10%">Moderate word finding difficulty in speech; cannot name objects in environment; reduced phrase length and/or agrammatical speech and/or reduced comprehension in conversation and reading.  </td>
<td width= "10%">Moderate to severe impairments in either speech or comprehension; has difficulty communicating thoughts; writing may be slightly more effective.   </td>
<td width= "10%">Severe comprehension deficits; no intelligible speech. </td>
</tr>
</table>
<br>
<br>
<br>
<br>
<br>


<sup> 2 </sup><font size=2px>Excerpted from the Frontotemporal Dementia Multicenter Instrument & MR Study (Mayo Clinic, UCSF, UCLA, UW).  </font><br>
<sup> 3 </sup><font size=2px>Excerpted from the PPA-CRD: A modification of the CDR for assessing dementia severity in patients with Primary Progressive Aphasia (Johnson N, Weintraub S, Mesulam MM), 2002.  </font>
<p class="footer">
<font color ="Black"><b>UDS (V3.0 ,March 2015) Follow-up Visit </b></font><font color ="Red"> Form B4 : Global Staging</font>

</p>
<p class="footer1"> <b>Page 2 of 2</b> </p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form>
</body>
</html>