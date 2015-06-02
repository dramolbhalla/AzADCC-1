<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NPI</title>
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
float: left;
font-size:14px;
}
table.B5
{
width :"100% ";
display: inline-block;
border: 1px solid CornflowerBlue;
font-size:13px;
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
<h3> Form B5:<font size = 5px> &nbsp;<font size = 3px color ="GREY"> &nbsp;BEHAVIORAL ASSESSMENT</font>&nbsp;&nbsp;Neuropsychiatric Inventory Questionnaire (NPI-Q<sup> 1</sup>)</font></h3>
<br>
<table class="smallheader">
<tr>
<td>ADC name : &nbsp;<input type="text" name="ID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue1" style="margin-left:10px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:10px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
<td><label for="textvalue3" style="margin-left:10px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
<td><label for="textvalue4" style="margin-left:10px;">Examiner's initials : </label><input type="text" name="EI" style="margin-left:0px; width:50px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">



<font size =3px><i>INSTRUCTIONs : This form is to be completed by the clinician or other
trained health professional per informant interview, as described
by the training video. (This is
not
to be completed by the subject as a paper-
and-pencil self-report.) For information regarding
NPI-Q Interviewer Certification, see UDS Coding Guidebook for Initial Visit Packet, Form B5. Check only
<u>one</u>
box for each category of response</i></font>
<br>
<br>
<br>
<p class="even">

Please answer the following questions based upon <b> changes in the past month.</b>Indicate yes only if the symptom represents a change (i.e., a new symptom or an exacerbation of a previous symptom)
in the past month;otherwise ,select <b> 0=No.</b>For each item marked Yes, indicate the SEVERITY of the symptom (how it affects the patient):
<br>1 = <b>Mild </b>(noticeable, but not a sig
nificant change)
2 = <b>Moderate</b> (significant, but not a dramatic change)
3 = <b>Severe</b> (very marked or prominent; a dramatic change) 
</p>
<br>
<br>
<form:form action="initialb5.do" method="POST" commandName="initialb5">
<table class="CDR" border=1>
<tr>
<td width= "70%"><b>1.  NPI CO-PARTICIPANT:</b> <form:input type="radio" name="NPI" path="npiqinf" required ="required" value="1" />1 Spouse <form:input type="radio" name="NPI" path="npiqinf" required ="required" value="2" />2 Child <form:input type="radio" name="NPI" path="npiqinf" required ="required" value="3" />3 Other (SPECIFY) <form:input type="text" name="NPIOther" path="npiqinfx" style="margin-left:0px; width:20px;"/></td>
<td width= "10%" bgcolor = "#08088A" style= "color :White;"><font size=2px><b> <br>Yes</b></font></td>
<td width= "10%" bgcolor = "#08088A" style= "color :White;"><font size=2px><b> <br>No</b></font></td>
<td width= "10%" bgcolor = "#08088A" style= "color :White;"><font size=2px><b> <br>Unknown</b></font></td>
</tr>
<tr>
<td> <b>2 . DELUSIONS -</b>
Does the patient believe that ot
hers are stealing from him or her, or <br> planning to harm him or
her in some way? 
<td>2a.<form:input type="radio" name="del"  path="del" required ="required" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="del" path="del" required ="required" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="del" path="del" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td> <b>3. HALLUCINATIONS -</b>
Does the patient act as if he or she hears voice
s? Does he or she <br>talk to people who are not
there?  
<td>3a.<form:input type="radio" name="hall" path="hall" required ="required" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="hall" path="hall" required ="required" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="hall" path="hall" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr> 
<td><b>4. AGITATION OR AGGRESSION-</b>
Is the patient stubborn and resistive to
help from others?  </td>
<td>4a.<form:input type="radio" name="agit" path="agit" required ="required" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="agit" path="agit" required ="required" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="agit" path="agit" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr> 
<td><b>5. DEPRESSION OR DYSPHORIA -</b>
Does the patient act as if he or she is sa
d or in low <br>spirits? Does he or she cry?   </td>
<td>5a.<form:input type="radio" name="depd" path="depd" value="1" required ="required" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="depd" path="depd" value="0" required ="required" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="depd" path="depd" value="9" required ="required" style="margin-left:10px;" />9</td>
</tr>
</table>

 &nbsp;&nbsp;&nbsp;<table class="B5" border=1>
		<tr>
			<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<th>SEVERITY</th>
			<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
		</tr>
		<tr bgcolor = "#08088A" style= "color :White;">
			<td ></td>
			<td  width= "30%">Mild</td>
			<td width= "30%">Mod</td>
			<td width= "20%">Severe</td>
			<td width= "30%">Unknown</td>
			
		</tr>
		<tr>
			<td> <br><b> 2b.</b></td>
			<td><form:input type="radio" name="delsev" path="delsev" required ="required" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="delsev" path="delsev" required ="required" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="delsev" path="delsev" required ="required" value="3" style="margin-left:10px;" />3</td>
			<td><form:input type="radio" name="delsev" path="delsev" required ="required" value="9" style="margin-left:10px;" />9</td>
			
		</tr>
		<tr>
			<td> <br><b> 3b. <br></b></td>
			<td><form:input type="radio" name="hallsev" path="hallsev" required ="required" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="hallsev" path="hallsev" required ="required" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="hallsev" path="hallsev" required ="required" value="3" style="margin-left:10px;" />3</td>
			<td><form:input type="radio" name="hallsev" path="hallsev" required ="required" value="9" style="margin-left:10px;" />9</td>
			
		</tr>
		<tr>
			<td> <b> 4b. <br></b></td>
			<td><form:input type="radio" name="agitsev" path="agitsev" required ="required" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="agitsev" path="agitsev" required ="required" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="agitsev" path="agitsev" required ="required" value="3" style="margin-left:10px;" />3</td>
			<td><form:input type="radio" name="agitsev" path="agitsev" required ="required" value="9" style="margin-left:10px;" />9</td>
			
		</tr>
		<tr>
			<td><br> <b> 5b.<br></b></td>
			<td><form:input type="radio" name="depdsev" path="depdsev" value="1" required ="required" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="depdsev" path="depdsev" value="2" required ="required" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="depdsev" path="depdsev" value="3" required ="required" style="margin-left:10px;" />3</td>
			<td><form:input type="radio" name="depdsev" path="depdsev" value="9" required ="required" style="margin-left:10px;" />9</td>
			
		</tr>
		
</table>


<br>
<br>

<sup> 1 </sup><font size=2px> Copyright
©
Jeffrey L. Cummings, MD. Reproduced by permission.  </font>
<p class="footer">
<font color ="Black"><b>UDS (V3.0 ,March 2015) </b></font> <font size=2px>National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br></font>

</p>
<p class="footer1"> <b>Page 1 of 2</b> </p>
<input type = "submit" name="action" value="Move to Page 2" style="margin-left:400px;" /> 
</form:form>
</body>
</html>