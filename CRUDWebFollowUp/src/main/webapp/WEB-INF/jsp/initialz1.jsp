<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form Checklist</title>
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
font-weight :light;
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
<h3> Form Z1:<font size = 5px> &nbsp;Form Checklist</font></h3>
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

<font size =3px><i>INSTRUCTION : This form is to be completed by clinic staff.</i></font>
<br><br>
<br>
<br>
<font color="red"> <span>${message}</span></font>

<p class="even">
NACC expects and intends that all UDS forms will be attempted on all subjects, but we realize this may be impossible
when the patient is terminally ill, or when there is no co-participant, or for other reasons. However, for a subject to be
included in the UDS database, <b>Forms Z1, A1, A5, B4, B8, B9, C2, D1, and D2</b> must be submitted, even though these
forms may include some items with missing data. An explanation is required below for forms that are not submitted.
</p>

<br>
<br>
<b>KEY: If the specified form was not completed, please enter one of the following codes:<br>
	&nbsp;&nbsp;&nbsp;&nbsp;95=Physical problem &nbsp;&nbsp;&nbsp;&nbsp; 96=Cognitive or behavioral problem &nbsp;&nbsp;&nbsp;&nbsp; 97= Other problem &nbsp;&nbsp;&nbsp;&nbsp; 98=Verbal refusal</b>
<br>


<form:form action="initialz1.do" method="POST" commandName="initialz1">
<table class="CDR" border=1 width= "100%">
<tr bgcolor = "#08088A" style= "color :White;">
<td width= "10%"><font size=2px> <br><br><b>Form</b> </font></td>
<td width= "30%" ><font size=2px><b> <br><br>Description</b></font></td>
<td width= "10%" ><font size=2px><b> <br>Submitted <br> Yes&nbsp;&nbsp;&nbsp;&nbsp;No</b></font></td>
<td width= "10%" ><font size=1px> If not submitted,<br>specified reason<br>(see Key)</font></td>
<td width= "40%" ><font size=2px><b> <br><br>Comments (provide if form not included)</b></font></td>
</tr>
<tr>
<td>A1</td><td>Subject Demographics</td><td bgcolor=Silver></td><td bgcolor=Silver></td><td bgcolor=Silver></td>
</tr>
<tr>
<td>A2</td><td>Co-participant Demographics</td>
<td>
<form:input type="radio" name="a2sub" path="a2sub" required ="required" value="1" style="margin-left:0px;" />1
<form:input type="radio" name="a2sub" path="a2sub" required ="required" value="0" />0</td>
<td>
<form:select name="a2not" path="a2not">
<option></option>
<option value="95">95</option>
<option value="96">96</option>
<option value="97">97</option>
<option value="98">98</option>
</form:select>
</td>
<td>
<form:input type="text" name="a2comm" path="a2comm" style="margin-left:0px; width:90%;"/><br />
</td>
</tr>
<tr>
<td>A3</td><td>Subject Family History</td>
<td>
<form:input type="radio" name="a3sub" path="a3sub" required ="required" value="1" style="margin-left:0px;" />1
<form:input type="radio" name="a3sub" path="a3sub" required ="required" value="0" />0</td>
<td>
<form:select name="a3not" path="a3not">
<option></option>
<option value="95">95</option>
<option value="96">96</option>
<option value="97">97</option>
<option value="98">98</option>
</form:select>
</td>
<td>
<form:input type="text" name="a3comm" path="a3comm" style="margin-left:0px; width:90%;"/><br />
</td>
</tr>
<tr>
<td>A4</td><td>Subject Medications</td>
<td>
<form:input type="radio" name="a4sub" path="a4sub" required ="required" value="1" style="margin-left:0px;" />1
<form:input type="radio" name="a4sub" path="a4sub" required ="required" value="0" />0</td>
<td>
<form:select name="a4not" path="a4not">
<option></option>
<option value="95">95</option>
<option value="96">96</option>
<option value="97">97</option>
<option value="98">98</option>
</form:select>
</td>
<td>
<form:input type="text" name="a4comm" path="a4comm" style="margin-left:0px; width:90%;"/><br />
</td>
</tr>
<tr>
<td>A5</td><td>Subject Health History</td><td bgcolor=Silver></td><td bgcolor=Silver></td><td bgcolor=Silver></td>
</tr>
<tr>
<td>B1</td><td><font size=1>EVALUATION FORM</font> Physical</td>
<td>
<form:input type="radio" name="b1sub" path="b1sub" required ="required" value="1" style="margin-left:0px;" />1
<form:input type="radio" name="b1sub" path="b1sub" required ="required" value="0" />0</td>
<td>
<form:select name="b1not" path="b1not">
<option></option>
<option value="95">95</option>
<option value="96">96</option>
<option value="97">97</option>
<option value="98">98</option>
</form:select>
</td>
<td>
<form:input type="text" name="b1comm" path="b1comm" style="margin-left:0px; width:90%;"/><br />
</td>
</tr>
<tr>
<td>B4</td><td>Global Stating - CDR:<br>Standard and Supplemental</td><td bgcolor=Silver></td><td bgcolor=Silver></td><td bgcolor=Silver></td>
</tr>
<tr>
<td>B5</td><td><font size=1>BEHAVIORAL ASSESSMENT</font> NPI-Q</td>
<td>
<form:input type="radio" name="b5sub" path="b5sub" required ="required" value="1" style="margin-left:0px;" />1
<form:input type="radio" name="b5sub" path="b5sub" required ="required" value="0" />0</td>
<td>
<form:select name="b5not" path="b5not">
<option></option>
<option value="95">95</option>
<option value="96">96</option>
<option value="97">97</option>
<option value="98">98</option>
</form:select>
</td>
<td>
<form:input type="text" name="b5comm" path="b5comm" style="margin-left:0px; width:90%;"/><br />
</td>
</tr>
<tr>
<td>B6</td><td><font size=1>BEHAVIORAL ASSESSMENT</font> GDS</td>
<td>
<form:input type="radio" name="b6sub" path="b6sub" required ="required" value="1" style="margin-left:0px;" />1
<form:input type="radio" name="b6sub" path="b6sub" required ="required" value="0" />0</td>
<td>
<form:select name="b6not" path="b6not">
<option></option>
<option value="95">95</option>
<option value="96">96</option>
<option value="97">97</option>
<option value="98">98</option>
</form:select>
</td>
<td>
<form:input type="text" name="b6comm" path="b6comm" style="margin-left:0px; width:90%;"/><br />
</td>
</tr>
<tr>
<td>B7</td><td><font size=1>BEHAVIORAL ASSESSMENT</font> FAQ</td>
<td>
<form:input type="radio" name="b7sub" path="b7sub" required ="required" value="1" style="margin-left:0px;" />1
<form:input type="radio" name="b7sub" path="b7sub" required ="required" value="0" />0</td>
<td>
<form:select name="b7not" path="b7not">
<option></option>
<option value="95">95</option>
<option value="96">96</option>
<option value="97">97</option>
<option value="98">98</option>
</form:select>
</td>
<td>
<form:input type="text" name="b7comm" path="b7comm" style="margin-left:0px; width:90%;"/><br />
</td>
</tr>
<tr>
<td>B8</td><td><font size=1>EVALUATION FORM</font> Neurological<br>Examination Findings</td><td bgcolor=Silver></td><td bgcolor=Silver></td><td bgcolor=Silver></td>
</tr>
<tr>
<td>B9</td><td>Clinician Judgement of Symptoms</td><td bgcolor=Silver></td><td bgcolor=Silver></td><td bgcolor=Silver></td>
</tr>
<tr>
<td>C2</td><td>Neuropsychological Battery Scores</td><td bgcolor=Silver></td><td bgcolor=Silver></td><td bgcolor=Silver></td>
</tr>
<tr>
<td>D1</td><td>Clinician Dignosis</td><td bgcolor=Silver></td><td bgcolor=Silver></td><td bgcolor=Silver></td>
</tr>
<tr>
<td>D2</td><td>Clinician-assessed Medical Conditions</td><td bgcolor=Silver></td><td bgcolor=Silver></td><td bgcolor=Silver></td>
</tr>
</table>


<br>
<p class="footer">
National Alzheimer's Coordinating Center  | (206) 543 -8637  | fax :(206) 616-5927  |  naccmail@uw.edu  |  www.alz.washington.edu<br>
<b>UDS Version 3.0 ,March 2015</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Page 1 of 1  
</b></p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" />
</form:form>

</body>
</html>