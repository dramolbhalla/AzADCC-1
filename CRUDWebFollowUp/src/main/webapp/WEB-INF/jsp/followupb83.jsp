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
width: 900px;
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
</style>
</head>
<body>
<table class="smallheader">
<tr>
<td><label for="textvalue1" style="margin-left:10px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:180px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
<td><label for="textvalue3" style="margin-left:160px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">

<br>
<br>
<br>

<p>
&nbsp;&nbsp;&nbsp;Please complete the appropriate sections below,using your best clinical judgement in selecting findings that indicate the <br>
&nbsp;&nbsp;&nbsp;likely syndrome(s) that is/are present.
</p>
<form:form action="followupb83.do" method="POST" commandName="followupb83">
<p class="odd">
<b> 6. Findings suggesting ALS (e.g., muscle wasting,fasciculations,upper motor neuron and/or lower motor neuron signs)</b> <br>
</p>
<p class="even">
<form:input type="radio" name="alsfind" path="alsfind" required ="required" value="0" style="margin-left:10px;" />0 &nbsp;No<br />
<form:input type="radio" name="alsfind" path="alsfind" required ="required" value="1" style="margin-left:10px;"/>1 &nbsp;Yes<br />
</p>
<p class="odd">
<b> 7. Normal - pressure hydrocephalus : gait apraxia</b> <br>
</p>
<p class="even">
<form:input type="radio" name="gaitnph" path="gaitnph" required ="required" value="0" style="margin-left:10px;" />0 &nbsp; No<br />
<form:input type="radio" name="gaitnph" path="gaitnph" required ="required" value="1" style="margin-left:10px;"/>1 &nbsp;Yes<br />
</p>
<p class="odd">
<b> 8 . Other findings (e.g., cerebellar ataxia,chorea ,myoclonus)</b> <br>
<b> (NOTE : For this question , do not specify symptoms that have already been checked above)</b>
</p>
<p class="even">
<form:input type="radio" name="othneur" path="othneur" required ="required" value="0" style="margin-left:10px;" />0 &nbsp;No<br />
<form:input type="radio" name="othneur" path="othneur" required ="required" value="1" style="margin-left:10px;"/>1 &nbsp;Yes (SPECIFY) : <form:input type="text" name="othneurx" path="othneurx" required ="required" style="margin-left:20px; width:300px ;"/> <br />
</p>

<br>
<br>
<br>
<br>
<br>


<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Follow-up Visit</b></font> <font color = "Red">Form B8 : Neurological Examination Findings </font>  
</p>
<p class="footer1"> <b>Page 3 of 3</b> </p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form:form>
</body>
</html>