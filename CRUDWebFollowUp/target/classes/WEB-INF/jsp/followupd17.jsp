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
width: 1050px;
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
font-size:17px;
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
<form:form action="followupd17.do" method="POST" commandName="followupd17">

<table class="smallheader">
<tr>
<td><label for="textvalue1" style="margin-left:10px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:180px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
<td><label for="textvalue3" style="margin-left:250px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">

<br>
<table class="CDR" width = 100% border=1>
<tr>
<td> 33. Cognitive impairment due to alcohol abuse<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;33b. Current alcohol abuse: <br>
<form:input type="radio" name="alcdem" path="alcdem" value="0" style="margin-left:10px;" />0 No
<form:input type="radio" name="alcdem" path="alcdem" value="1" style="margin-left:10px;" />1 Yes
<form:input type="radio" name="alcdem" path="alcdem" value="9" style="margin-left:10px;" />9 Unknown
</td>
<td><form:input type="radio" name="alcabuse" path="alcabuse" value="1" style="margin-left:10px;" />1</td>
<td>33a<form:input type="radio" name="alcdemif" path="alcdemif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="alcdemif" path="alcdemif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="alcdemif" path="alcdemif" value="3" style="margin-left:10px;" />3</td>
</tr>

<tr>
<td> 34. Cognitive impairment due to other substance abuse<br>
</td>
<td><form:input type="radio" name="impsub" path="impsub" value="1" style="margin-left:10px;" />1</td>
<td>34a<form:input type="radio" name="impsubif" path="impsubif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="impsubif" path="impsubif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="impsubif" path="impsubif" value="3" style="margin-left:10px;" />3</td>
</tr>

<tr>
<td> 35. Cognitive impairment due to systemic disease/medical illness (as indicated on form D2)<br>
</td>
<td><form:input type="radio" name="dysill" path="dysill" value="1" style="margin-left:10px;" />1</td>
<td>35a<form:input type="radio" name="dysillif" path="dysillif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="dysillif" path="dysillif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="dysillif" path="dysillif" value="3" style="margin-left:10px;" />3</td>
</tr>

<tr>
<td> 36. Cognitive impairment due to medication<br>
</td>
<td><form:input type="radio" name="meds" path="meds" value="1" style="margin-left:10px;" />1</td>
<td>36a<form:input type="radio" name="medsif" path="medsif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="medsif" path="medsif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="medsif" path="medsif" value="3" style="margin-left:10px;" />3</td>
</tr>

<tr>
<td> 37. Cognitive impairment NOS<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;37b. If Present,specify: <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cogpresent1" size = "25" maxlength = "25" style="margin-left:0px;"/>
</td>
<td><input type="radio" name="NOS1" value="1" style="margin-left:10px;" />1</td>
<td>37a<input type="radio" name="cogset1" value="1" style="margin-left:10px;" />1</td>
<td><input type="radio" name="cogset1" value="2" style="margin-left:10px;" />2</td>
<td><input type="radio" name="cogset1" value="3" style="margin-left:10px;" />3</td>
</tr>
<tr>
<td> 38. Cognitive impairment NOS<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;37b. If Present,specify: <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cogpresent2" size = "25" maxlength = "25" style="margin-left:0px;"/>
</td>
<td><input type="radio" name="NOS2" value="1" style="margin-left:10px;" />1</td>
<td>38a<input type="radio" name="cogset2" value="1" style="margin-left:10px;" />1</td>
<td><input type="radio" name="cogset2" value="2" style="margin-left:10px;" />2</td>
<td><input type="radio" name="cogset2" value="3" style="margin-left:10px;" />3</td>
</tr>
<tr>
<td> 39. Cognitive impairment NOS<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;37b. If Present,specify: <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cogpresent3" size = "25" maxlength = "25" style="margin-left:0px;"/>
</td>
<td><input type="radio" name="NOS3" value="1" style="margin-left:10px;" />1</td>
<td>39a<input type="radio" name="cogset3" value="1" style="margin-left:10px;" />1</td>
<td><input type="radio" name="cogset3"  value="2" style="margin-left:10px;" />2</td>
<td><input type="radio" name="cogset3"  value="3" style="margin-left:10px;" />3</td>
</tr>

</table>



<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Initial Visit</b></font> <font color ="Red"> Form D1 : Clinician Diagnosis</font>
</p>
<p class="footer1"> <b>Page 7 of 7</b> </p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form:form>


</body>
</html>