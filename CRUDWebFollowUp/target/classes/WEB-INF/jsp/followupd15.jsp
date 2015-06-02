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

<table class="smallheader">
<tr>
<td><label for="textvalue1" style="margin-left:10px;">Subject ID : </label> &nbsp; <input  type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:180px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
<td><label for="textvalue3" style="margin-left:250px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">
<form:form action="followupd15.do" method="POST" commandName="followupd15">
<br>
<table class="CDR" width = 100% border=1>
<tr>
<th> Condition </th>
<th> Present </th>
<th> Primary</th>
<th> Contributing </th>
<th> Non Contributing </th>
</tr>

<tr>
<td> 15. Vascular brain injury (based on clinical or imaging evidence)<br>
If significant vascular brain injury is absent,SKIP TO QUESTION 6 <br>
</td>
<td><form:input type="radio" name="cvd" path="cvd" value="1" style="margin-left:10px;" />1</td>
<td>15a<form:input type="radio" name="cvdif" path="cvdif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="cvdif" path="cvdif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="cvdif" path="cvdif" value="3" style="margin-left:10px;" />3</td>
</tr>

<tr>
<td> 15b. Previous symptomatic stroke?<br>
<form:input type="radio" name="prevstk" path="prevstk" value="0" style="margin-left:10px;" />0 No (SKIP TO QUESTION 15c)<br>
<form:input type="radio" name="prevstk" path="prevstk" value="1" style="margin-left:10px;" />1 Yes<br>
<br>
</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td> 15b1. Temporal relationship between stroke and cognitive decline?<br>
<form:input type="radio" name="strokdec" path="strokdec" value="0" style="margin-left:10px;" />0 No<br>
<form:input type="radio" name="strokdec" path="strokdec" value="1" style="margin-left:10px;" />1 Yes<br>
<br>
</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td> 15b2. Confirmation of stroke by neuroimaging?<br>
<form:input type="radio" name="stkimag" path="stkimag" value="0" style="margin-left:10px;" />0 No<br>
<form:input type="radio" name="stkimag" path="stkimag" value="1" style="margin-left:10px;" />1 Yes<br>
<form:input type="radio" name="stkimag" path="stkimag" value="9" style="margin-left:10px;" />9 Unknown;no relevant imaging data available<br>
<br>
</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td> 15c. Is there imaging evidence of cystic infarction in cognitive networks?<br>
<form:input type="radio" name="infnetw" path="infnetw" value="0" style="margin-left:10px;" />0 No<br>
<form:input type="radio" name="infnetw" path="infnetw" value="1" style="margin-left:10px;" />1 Yes<br>
<form:input type="radio" name="infnetw" path="infnetw" value="9" style="margin-left:10px;" />9 Unknown;no relevant imaging data available<br>
<br>
</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td> 15d. Is there imaging evidence of cystic infarction , imaging evidence of extensive white matter<br>
hyperintensity (CHS grade 7-8+), and impairment in executive function?<br>
<form:input type="radio" name="infwmh" path="infwmh" value="0" style="margin-left:10px;" />0 No<br>
<form:input type="radio" name="infwmh" path="infwmh" value="1" style="margin-left:10px;" />1 Yes<br>
<form:input type="radio" name="infwmh" path="infwmh" value="9" style="margin-left:10px;" />9 Unknown;no relevant imaging data available<br>
<br>
</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>

<tr>
<td> 16. Essential tremor<br>
</td>
<td><form:input type="radio" name="esstrem" path="esstrem" value="1" style="margin-left:10px;" />1</td>
<td>16a<form:input type="radio" name="esstreif" path="esstreif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="esstreif" path="esstreif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="esstreif" path="esstreif" value="3" style="margin-left:10px;" />3</td>
</tr>


<tr>
<td> 17. Down syndrome<br>
</td>
<td><form:input type="radio" name="downs" path="downs" value="1" style="margin-left:10px;" />1</td>
<td>17a<form:input type="radio" name="downsif" path="downsif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="downsif" path="downsif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="downsif" path="downsif" value="3" style="margin-left:10px;" />3</td>
</tr>

<tr>
<td> 18. Huntington's disease<br>
</td>
<td><form:input type="radio" name="hunt" path="hunt" value="1" style="margin-left:10px;" />1</td>
<td>18a<form:input type="radio" name="huntif" path="huntif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="huntif" path="huntif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="huntif" path="huntif" value="3" style="margin-left:10px;" />3</td>
</tr>

<tr>
<td> 19. Prion disease (CJD,other)<br>
</td>
<td><form:input  type="radio" name="prion" path="prion" value="1" style="margin-left:10px;" />1</td>
<td>19a<form:input type="radio" name="prionif" path="prionif"  value="1" style="margin-left:10px;" />1</td>
<td><form:input  type="radio" name="prionif" path="prionif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="prionif" path="prionif" value="3" style="margin-left:10px;" />3</td>
</tr>

</table>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Initial Visit</b></font> <font color ="Red"> Form D1 : Clinician Diagnosis</font>
</p>
<p class="footer1"> <b>Page 6 of 7</b> </p>
<input type = "submit" name="action" value="Move to Page 6" style="margin-left:400px;" /> 
</form:form>
</body>
</html>