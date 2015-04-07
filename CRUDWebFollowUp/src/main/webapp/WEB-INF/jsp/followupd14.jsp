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
float: left;
font-size:14px;
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
<form:form action="followupd14.do" method="POST" commandName="followupd14">
<table class="smallheader">
<tr>
<td><label for="textvalue1" style="margin-left:10px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:180px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
<td><label for="textvalue3" style="margin-left:250px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">
<table class="CDR" border=1>
<tr>
<td width= "70%" >Imaging findings</td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> No</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Yes</b></font></td>
<td width= "10%" bgcolor = "Silver"><font size=2px><b> Unknown/not assessed</b></font></td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp;7a. Large vessel infarct(s) </td>
<td > <form:input type="radio" name="imaglinf" path="imaglinf" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="imaglinf" path="imaglinf" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="imaglinf" path="imaglinf" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp; 7b.Lacunar infarct(s)</td>
<td > <form:input type="radio" name="imaglac" path="imaglac" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="imaglac" path="imaglac" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="imaglac" path="imaglac" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp; 7c. Macrohemorrhage(s)  </td>
<td > <form:input type="radio" name="imagmach" path="imagmach" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="imagmach" path="imagmach" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="imagmach" path="imagmach" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
<tr>
<td> &nbsp;&nbsp;&nbsp; 7d. Microhemorrhage(s)  </td>
<td > <form:input type="radio" name="imagmich" path="imagmich" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="imagmich" path="imagmich" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="imagmich" path="imagmich" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;7e. Moderate white-matter hyperintensity (CHS score 5-6)   </td>
<td > <form:input type="radio" name="imagmwwh" path="imagmwwh" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="imagmwwh" path="imagmwwh" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="imagmwwh" path="imagmwwh" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>

<tr>
<td> &nbsp;&nbsp;&nbsp;7f.Extensive white-matter hyperintensity (CHS score 7-8+) </td>
<td > <form:input type="radio" name="imagewmh" path="imagewmh" required ="required" value="0" style="margin-left:10px;" />0</td>
<td > <form:input type="radio" name="imagewmh" path="imagewmh" required ="required" value="1" style="margin-left:10px;" />1</td>
<td > <form:input type="radio" name="imagewmh" path="imagewmh" required ="required" value="8" style="margin-left:10px;" />8</td>
</tr>
</table>
<p>
 8. Does the subject have a dominantly inherited AD mutation(PSEN1,PSEN2,APP)? <br>
 <form:input type="radio" name="admut" path="admut" required ="required" value="0" style="margin-left:10px;" />0 No
 <form:input type="radio" name="admut" path="admut" required ="required" value="1" style="margin-left:10px;" />1 Yes
 <form:input type="radio" name="admut" path="admut" required ="required" value="9" style="margin-left:10px;" />9 Unknown/not assessed
</p>
<p>
 9. Does the subject have a hereditary FTLD mutation (e.g., GRN,VCP,TARBP,FUS,C9orf72,CHMP2B,MAPT)? <br>
 <form:input type="radio" name="ftldmut" path="ftldmut" required ="required" value="0" style="margin-left:10px;" />0 No
 <form:input type="radio" name="ftldmut" path="ftldmut" required ="required" value="1" style="margin-left:10px;" />1 Yes
 <form:input type="radio" name="ftldmut" path="ftldmut" required ="required" value="9" style="margin-left:10px;" />9 Unknown/not assessed
</p>
<p>
 10. Does the subject have a hereditary mutation other than an AD or FTLD mutation? <br>
 <form:input type="radio" name="othmut" path="othmut" required ="required" value="0" style="margin-left:10px;" />0 No
 <form:input type="radio" name="othmut" path="othmut" required ="required" value="1" style="margin-left:10px;" />1 Yes(SPECIFY)<form:input type="text" name="othmutx" path="othmutx" style="margin-left:0px; width:130px;"/>
 <form:input type="radio" name="othmut" path="othmut" required ="required" value="9" style="margin-left:10px;" />9 Unknown/not assessed
</p>
<br>
<br>

<br>
<table class="CDR" width = 60% border=1>
<tr bgcolor = "#08088A" style= "color :White;">
<td width= "70%"><b>Etiologic diagnoses</b></td>
<td width= "10%"><font size=2px><b> <br>Present</b></font></td>
</tr>
<tr>
<td> 11. Alzheimer's disease </td>
<td><form:input type="radio" name="alzdis" path="alzdis" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr>
<td> 12. Lewy body disease <br>
12b.<form:input type="radio" name="lbdis" path="lbdis" value="1" style="margin-left:10px;" />1 Parkinson's disease 
</td>
<td><form:input type="radio" name="park" path="park" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr> 
<td>13. Multiple system atrophy </td>
<td ><form:input type="radio" name="msa"  path="msa" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr> 
<td>14 . Frontotemporal lobar degeneration  </td>
<td></td>
</tr>
<tr> 
<td>14a . Progressive supranuclear palsy (PSP) </td>
<td><form:input type="radio" name="psp"  path="psp" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr> 
<td>14b . Corticobasal degeration (CBD) </td>
<td><form:input type="radio" name="cort" path="cort" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr> 
<td>14c . FTLD with motor neuron disease </td>
<td><form:input type="radio" name="ftldmo" path="ftldmo" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr> 
<td>14d . FTLD NOS </td>
<td><form:input type="radio" name="ftldnos" path="ftldnos" value="1" style="margin-left:10px;" />1</td>
</tr>
<tr> 
<td>14e . If FTLD (Question 14a-14d) is Present,specify FTLD subtype:<br>
<form:input type="radio" name="ftldsubt" path="ftldsubt" value="1" style="margin-left:10px;" />1 Tauopathy <br>
<form:input type="radio" name="ftldsubt" path="ftldsubt" value="2" style="margin-left:10px;" />2 TDP - 43 proteinopathy<br>
<form:input type="radio" name="ftldsubt" path="ftldsubt" value="3" style="margin-left:10px;" />3 Other (SPECIFY): <form:input type="text" name="ftldsubx" path="ftldsubx" size = "15" maxlength ="15"style="margin-left:0px;"/>
<br><form:input type="radio" name="ftldsubt" path="ftldsubt" value="9" style="margin-left:10px;" />9 Unknown<br>
 </td>
<td></td>
</tr>
</table>

<table class="B5" width = 40% border=1>
		<tr bgcolor = "#08088A" style= "color :White;">
			<th>&nbsp;&nbsp;Present&nbsp;&nbsp;</th>
			<th>&nbsp;&nbsp;Contributing&nbsp;&nbsp;</th>
			<th>&nbsp;&nbsp;Non Contributing&nbsp;&nbsp;<br></th>
		</tr>
		<tr >
			<td>11a<form:input type="radio" name="alzdisif" path="alzdisif" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="alzdisif" path="alzdisif" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="alzdisif" path="alzdisif" value="3" style="margin-left:10px;" />3</td>	
		</tr>
		<tr >
			<td>12a<form:input type="radio" name="lbdif" path="lbdif" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="lbdif" path="lbdif" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="lbdif" path="lbdif" value="3" style="margin-left:10px;" />3 <br> <br></td>	
		</tr>
		<tr >
			<td>13a<form:input type="radio" name="msaif" path="msaif" value="1" style="margin-left:10px;" />1<br><br></td>
			<td><form:input type="radio" name="msaif" path="msaif" value="2" style="margin-left:10px;" />2<br><br></td>
			<td><form:input type="radio" name="msaif" path="msaif" value="3" style="margin-left:10px;" />3<br><br></td>	
		</tr>
		<tr >
			<td>14a1<form:input type="radio" name="pspif" path="pspif" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="pspif" path="pspif" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="pspif" path="pspif" value="3" style="margin-left:10px;" />3</td>	
		</tr>
		<tr >
			<td>14b1<form:input type="radio" name="cortif" path="cortif" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="cortif" path="cortif" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="cortif" path="cortif" value="3" style="margin-left:10px;" />3</td>	
		</tr>
		<tr >
			<td>14c1<form:input type="radio" name="ftldmoif" path="ftldmoif" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="ftldmoif" path="ftldmoif" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="ftldmoif" path="ftldmoif" value="3" style="margin-left:10px;" />3</td>	
		</tr>
		<tr >
			<td>14d1<form:input type="radio" name="ftldnoif" path="ftldnoif" value="1" style="margin-left:10px;" />1<br><br><br><br><br><br><br></td>
			<td><form:input type="radio" name="ftldnoif" path="ftldnoif" value="2" style="margin-left:10px;" />2<br><br><br><br><br><br><br></td>
			<td><form:input type="radio" name="ftldnoif" path="ftldnoif" value="3" style="margin-left:10px;" />3<br><br><br><br><br><br><br> </td>	
			
		</tr>
		
		
		
</table>
<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> <font color ="Red"> Form D1 : Clinician Diagnosis</font>
</p>
<p class="footer1"> <b>Page 4 of 7</b> </p>
<input type = "submit" name="action" value="Move to Page 5" style="margin-left:400px;" /> 
</form:form>
</body>
</html>