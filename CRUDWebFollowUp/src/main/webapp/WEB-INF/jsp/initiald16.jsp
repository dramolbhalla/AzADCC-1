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

<form:form action="initiald16.do" method="POST" commandName="initiald16">
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
<th> Ethiologic diagnoses </th>
<th> Present </th>
<th> Primary</th>
<th> Contributing </th>
<th> Non Contributing </th>
</tr>
<tr>
<td> 20. Traumatic brain injury<br>
20 b. If present , does the subject have symptoms consistent with chronic traumatic encephalopathy? <br>
<form:input type="radio" name="brnincte" path="brnincte" value="0" style="margin-left:10px;" />0 No 
<form:input type="radio" name="brnincte" path="brnincte" value="1" style="margin-left:10px;" />1 Yes 
<form:input type="radio" name="brnincte" path="brnincte" value="9" style="margin-left:10px;" />9 Unknown 
</td>
<td><form:input type="radio" name="brninj" path="brninj" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="brninjif" path="brninjif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="brninjif" path="brninjif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="brninjif" path="brninjif" value="3" style="margin-left:10px;" />3</td>
</tr>
<tr>
<td> 21. Normal - pressure hydrocephalus<br>
</td>
<td><form:input type="radio" name="hyceph" path="hyceph" value="1" style="margin-left:10px;" />1</td>
<td>21a<form:input type="radio" name="hycephif" path="hycephif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="hycephif" path="hycephif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="hycephif" path="hycephif" value="3" style="margin-left:10px;" />3</td>
</tr>

<tr>
<td> 22. Epilepsy<br>
</td>
<td><form:input type="radio" name="epilep" path="epilep" value="1" style="margin-left:10px;" />1</td>
<td>22a<form:input type="radio" name="epilepif" path="epilepif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="epilepif" path="epilepif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="epilepif" path="epilepif" value="3" style="margin-left:10px;" />3</td>
</tr>


<tr>
<td> 23. CNS neoplasm<br>
23b. <form:input type="radio" name="neopstat" path="neopstat" value="1" style="margin-left:10px;" />1 Benign 
<form:input type="radio" name="neopstat" path="neopstat" value="2" style="margin-left:10px;" />2 Malignant
</td>
<td><form:input type="radio" name="neop" path="neop" value="1" style="margin-left:10px;" />1</td>
<td>23a<form:input type="radio" name="neopif" path="neopif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="neopif" path="neopif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="neopif" path="neopif" value="3" style="margin-left:10px;" />3</td>
</tr>

<tr>
<td> 24. Human immunodeficiency virus (HIV)<br>
</td>
<td><form:input type="radio" name="hiv" path="hiv" value="1" style="margin-left:10px;" />1</td>
<td>24a<form:input type="radio" name="hivif" path="hivif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="hivif" path="hivif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="hivif" path="hivif" value="3" style="margin-left:10px;" />3</td>
</tr>

<tr>
<td> 25. Cognitive impairment due to other neurologic,genetic,or infectious conditions not listed above<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;32b. If Present,specify: <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" name="othcogx" path="othcogx" size = "25" maxlength = "25" style="margin-left:0px;"/>
</td>
<td><form:input type="radio" name="othcog" path="othcog" value="1" style="margin-left:10px;" />1</td>
<td>25a<form:input type="radio" name="othcogif" path="othcogif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="othcogif" path="othcogif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="othcogif" path="othcogif" value="3" style="margin-left:10px;" />3</td>
</tr>

</table>



<table class="CDR" width = 100% border=1>
<tr>
<th> Condition </th>
<th> Present </th>
<th> Primary</th>
<th> Contributing </th>
<th> Non Contributing </th>
</tr>
<tr>
<td> 26. Active Depression<br>
26 b. If present , select one <br>
<form:input type="radio" name="deptreat" path="deptreat" value="0" style="margin-left:10px;" />0 Untreated<br>
<form:input type="radio" name="deptreat" path="deptreat" value="1" style="margin-left:10px;" />1 Treated with medication and/or counselling<br>

</td>
<td><form:input type="radio" name="dep" path="dep" value="1" style="margin-left:10px;" />1</td>
<td>26a<form:input type="radio" name="depif" path="depif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="depif" path="depif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="depif" path="depif" value="3" style="margin-left:10px;" />3</td>
</tr>
<tr>
<td> 27. Bipolar disorder<br>
</td>
<td><form:input type="radio" name="bipoldx" path="bipoldx" value="1" style="margin-left:10px;" />1</td>
<td>27a<form:input type="radio" name="bipoldif" path="bipoldif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="bipoldif" path="bipoldif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="bipoldif" path="bipoldif" value="3" style="margin-left:10px;" />3</td>
</tr>

<tr>
<td> 28. Schizophrenia or other psychosis<br>
</td>
<td><form:input type="radio" name="schizop" path="schizop" value="1" style="margin-left:10px;" />1</td>
<td>28a<form:input type="radio" name="schizoif" path="schizoif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="schizoif" path="schizoif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="schizoif" path="schizoif" value="3" style="margin-left:10px;" />3</td>
</tr>


<tr>
<td> 29. Anxiety Disorder<br>
</td>
<td><form:input type="radio" name="anxiet" path="anxiet" value="1" style="margin-left:10px;" />1</td>
<td>29a<form:input type="radio" name="anxietif" path="anxietif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="anxietif" path="anxietif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="anxietif" path="anxietif" value="3" style="margin-left:10px;" />3</td>
</tr>

<tr>
<td> 30. Delirium <br>
</td>
<td><form:input type="radio" name="delir" path="delir" value="1" style="margin-left:10px;" />1</td>
<td>30a<form:input type="radio" name="delirif" path="delirif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="delirif" path="delirif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="delirif" path="delirif" value="3" style="margin-left:10px;" />3</td>
</tr>

<tr>
<td> 31. Post- traumatic stress disorder(PTSD)<br>
</td>
<td><form:input type="radio" name="ptsddx" path="ptsddx" value="1" style="margin-left:10px;" />1</td>
<td>31a<form:input type="radio" name="ptsddxif" path="ptsddxif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="ptsddxif" path="ptsddxif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="ptsddxif" path="ptsddxif" value="3" style="margin-left:10px;" />3</td>
</tr>

<tr>
<td> 32. Other psychiatric disease<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;32b. If Present,specify: <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="othpsyx" path="othpsyx"  size = "25" maxlength = "25" style="margin-left:0px;"/>
</td>
<td><form:input type="radio" name="othpsy" path="othpsy" value="1" style="margin-left:10px;" />1</td>
<td>32a<form:input type="radio" name="othpsyif" path="othpsyif" value="1" style="margin-left:10px;" />1</td>
<td><form:input type="radio" name="othpsyif" path="othpsyif" value="2" style="margin-left:10px;" />2</td>
<td><form:input type="radio" name="othpsyif" path="othpsyif" value="3" style="margin-left:10px;" />3</td>
</tr>

</table>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Initial Visit</b></font> <font color ="Red"> Form D1 : Clinician Diagnosis</font>
</p>
<p class="footer1"> <b>Page 6 of 7</b> </p>
<input type = "submit" name="action" value="Move to Page 7" style="margin-left:400px;" /> 
</form:form>
</body>
</html>