<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Subject Demographics</title>
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
img 
{
margin-left : 900px;
}
p.odd 
{
border: CornflowerBlue 1px solid;
background-color : #E6E6E6;
font-weight :light;
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
p.even
{
border: CornflowerBlue 1px solid;
font-weight :bold;
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
<input type="text" value="FOLLOW - UP VISIT PACKET"  style="background-color:Black; color:White; width:200px; font-weight :bold;"/> &nbsp; &nbsp; 
 <b>NACC UNIFORM DATA SET(UDS)</b>
<h3> Form A3:<font size = 5px> &nbsp;Subject Family History</font></h3>
<br>
<font size =3px><b>
<table>
<tr>
<td>ADC name : &nbsp;<input type="text" name="ADC" style="margin-left:0px;"/></td>
<td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;Subject ID : &nbsp;<input type="text" name="ID" style="margin-left:0px;"/></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Form Date : &nbsp; <input type="text" name="MM" style="margin-left:0px; width:20px;"/> &nbsp; / &nbsp; <input type="text" name="DD" style="margin-left:0px; width:20px;"/> &nbsp; / &nbsp;<input type="text" name="YY" style="margin-left:0px; width:70px;"/></td>
</tr>
</table>
<table>
<tr>
<td>Visit # : <input type="text" name="Visit" style="margin-left:0px; width:50px;"/></td>
<td>&nbsp;&nbsp;Examiner's initials: <input type="text" name="Initials" style="margin-left:0px;"/></td>
</tr>
</table></b></font>
<HR COLOR="CornflowerBlue" WIDTH="100%">



<font size =3px><i>INSTRUCTION : This form is to be completed by clinician with experience in evaluating patients with neurological problems<br>
and psychiatric conditions. For additional clarification and examples , see UDS Coding Guidebook for Follow-Up Visit Packet , 
Form A3</i></font>

<br>
<br>

<p class="odd">
<b>For subjects who are receiving UDS Version 3 of Form A3 for the first time : </b>Please answer Question 1 and continue to <br>
provide all known information on all biological parents,full siblings, and biological children ,even if you have provided <br>
similar information on a UDS Version 2 Form A3. <br>
<b> Correction or new information on previously submitted family members</b> -- For family members who were denoted as being <br>
"affected" with a neurological or psychiatric condition or who were not affected at a previous UDS visit, any corrections to <br>
their data should be made to that previous A3 Form. Any newly obtained information (e.g., new mutation information , new <br> 
diagnoses, new method of evaluation),including for family members previously reported as being affected at a past UDS <br>
visit , should be indicated on this form and should not be submitted as a correction to a previously submitted Form A3.<br>
<br>
A summary of all previously submitted family history data can be found at : <font size =2px color= "CornflowerBlue"> https://www.alz.washington.edu/MEMBER/siteprint.html.</font>

</p>

<br>
<br>

<table  width ="100% " style="border: 1px solid CornflowerBlue;">
<tr>
<td width= "50%">1.  Since the last visit ,is new information available concerning <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;genetic mutations addressed by Question 2a through 4b,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;below? </td>
<td width= "50%"><input type="radio" name="option" value="0" style="margin-left:0px;" />0 No <b> (SKIP TO QUESTION 5)</b><br />
<input type="radio" name="option" value="1" style="margin-left:0px;"/>1 YES<br />
<input type="radio" name="option" value="9"  style="margin-left:0px;"/>9 Unknown <b> (SKIP TO QUESTION 5)</b><br /></td>
</tr>
<tr bgcolor = "Silver">
<td  width= "50%">2a. In this family ,is there evidence for an AD mutation?If yes <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;select predominant mutation.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NOTE : APOE should not be reported here. </td>
<td width= "50%"><input type="radio" name="option" value="0" style="margin-left:0px;" />0 No <b> < (SKIP TO QUESTION 3a)</b><br />
<input type="radio" name="option" value="1" style="margin-left:0px;" style="margin-left:0px;"/>1 YES ,APP<br />
<input type="radio" name="option" value="2"  style="margin-left:0px;" style="margin-left:0px;"/> 2 YES,PS-1 (PSEN 1)<br>
<input type="radio" name="option" value="8"  style="margin-left:0px;" style="margin-left:0px;"/> 8 YES,other (SPECIFY)<br>
<input type="radio" name="option" value="9"  style="margin-left:0px;" style="margin-left:0px;"/> 9 Unknown whether mutation exists <font size=2px> <b> (SKIP TO QUESTION 3a)</b><br></font>
</td>
</tr>
<tr>
<td width= "50%">2b. Source of evidence for AD mutation (check one): </td>
<td width= "50%"><input type="radio" name="option" value="1" style="margin-left:0px;" />1 Family report (no test documentation available)<br />
<input type="radio" name="option" value="2" style="margin-left:0px;"/>2 Commercial test documentation<br />
<input type="radio" name="option" value="3"  style="margin-left:0px;"/>3 Research lab test documentation<br />
<input type="radio" name="option" value="8" style="margin-left:0px;"/>8 Other (Specify) : <input type="text" name="Other" style="margin-left:0px;"/><br />
<input type="radio" name="option" value="9"  style="margin-left:0px;"/>9 Unknown<br /></td>
</tr>
<tr bgcolor = "Silver">
<td  width= "50%">3a. In this family ,is there evidence for an FTLD mutation?If yes <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;select predominant mutation.</td>
<td width= "50%"><input type="radio" name="option" value="0" style="margin-left:0px;" />0 No <b> < (SKIP TO QUESTION 4a)</b><br />
<input type="radio" name="option" value="1" style="margin-left:0px;" style="margin-left:0px;"/>1 YES ,MAPT<br />
<input type="radio" name="option" value="2"  style="margin-left:0px;" style="margin-left:0px;"/> 2 YES,PGRN<br>
<input type="radio" name="option" value="3"  style="margin-left:0px;" style="margin-left:0px;"/> 3 Yes, C9orf72<br>
<input type="radio" name="option" value="4"  style="margin-left:0px;" style="margin-left:0px;"/> 3 Yes, FUS<br>
<input type="radio" name="option" value="8"  style="margin-left:0px;" style="margin-left:0px;"/> 3 Yes, C9orf72<br>
<input type="radio" name="option" value="9"  style="margin-left:0px;" style="margin-left:0px;"/> 9 Unknown whether mutation exists <font size=2px> <b> (SKIP TO QUESTION 4a)</b><br></font>
</td>
</tr>
</table>
<p class="footer">
<font size = 3px color="Grey">National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br></font>
<b>UDS Version 3.0 ,March 2015</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Page 1 of 5  
</b></p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" />
</body>
</html>