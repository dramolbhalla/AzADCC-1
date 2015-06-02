<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Subject Medications</title>
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
table.Biological
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
<td>Subject ID : &nbsp;<input type="text" name="ID" style="margin-left:0px;"/></td>
<td><label for="textvalue1" style="margin-left:120px;">Form Date : </label> &nbsp; <input type="text" name="MM" style="margin-left:0px; width:20px;"/> &nbsp; / &nbsp; <input type="text" name="DD" style="margin-left:0px; width:20px;"/> &nbsp; / &nbsp;<input type="text" name="YY" style="margin-left:0px; width:70px;"/></td>
<td><label for="textvalue2" style="margin-left:190px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:50px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">
<br>
<br>

<form:form action="initiala32.do" method="POST" commandName="initiala32">

<table  width ="100% " style="border: 1px solid CornflowerBlue;">

<tr bgcolor = "Silver">
<td  width= "50%">4a. In this family ,is there evidence for an AD mutation other than an <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AD or FTLD mutation?<br>(If No or Unknown , <b> SKIP TO Question 5a)</b> </td>
<td width= "50%">
<form:input type="radio" name="fothmut" path="fothmut" value="0" style="margin-left:0px;" />0 No <b> (SKIP TO QUESTION 5a)</b><br />
<form:input type="radio" name="fothmut" path="fothmut" value="8"  style="margin-left:0px"/> 1 YES,(SPECIFY) : 
<form:input type="text" name="fothmutx" path="fothmutx" style="margin-left:0px;"/><br>
<form:input type="radio" name="fothmut" path="fothmut" value="9"  style="margin-left:0px"/> 9 Unknown <font size=2px> <b> (SKIP TO QUESTION 5a)</b><br></font>
</td>
</tr>
<tr>
<td width= "50%">4b. Source of evidence for other mutation (check one): </td>
<td width= "50%">
<form:input type="radio" name="fothmuso" path="fothmuso" value="1" style="margin-left:0px;" />1 Family report (no test documentation available)<br />
<form:input type="radio" name="fothmuso" path="fothmuso" value="2" style="margin-left:0px;"/>2 Commercial test documentation<br />
<form:input type="radio" name="fothmuso" path="fothmuso" value="3"  style="margin-left:0px;"/>3 Research lab test documentation<br />
<form:input type="radio" name="fothmuso" path="fothmuso" value="8" style="margin-left:0px;"/>8 Other (Specify) : 
<form:input type="text" name="fothmusx" path="fothmusx" style="margin-left:0px;"/><br />
<form:input type="radio" name="fothmuso" path="fothmuso" value="9"  style="margin-left:0px;"/>9 Unknown<br /></td>
</tr>
</table>

<br>
<br>


<p class="odd">
<label for="text11" style= "color :White;"> BIOLOGICAL PARENTS</label>
</p>
<p class="even">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Provide information on biological parents below.If birth year is unknown,please provide an approximate year on the Initial <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Visit Form A3 and ensure that is consistently reported on all Forms A3 submitted (Initial Visit and Follow-up). If it is impossible for the  <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;subject and co-participant to estimate year of birth, enter 9999=unknown. <br> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;For any biological parent with a neurological or psychiatric problem,the entire row must be filled out.If the clinician cannot   <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;determine the primary neurological problem/psychiatric condition after reviewing all available evidence,enter 9=Unknown  <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;in the <b> Primary neurological problem/psychiatric condition</b> column , and then skip the subsequent question in the row.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If the parent has no neurological or psychiatric problem , enter 8=N/A - no neurological problem or psychiatric <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;condition in the <b> Primary neurological problem/psychiatric condition </b>column , and then skip the subsequent <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;question in the row<br> 
</p>
<table class="Biological" border=1>
<tr>
<td width= "20%"></td>
<td width= "20%"><font size=2px><b> Birth month/year (99/9999=Unknown)</b></font></td>
<td width= "10%"><font size=2px><b> Age at death (888 =N/A,999 =Unknown)</b></font></td>
<td width= "20%"><font size=2px><b> Primary neurological problem/psychiatric condition *</b></font></td>
<td width= "10%"><font size=2px><b> Primary Dx**</b></font></td>
<td width= "10%"><font size=2px><b> Method of evaluation***</b></font></td>
<td width= "10%"><font size=2px><b> Age of onset (999=unknown)</b></font></td>
</tr>
<tr>
<td width= "20%"> 5a. Mother </td>
<td width= "20%"><form:input type="text" name="mommob" path="mommob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="momyob" path="momyob" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" name="momdage" path="momdage"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" name="momneur" path="momneur"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="momprdx" path="momprdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="mommoe" path="mommoe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="momageo" path="momageo"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 5b. Father </td>
<td width= "20%"><form:input type="text" name="dadmob" path="dadmob" style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="dadyob"  path="dadyob" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" name="daddage"   path="daddage" style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" name="dadneur"  path="dadneur" style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="dadprdx"   path="dadprdx" style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="dadmoe"   path="dadmoe" style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="dadageo"   path="dadageo" style="margin-left:30px;width:20px"/></td>
</tr>
</table>

<br>
<br>
<table class ="A4">
<tr><td> *CODES for neurological problems and<br>
psychiatric conditions</td></tr>
<tr><td>1 Cognitive impairment/behavior change </td></tr>
<tr><td>2 Parkinsonism </td></tr>
<tr><td>3 ALS </td></tr>
<tr><td>4 Other neurologic condition such as multiple<br> sclerosis or stroke </td></tr>
<tr><td>5 Psychiatric condition such as schizophrenia, <br> bipolar disorder,alcoholism,or depression </td></tr>
<tr><td>8 N/A--no neurological problem or psychiatric <br>condition </td></tr>
<tr><td>9 Unknown </td></tr>
</table>


<table class="A4" style= "margin-left : 100px;">
<tr><td> **CODES for primary disgnosis</td></tr>
<tr><td>See Appendix 1 on page 5 of this form </td></tr>
</table>


 <table class ="A4" style="margin-left : 130px;">
<tr><td> ***CODES for method of evaluation</td></tr>
<tr><td>1 Autopsy </td></tr>
<tr><td>2 Examination </td></tr>
<tr><td>3 medical record review from formal <br>dementia evaluation </td></tr>
<tr><td>4 Review of general medical records AND <br> co-participant and/or subject telephone <br> interview </td></tr>
<tr><td>5 Review of general medical records only </td></tr>
<tr><td>6 Subject and/or co-participant telephone <br>interview </td></tr>
<tr><td>9 Family report </td></tr>
</table>

<br>
<br>
<br>
<br>
<br>
<br>

<br><br>
<br>
<br>
<br>
<br>
<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Initial Visit</b></font> <font color = "Red">Form A3 : Subject Family History </font>  
</p>
<p class="footer1"> <b>Page 2 of 5</b> </p>
<input type = "submit" name="action" value="Move to Page 3" style="margin-left:400px;" />

</form:form> 
</body>
</html>