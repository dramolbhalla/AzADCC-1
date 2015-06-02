<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinician -assessed Medical Conditions</title>
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
background-color : SlateBlue;
font-weight :bold;
padding: 0px;
margin :0;
}
p.oddSilver
{
border: CornflowerBlue 1px solid;
background-color : Silver;
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
<h3> Form D2:<font size = 5px>&nbsp;&nbsp;Clinician -assessed Medical conditions</font></h3>
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



<font size =3px><i>INSTRUCTION : This form is to be completed by the physician,physician's assistant,nurs practitioner,or other qualified
practitioner.For additional clarification and examples , see UDS Coding Guidebook
for Follow-Up Visit Packet , Form D2.</i></font>
<br><br>
<br>

<p class="odd">
<label for="textvalue11"> Medical Conditions and procedures</label>
</p>

<p class="even">
The following questions should be answered based on review of all available information , including new diagnoses made
during the current visit., previous medical records,procedures,laboratory tests,and the clinical exam.
</p>
<form:form action="followupd2.do" method="POST" commandName="followupd2">
<p class="even">
1. Cancer (excluding non-melanoma skin cancer),primary or metastatic<br>
&nbsp;&nbsp;<form:input type="radio" name="cancer" value="0" required ="required" path="cancer" style="margin-left:0px;" />0 &nbsp;&nbsp; No <b>(SKIP TO QUESTION 2)</b><br>
&nbsp;&nbsp;<form:input type="radio" name="cancer" value="1" required ="required" path="cancer" style="margin-left:0px;"/>1&nbsp;&nbsp; Yes, primary/non-metastatic<br>
&nbsp;&nbsp;<form:input type="radio" name="cancer" value="2" required ="required" path="cancer" style="margin-left:0px;"/>2&nbsp;&nbsp; Yes, metastatic<br>
&nbsp;&nbsp;<form:input type="radio" name="cancer" value="8" required ="required" path="cancer" style="margin-left:0px;"/>8&nbsp;&nbsp; Not assessed <b> (SKIP TO QUESTION 2)</b><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1a. If yes, specify primary site : <form:input type="text" name="cancsite" path="cancsite" style="margin-left:0px; width:200px;"/> 
</p>

<p class="oddSilver">
<b>If any of the conditions below are present(even if successfully treated),please check Yes.</b>
</p>

<p class="even">
2.  Diabetes
<form:input type="radio" name="diabet" value="0" required ="required" path="diabet" style="margin-left:10px;"/>0 No<br />
<form:input type="radio" name="diabet" value="1" required ="required" path="diabet" style="margin-left:90px;"/>1 Yes , Type I<br />
<form:input type="radio" name="diabet" value="2" required ="required" path="diabet" style="margin-left:90px;"/>2 Yes , Type II<br />
<form:input type="radio" name="diabet" value="3" required ="required" path="diabet" style="margin-left:90px;"/>3 Yes , other type <font size=2px>(diabetes insipidus , latent autoimmune diabetes/type 1.5, gestational disbetes)</font><br />
<form:input type="radio" name="diabet" value="9" required ="required" path="diabet" style="margin-left:90px;"/>9 Not assessed or unknown<br />
</p>
<table border = "1" cellpadding="3" cellspacing="0" width="100%" BORDERCOLOR="CornflowerBlue">
 <tr >
 	<th height="40" style="width:70%;"></th>
    <th style="width:10%;" bgcolor="SlateBlue">Yes</th>
    <th style="width:10%;" bgcolor="SlateBlue">No</th>
    <th style="width:10%;" bgcolor="SlateBlue">Not assessed</th>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;3. Myocardial infarct</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="myoinf" required ="required" path="myoinf" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="myoinf" required ="required" path="myoinf" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="myoinf" required ="required" path="myoinf" value="8" />&nbsp;8</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;4. Congestive heart failure</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="conghrt" required ="required" path="conghrt" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="conghrt" required ="required" path="conghrt" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="conghrt" required ="required" path="conghrt" value="8" />&nbsp;8</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;5. Atrial fibrillation</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="afibrill" required ="required" path="afibrill" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="afibrill" required ="required" path="afibrill" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="afibrill" required ="required" path="afibrill" value="8" />&nbsp;8</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;6. Hypertension</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="hypert" required ="required" path="hypert" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="hypert" required ="required" path="hypert" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="hypert" required ="required" path="hypert" value="8" />&nbsp;8</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;7. Angina</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="angina" required ="required" path="angina" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="angina" required ="required" path="angina" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="angina" required ="required" path="angina" value="9" />&nbsp;8</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;8. Hypercholesterolemia</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="hypchol" required ="required" path="hypchol" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="hypchol" required ="required" path="hypchol" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="hypchol" required ="required" path="hypchol" value="9" />&nbsp;8</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;9. B12 deficiency</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="vb12def" required ="required" path="vb12def" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="vb12def" required ="required" path="vb12def" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="vb12def" required ="required" path="vb12def" value="9" />&nbsp;8</td>
  </tr>
  <tr>
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;10. thyroid disease</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="thydis" required ="required" path="thydis" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="thydis" required ="required" path="thydis" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="thydis" required ="required" path="thydis" value="9" />&nbsp;8</td>
  </tr>
  </table>


<br>
<p class="footer">
National Alzheimer's Coordinating Center  | (206) 543 -8637  | fax :(206) 616-5927  |  naccmail@uw.edu  |  www.alz.washington.edu<br>
<b>UDS Version 3.0 ,March 2015</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Page 1 of 2  
</b></p>
<input type = "submit" name="action" value="Move to Page 2" style="margin-left:400px;" /> 
</form:form>
</body>
</html>