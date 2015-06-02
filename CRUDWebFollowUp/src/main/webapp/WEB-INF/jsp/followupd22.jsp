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
h1,h2,h3,h4,h5,h6
{
font - family : verdana;
}
h4
{
background-color : Black;
line-height : 1.5em;
}
table.smallheader
{
font size :3px;
font-weight :bold;
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
p.oddSilver
{
border: CornflowerBlue 1px solid;
background-color : Silver;
font-weight :bold;
padding: 0px;
margin :0;
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
<td><label for="textvalue2" style="margin-left:180px;">Form date : </label><input type="text" name="MM" size ="2" maxlength="2" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" size ="2" maxlength="2" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" size ="4" maxlength="4" style="margin-left:0px; width:50px;"/>
<td><label for="textvalue3" style="margin-left:250px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">
<br>
<br>
<p class="oddSilver">
If any of the conditions below are present (even if successfully treated), please check Yes.
</p>
<form:form action="followupd22.do" method="POST" commandName="followupd22">
<table border = "1" cellpadding="3" cellspacing="0" width="100%" BORDERCOLOR="CornflowerBlue">
 <tr >
 	<th height="40" style="width:70%;"></th>
    <th style="width:10%;" bgcolor="SlateBlue">Yes</th>
    <th style="width:10%;" bgcolor="SlateBlue">No</th>
    <th style="width:10%;" bgcolor="SlateBlue">Not assessed</th>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;11. Arthritis <font size=2px > If No or Not assessed , <b> SKIP TO QUESTION 12</b></font><br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11a.  If yes, what type?<br>
	<form:input type="radio" name="artype" required ="required" path="artype" value="0" style="margin-left:90px;"/>1 Rheumatoid<br />
	<form:input type="radio" name="artype" required ="required" path="artype" value="1" style="margin-left:90px;"/>2 Osteoarthritis<br />
	<form:input type="radio" name="artype" required ="required" path="artype" value="2" style="margin-left:90px;"/>3 Other (SPECIFY) : <form:input type="text" name="artypex" required ="required" path="artypex" style="margin-left:0px; width:300px;"/><br />
	<form:input type="radio" name="artype" required ="required" path="artype" value="3" style="margin-left:90px;"/>9 Unknown<br />
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11b.  If yes, regions affected (check at least one):<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;11b1.<form:input type="checkbox" name="artupex"  path="artupex" value="1" style="margin-left:0px;"/>1 Upper extremity<br />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;11b2.<form:input type="checkbox" name="artloex"  path="artloex" value="1" style="margin-left:0px;"/>1 Lower extremity<br />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;11b3.<form:input type="checkbox" name="artspin"  path="artspin" value="1" style="margin-left:0px;"/>1 Spine<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;11b4.<form:input type="checkbox" name="artunkn"  path="artunkn" value="1" style="margin-left:0px;"/>1 Unknown<br />
   
   </td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="arth" required ="required" path="arth" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="arth" required ="required" path="arth" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="arth" required ="required" path="arth" value="8" />&nbsp;8</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;12. Incontinence-- urinary</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="urineinc" required ="required" path="urineinc" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="urineinc" required ="required" path="urineinc" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="urineinc" required ="required" path="urineinc" value="8" />&nbsp;8</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;13. Incontinence-- bowel</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="bowlic" required ="required" path="bowlic" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="bowlic" required ="required" path="bowlic" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="bowlic" required ="required" path="bowlic" value="8" />&nbsp;8</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;14. Sleep apnea</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="sleepap" required ="required" path="sleepap" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="sleepap" required ="required" path="sleepap" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="sleepap" required ="required" path="sleepap" value="8" />&nbsp;8</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;15. REM sleep behavior disorder(RBD)</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="remdis" required ="required" path="remdis" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="remdis" required ="required" path="remdis" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="remdis" required ="required" path="remdis" value="8" />&nbsp;8</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;16. Hyposomnia/insomnia</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="hyposom" required ="required" path="hyposom" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="hyposom" required ="required" path="hyposom" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="hyposom" required ="required" path="hyposom" value="8" />&nbsp;8</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;17. Other sleep disorder (SPECIFY) : <form:input type="text" name="sleepoth" path="sleepoth" style="margin-left:0px; width:300px;"/></td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="sleeptx" required ="required" path="sleeptx" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="sleeptx" required ="required" path="sleeptx" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="sleeptx" required ="required" path="sleeptx" value="8" />&nbsp;8</td>
  </tr>
  <tr>
   <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;18. Carotid procedure : angioplasty ,endarterectomy , or stent</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="angiocp" required ="required" path="angiocp" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="angiocp" required ="required" path="angiocp" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="angiocp" required ="required" path="angiocp" value="8" />&nbsp;8</td>
  </tr>
  <tr>
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;19. Percutaneous coronary intervention : angioplasty and/or stent</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="angiopci"  required ="required" path="angiopci" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="angiopci"  required ="required" path="angiopci" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="angiopci"  required ="required" path="angiopci" value="8" />&nbsp;8</td>
  </tr>
  <tr>
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;20. Procedure : pacemaker and/or defibrillator</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="pacemake" required ="required" path="pacemake" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="pacemake" required ="required" path="pacemake" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="pacemake" required ="required" path="pacemake" value="8" />&nbsp;8</td>
  </tr>
  <tr>
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;21. Procedure: heart valve replacement or repair</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="hvalve" required ="required" path="hvalve" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="hvalve" required ="required" path="hvalve" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="hvalve" required ="required" path="hvalve" value="8" />&nbsp;8</td>
  </tr>
  <tr>
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;22. Antibody-mediated encephalopathy <br>
  <font size=2px >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 22a. Specify antibody :&nbsp;&nbsp;&nbsp;</font><form:input type="text" name="antiencx" path="antiencx" style="margin-left:0px; width:400px;"/>
  </td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="antienc" required ="required" path="antienc" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="antienc" required ="required" path="antienc" value="1" />&nbsp;1</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="antienc" required ="required" path="antienc" value="8" />&nbsp;8</td>
  </tr>
  <tr>
  <td height="40" style="width:70%;">&nbsp;&nbsp;&nbsp;23. Other medical conditions or procedures not listed above <br>
  <font size=2px >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (IF YES, SPECIFY):&nbsp;&nbsp;&nbsp;</font><form:input type="text" name="othcondx" path="othcondx" style="margin-left:0px; width:400px;"/>
  </td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="othcond" required ="required" path="othcond" value="0" />&nbsp;0</td>
   <td style="width:10%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="radio" name="othcond" required ="required" path="othcond" value="1" />&nbsp;1</td>
   <td style="width:10%;" bgcolor="Silver" ></td>
  </tr>
  </table>



<p class="footer">
National Alzheimer's Coordinating Center  | (206) 543 -8637  | fax :(206) 616-5927  |  naccmail@uw.edu  |  www.alz.washington.edu<br>
<b>UDS (V3.0 ,March 2015) <b>Follow-up Visit</b></b> <font color = "Red">Form D2 : Clinician -assessed Medical Conditions </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Page 2 of 2  
</b></p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form:form>
</body>
</html>