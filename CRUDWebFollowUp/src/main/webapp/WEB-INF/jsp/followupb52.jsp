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
min-width: 1050px;
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

Please answer the following questions based upon <b> changes in the past month.</b>Indicate yes only if the symptom represents a change (i.e., a new symptom or an exacerbation of a previous symptom)
in the past month;otherwise ,select <b> 0=No.</b>For each item marked Yes, indicate the SEVERITY of the symptom (how it affects the patient):
<br>1 = <b>Mild </b>(noticeable, but not a sig
nificant change)
2 = <b>Moderate</b> (significant, but not a dramatic change)
3 = <b>Severe</b> (very marked or prominent; a dramatic change) 
</p>
<br>
<br>
<form:form action="followupb52.do" method="POST" commandName="followupb52">
<table class="CDR" border=1>
<tr>
<td width= "70%"> </td>
<td width= "10%" bgcolor = "#08088A" style= "color :White;"><font size=2px><b> <br>Yes</b></font></td>
<td width= "10%" bgcolor = "#08088A" style= "color :White;"><font size=2px><b> <br>No</b></font></td>
<td width= "10%" bgcolor = "#08088A" style= "color :White;"><font size=2px><b> <br>Unknown</b></font></td>
</tr>
<tr>
<td> <b>6.  ANXIETY:</b> Does the patient become upset when separated
from you? Does he or she <br> have any other signs
of nervousness, such as shortness of breath,
sighing, being <br> unable to relax, or feeling
excessively tense? <br> <br> 
<td>6a.<form:input type="radio" name="anx" path="anx" required ="required" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="anx" path="anx" required ="required" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="anx" path="anx" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr>
<td> <b>7. ELATION OR EUPHORI -</b>
Does the patient appear to feel
too good or act ex
cessively<br> happy? <br> <br> 
<td>7a.<form:input type="radio" name="elat" path="elat" required ="required" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="elat" path="elat" required ="required" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="elat" path="elat" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr> 
<td><b>8. APATHY OR INDIFFERENCE-</b>
Does the patient seem less interested in his or
her usual <br>activities and in
the activities and plans
of others?<br> <br>    </td>
<td>8a.<form:input type="radio" name="apa" path="apa" required ="required" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="apa" path="apa" required ="required" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="apa" path="apa" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr> 
<td><b>9. DISINHIBITION -</b>
Does the patient seem to act impulsively? For exam
ple, does the<br> patient talk to strangers as if
he or she knows them, or does the patient sa
y things <br>that may hur
t people's feelings? <br> <br>    </td>
<td>9a.<form:input type="radio" name="disn" path="disn" required ="required" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="disn" path="disn" required ="required" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="disn" path="disn" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr> 
<td><b>10. IRRITABILITY OR LABILITY -</b>
Is the patient impatient or cranky? Does he
or she have <br>difficulty
coping with delays or
waiting for planned activities? <br> <br>    </td>
<td>10a.<form:input type="radio" name="irr" path="irr" required ="required" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="irr" path="irr" required ="required" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="irr" path="irr" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr> 
<td><b>11. MOTOR DISTURBANCE -</b>
Does the patient engage in repetitive activit
ies, such as pacing <br>around the house, handling
buttons, wrapping string, or doing other things
repeatedly? <br>  <br>    </td>
<td>11a.<form:input type="radio" name="mot" path="mot" required ="required" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="mot" path="mot" required ="required" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="mot" path="mot" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr> 
<td><b>12. NIGHTTIME BEHAVIORS -</b>
Does the patient awaken you duri
ng the night, rise too early <br>in
the morning, or take excessive
naps during the day? <br> <br>     </td>
<td>12a.<form:input type="radio" name="nite" path="nite" required ="required" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="nite" path="nite" required ="required" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="nite" path="nite" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>
<tr> 
<td><b>13. APPETITE AND EATING -</b>
Has the patient lost or gained weight, or
had a change in the <br>food he or she likes?  <br> <br>    </td>
<td>13a.<form:input type="radio" name="app" path="app" required ="required" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="app" path="app" required ="required" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="app" path="app" required ="required" value="9" style="margin-left:10px;" />9</td>
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
			<td> <br><b>6b. </b><br> <br> <br> </td>
			<td><form:input type="radio" name="anxsev" path="anxsev" required ="required" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="anxsev" path="anxsev" required ="required" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="anxsev" path="anxsev" required ="required" value="3" style="margin-left:10px;" />3</td>
			<td><form:input type="radio" name="anxsev" path="anxsev" required ="required" value="9" style="margin-left:10px;" />9</td>
			
		</tr>
		<tr>
			<td> <br><b>7b. </b><br> <br> </td>
			<td><form:input type="radio" name="elatsev" path="elatsev" required ="required" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="elatsev" path="elatsev" required ="required" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="elatsev" path="elatsev" required ="required" value="3" style="margin-left:10px;" />3</td>
			<td><form:input type="radio" name="elatsev" path="elatsev" required ="required" value="9" style="margin-left:10px;" />9</td>
			
		</tr>
		<tr>
			<td> <br><b>8b. </b><br> <br> </td>
			<td><form:input type="radio" name="apasev" path="apasev" required ="required" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="apasev" path="apasev" required ="required" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="apasev" path="apasev" required ="required" value="3" style="margin-left:10px;" />3</td>
			<td><form:input type="radio" name="apasev" path="apasev" required ="required" value="9" style="margin-left:10px;" />9</td>
			
		</tr>
		<tr>
			<td> <br><b>9b. </b><br> <br> <br></td>
			<td><form:input type="radio" name="disnsev" path="disnsev" required ="required" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="disnsev" path="disnsev" required ="required" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="disnsev" path="disnsev" required ="required" value="3" style="margin-left:10px;" />3</td>
			<td><form:input type="radio" name="disnsev" path="disnsev" required ="required" value="9" style="margin-left:10px;" />9</td>
			
		</tr>
			<tr>
			<td> <br><b>10b. </b><br> <br> <br> </td>
			<td><form:input type="radio" name="irrsev" path="irrsev" required ="required" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="irrsev" path="irrsev" required ="required" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="irrsev" path="irrsev" required ="required" value="3" style="margin-left:10px;" />3</td>
			<td><form:input type="radio" name="irrsev" path="irrsev" required ="required" value="9" style="margin-left:10px;" />9</td>
			
		</tr>
			<tr>
			<td> <br><b>11b. </b><br> <br> </td>
			<td><form:input type="radio" name="motsev" path="motsev" required ="required" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="motsev" path="motsev" required ="required" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="motsev" path="motsev" required ="required" value="3" style="margin-left:10px;" />3</td>
			<td><form:input type="radio" name="motsev" path="motsev" required ="required" value="9" style="margin-left:10px;" />9</td>
			
		</tr>
		<tr>
			<tr>
			<td> <br><b>12b. </b><br> <br> </td>
			<td><form:input type="radio" name="nitesev" path="nitesev" required ="required" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="nitesev" path="nitesev" required ="required" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="nitesev" path="nitesev" required ="required" value="3" style="margin-left:10px;" />3</td>
			<td><form:input type="radio" name="nitesev" path="nitesev" required ="required" value="9" style="margin-left:10px;" />9</td>
			
		</tr>
		<tr>
			<tr>
			<td> <br><b>13b. </b><br> <br>  </td>
			<td><form:input type="radio" name="appsev" path="appsev" required ="required" value="1" style="margin-left:10px;" />1</td>
			<td><form:input type="radio" name="appsev" path="appsev" required ="required" value="2" style="margin-left:10px;" />2</td>
			<td><form:input type="radio" name="appsev" path="appsev" required ="required" value="3" style="margin-left:10px;" />3</td>
			<td><form:input type="radio" name="appsev" path="appsev" required ="required" value="9" style="margin-left:10px;" />9</td>
			
		</tr>
		
</table>


<br>
<br>


<p class="footer">
<font color ="Black"><b>UDS (V3.0 ,March 2015) Follow-up Visit </b></font><font color ="Red"> Form B5 : NPI-Q</font>

</p>
<p class="footer1"> <b>Page 2 of 2</b> </p>
<br>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form:form>

</body>
</html>