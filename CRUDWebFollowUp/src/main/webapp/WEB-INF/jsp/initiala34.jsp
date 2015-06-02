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
background-color : #08088A;
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

<form:form action="initiala34.do" method="POST" commandName="initiala34">

<table class="smallheader">
<tr>
<td>Subject ID : &nbsp;<input type="text" name="ID" style="margin-left:0px;"/></td>
<td><label for="textvalue1" style="margin-left:100px;">Form Date : </label> &nbsp; <input type="text" name="MM" style="margin-left:0px; width:20px;"/> &nbsp; / &nbsp; <input type="text" name="DD" style="margin-left:0px; width:20px;"/> &nbsp; / &nbsp;<input type="text" name="YY" style="margin-left:0px; width:70px;"/></td>
<td><label for="textvalue2" style="margin-left:190px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:50px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">
<br>
<br>

<p class="odd">
<label for="text11" style= "color :White;"> BIOLOGICAL CHILDREN</label>
</p>
<p class="even">
7. How many biological children does the subject have? &nbsp;&nbsp; <form:input type="text" name="kids" path="kids" style="margin-left:0px; width:20px;"/> <br>&nbsp;&nbsp; If subject has no biological children ,<b> END FORM HERE.</b> ; otherwise, provide information on all bilogical children below.<br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; For any biological child with a neurological or psychiatric problem,the entire row must be filled out.If the <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; clinician cannot determine the primary neurological problem/psychiatric condition after reviewing all available <br>  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; evidence, enter 9=Unknown in the <b> Primary neurological problem/psychiatric condition</b> column ,and then skip <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the subsequent question in the row.If the child has no neurological or psychiatric problem , enter 8=N/A - no <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; neurological problem or psychiatric condition in the <b> Primary neurological problem/psychiatric condition </b>column , <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and then skip the subsequent question in the row. <br>
</p>

<br>
<br>

<table class="Biological" border=1>
<tr bgcolor="#D8D8D8">
<td width= "20%"></td>
<td width= "20%"><font size=2px><b> Birth month/year (99/9999=Unknown)</b></font></td>
<td width= "10%"><font size=2px><b> Age at death (888 =N/A,999 =Unknown)</b></font></td>
<td width= "20%"><font size=2px><b> Primary neurological problem/psychiatric condition *</b></font></td>
<td width= "10%"><font size=2px><b> Primary Dx**</b></font></td>
<td width= "10%"><font size=2px><b> Method of evaluation***</b></font></td>
<td width= "10%"><font size=2px><b> Age of onset (999=unknown)</b></font></td>
</tr>

<tr>
<td width= "20%"> 7aa. Child 1 </td>
<td width= "20%"><form:input type="text" path="kid1mob" name="kid1mob"   style="margin-left:20px; width:20px ;"/>/
				 <form:input type="text" path="kid1yob" name="kid1yob"   style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" path="kid1agd" name="kid1agd"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" path="kid1neu" name="kid1neu"   style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid1pdx" name="kid1pdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid1moe" name="kid1moe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid1ago" name="kid1ago"   style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7ab. Child 2 </td>
<td width= "20%"><form:input type="text" path="kid2mob" name="kid2mob"   style="margin-left:20px; width:20px ;"/>/
				 <form:input type="text" path="kid2yob" name="kid2yob"   style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" path="kid2agd" name="kid2agd"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" path="kid2neu" name="kid2neu"   style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid2pdx" name="kid2pdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid2moe" name="kid2moe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid2ago" name="kid2ago"   style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7ac. Child 3 </td>
<td width= "20%"><form:input type="text" path="kid3mob" name="kid3mob"   style="margin-left:20px; width:20px ;"/>/
				 <form:input type="text" path="kid3yob" name="kid3yob"   style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" path="kid3agd" name="kid3agd"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" path="kid3neu" name="kid3neu"   style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid3pdx" name="kid3pdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid3moe" name="kid3moe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid3ago" name="kid3ago"   style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7ad. Child 4 </td>
<td width= "20%"><form:input type="text" path="kid4mob" name="kid4mob"   style="margin-left:20px; width:20px ;"/>/
				 <form:input type="text" path="kid4yob" name="kid4yob"   style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" path="kid4agd" name="kid4agd"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" path="kid4neu" name="kid4neu"   style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid4pdx" name="kid4pdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid4moe" name="kid4moe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid4ago" name="kid4ago"   style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7ae. Child 5 </td>
<td width= "20%"><form:input type="text" path="kid5mob" name="kid5mob"   style="margin-left:20px; width:20px ;"/>/
				 <form:input type="text" path="kid5yob" name="kid5yob"   style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" path="kid5agd" name="kid5agd"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" path="kid5neu" name="kid5neu"   style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid5pdx" name="kid5pdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid5moe" name="kid5moe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid5ago" name="kid5ago"   style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7af. Child 6 </td>
<td width= "20%"><form:input type="text" path="kid6mob" name="kid6mob"   style="margin-left:20px; width:20px ;"/>/
				 <form:input type="text" path="kid6yob" name="kid6yob"   style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" path="kid6agd" name="kid6agd"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" path="kid6neu" name="kid6neu"   style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid6pdx" name="kid6pdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid6moe" name="kid6moe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid6ago" name="kid6ago"   style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7ag. Child 7 </td>
<td width= "20%"><form:input type="text" path="kid7mob" name="kid7mob"   style="margin-left:20px; width:20px ;"/>/
				 <form:input type="text" path="kid7yob" name="kid7yob"   style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" path="kid7agd" name="kid7agd"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" path="kid7neu" name="kid7neu"   style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid7pdx" name="kid7pdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid7moe" name="kid7moe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid7ago" name="kid7ago"   style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7ah. Child 8 </td>
<td width= "20%"><form:input type="text" path="kid8mob" name="kid8mob"   style="margin-left:20px; width:20px ;"/>/
				 <form:input type="text" path="kid8yob" name="kid8yob"   style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" path="kid8agd" name="kid8agd"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" path="kid8neu" name="kid8neu"   style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid8pdx" name="kid8pdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid8moe" name="kid8moe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid8ago" name="kid8ago"   style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7ai. Child 9 </td>
<td width= "20%"><form:input type="text" path="kid9mob" name="kid9mob"   style="margin-left:20px; width:20px ;"/>/
				 <form:input type="text" path="kid9yob" name="kid9yob"   style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" path="kid9agd" name="kid9agd"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" path="kid9neu" name="kid9neu"   style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid9pdx" name="kid9pdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid9moe" name="kid9moe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid9ago" name="kid9ago"   style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7aj. Child 10 </td>
<td width= "20%"><form:input type="text" path="kid10mob" name="kid10mob"   style="margin-left:20px; width:20px ;"/>/
				 <form:input type="text" path="kid10yob" name="kid10yob"   style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" path="kid10agd" name="kid10agd"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" path="kid10neu" name="kid10neu"   style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid10pdx" name="kid10pdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid10moe" name="kid10moe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid10ago" name="kid10ago"   style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7ak. Child 11 </td>
<td width= "20%"><form:input type="text" path="kid11mob" name="kid11mob"   style="margin-left:20px; width:20px ;"/>/
				 <form:input type="text" path="kid11yob" name="kid11yob"   style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" path="kid11agd" name="kid11agd"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" path="kid11neu" name="kid11neu"   style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid11pdx" name="kid11pdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid11moe" name="kid11moe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid11ago" name="kid11ago"   style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7al. Child 12 </td>
<td width= "20%"><form:input type="text" path="kid12mob" name="kid12mob"   style="margin-left:20px; width:20px ;"/>/
				 <form:input type="text" path="kid12yob" name="kid12yob"   style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" path="kid12agd" name="kid12agd"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" path="kid12neu" name="kid12neu"   style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid12pdx" name="kid12pdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid12moe" name="kid12moe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid12ago" name="kid12ago"   style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7am. Child 13 </td>
<td width= "20%"><form:input type="text" path="kid13mob" name="kid13mob"   style="margin-left:20px; width:20px ;"/>/
				 <form:input type="text" path="kid13yob" name="kid13yob"   style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" path="kid13agd" name="kid13agd"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" path="kid13neu" name="kid13neu"   style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid13pdx" name="kid13pdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid13moe" name="kid13moe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid13ago" name="kid13ago"   style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7an. Child 14 </td>
<td width= "20%"><form:input type="text" path="kid14mob" name="kid14mob"   style="margin-left:20px; width:20px ;"/>/
				 <form:input type="text" path="kid14yob" name="kid14yob"   style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" path="kid14agd" name="kid14agd"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" path="kid14neu" name="kid14neu"   style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid14pdx" name="kid14pdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid14moe" name="kid14moe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid14ago" name="kid14ago"   style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7ao. Child 15 </td>
<td width= "20%"><form:input type="text" path="kid15mob" name="kid15mob"   style="margin-left:20px; width:20px ;"/>/
				 <form:input type="text" path="kid15yob" name="kid15yob"   style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><form:input type="text" path="kid15agd" name="kid15agd"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><form:input type="text" path="kid15neu" name="kid15neu"   style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid15pdx" name="kid15pdx"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid15moe" name="kid15moe"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" path="kid15ago" name="kid15ago"   style="margin-left:30px;width:20px"/></td>
</tr>

</table>

<br>
<br>
<table class ="A4">
<tr><td> <b>*CODES for neurological problems and<br>
psychiatric conditions</b></td></tr>
<tr><td>1 Cognitive impairment/behavior change </td></tr>
<tr><td>2 Parkinsonism </td></tr>
<tr><td>3 ALS </td></tr>
<tr><td>4 Other neurologic condition such as multiple<br> sclerosis or stroke </td></tr>
<tr><td>5 Psychiatric condition such as schizophrenia, <br> bipolar disorder,alcoholism,or depression </td></tr>
<tr><td>8 N/A--no neurological problem or psychiatric <br>condition </td></tr>
<tr><td>9 Unknown </td></tr>
</table>


<table class="A4" style= "margin-left : 100px;">
<tr><td> <b>**CODES for primary diagnosis</b></td></tr>
<tr><td>See Appendix 1 on page 5 of this form </td></tr>
</table>


 <table class ="A4" style="margin-left : 130px;">
<tr><td> <b>***CODES for method of evaluation</b></td></tr>
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
<p class="footer1"> <b>Page 4 of 5</b> </p>

<input type = "submit" name="action" value="Move to Page 4" style="margin-left:400px;" /> 
</form:form>

</body>
</html>