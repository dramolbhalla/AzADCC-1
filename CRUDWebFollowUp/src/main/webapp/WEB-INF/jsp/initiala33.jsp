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
background-color : CornflowerBlue;
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
<p class="even" style = "background-color : #D8D8D8;">
<b> Year of birth for full siblings and biological children :</b> If birth year is unknown ,please provide an approximate year on UDS <br>
Initial Visit Form A3 and UDS Follow -up Visit Form A3 so that the sibling/child with unknown birth year ends up in correct<br>
birth order relative to the other siblings/children.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font size=2px> <i> Example : A subject is the oldest of three children.The subject was born 1940 and the middle sibling in 1943; the youngest  sibling's birth year is unknown.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                     An approximate birth year of 1944 or later should be assigned to the youngest sibling.</i></font>
<br>
Use that same birth year on FTLD Module Form A3a, if applicable , and across all UDS visits so that any new information <br>
on a particular sibling or child can be linked to previously submitted information.If it is impossible for the subject and co- <br>
participant to estimate year of birth,enter 9999=Unknown.


</p>

<form:form action="initiala33.do" method="POST" commandName="initiala33">

<p class="odd">
<label for="text11" style= "color :White;">FULL SIBLINGS</label>
</p>
<p class="even">
6. How many full siblings does the subject have? &nbsp;&nbsp; <form:input type="text" name="sibs" path="sibs" style="margin-left:0px; width:20px;"/> <br>
&nbsp;&nbsp; If subject has no full siblings ,<b> SKIP TO QUESTION 7.</b> otherwise,provide information on all full siblings below.<br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; For any full siblings with a neurological or psychiatric problem,the entire row must be filled out.If the clinician<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cannot determine the primary neurological problem/psychiatric condition after reviewing all available evidence, <br>  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enter 9=Unknown in the <b> Primary neurological problem/psychiatric condition</b> column ,and then skip the<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; subsequent question in the row.If the sibling has no neurological or psychiatric problem , enter 8=N/A - no <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; neurological problem or psychiatric condition in the <b> Primary neurological problem/psychiatric condition </b>column , <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and then skip the subsequent question in the row. <br>
</p>



<table class="Biological" border=1>
<tr bgcolor="#D8D8D8">
<td width= "20%"> See next page of form for list of codes</td>
<td width= "20%"><font size=2px><b> Birth month/year (99/9999=Unknown)</b></font></td>
<td width= "10%"><font size=2px><b> Age at death (888 =N/A,999 =Unknown)</b></font></td>
<td width= "20%"><font size=2px><b> Primary neurological problem/psychiatric condition *</b></font></td>
<td width= "10%"><font size=2px><b> Primary Dx**</b></font></td>
<td width= "10%"><font size=2px><b> Method of evaluation***</b></font></td>
<td width= "10%"><font size=2px><b> Age of onset (999=unknown)</b></font></td>
</tr>

<tr>
<td width= "20%">6aa. Sibling 1 </td>
<td width= "20%"><form:input type="text" name="sib1mob" path="sib1mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib1yob" path="sib1yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib1agd" path="sib1agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib1neu" path="sib1neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib1pdx" path="sib1pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib1moe" path="sib1moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib1ago" path="sib1ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6ab. Sibling 2 </td>
<td width= "20%"><form:input type="text" name="sib2mob" path="sib2mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib2yob" path="sib2yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib2agd" path="sib2agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib2neu" path="sib2neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib2pdx" path="sib2pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib2moe" path="sib2moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib2ago" path="sib2ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6ac. Sibling 3 </td>
<td width= "20%"><form:input type="text" name="sib3mob" path="sib3mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib3yob" path="sib3yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib3agd" path="sib3agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib3neu" path="sib3neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib3pdx" path="sib3pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib3moe" path="sib3moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib3ago" path="sib3ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6ad. Sibling 4 </td>
<td width= "20%"><form:input type="text" name="sib4mob" path="sib4mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib4yob" path="sib4yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib4agd" path="sib4agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib4neu" path="sib4neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib4pdx" path="sib4pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib4moe" path="sib4moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib4ago" path="sib4ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6ae. Sibling 5 </td>
<td width= "20%"><form:input type="text" name="sib5mob" path="sib5mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib5yob" path="sib5yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib5agd" path="sib5agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib5neu" path="sib5neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib5pdx" path="sib5pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib5moe" path="sib5moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib5ago" path="sib5ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6af. Sibling 6 </td>
<td width= "20%"><form:input type="text" name="sib6mob" path="sib6mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib6yob" path="sib6yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib6agd" path="sib6agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib6neu" path="sib6neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib6pdx" path="sib6pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib6moe" path="sib6moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib6ago" path="sib6ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6ag. Sibling 7 </td>
<td width= "20%"><form:input type="text" name="sib7mob" path="sib7mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib7yob" path="sib7yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib7agd" path="sib7agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib7neu" path="sib7neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib7pdx" path="sib7pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib7moe" path="sib7moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib7ago" path="sib7ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6ah. Sibling 8 </td>
<td width= "20%"><form:input type="text" name="sib8mob" path="sib8mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib8yob" path="sib8yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib8agd" path="sib8agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib8neu" path="sib8neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib8pdx" path="sib8pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib8moe" path="sib8moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib8ago" path="sib8ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6ai. Sibling 9 </td>
<td width= "20%"><form:input type="text" name="sib9mob" path="sib9mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib9yob" path="sib9yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib9agd" path="sib9agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib9neu" path="sib9neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib9pdx" path="sib9pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib9moe" path="sib9moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib9ago" path="sib9ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6aj. Sibling 10 </td>
<td width= "20%"><form:input type="text" name="sib10mob" path="sib10mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib10yob" path="sib10yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib10agd" path="sib10agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib10neu" path="sib10neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib10pdx" path="sib10pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib10moe" path="sib10moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib10ago" path="sib10ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6ak. Sibling 11 </td>
<td width= "20%"><form:input type="text" name="sib11mob" path="sib11mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib11yob" path="sib11yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib11agd" path="sib11agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib11neu" path="sib11neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib11pdx" path="sib11pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib11moe" path="sib11moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib11ago" path="sib11ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6al. Sibling 12 </td>
<td width= "20%"><form:input type="text" name="sib12mob" path="sib12mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib12yob" path="sib12yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib12agd" path="sib12agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib12neu" path="sib12neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib12pdx" path="sib12pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib12moe" path="sib12moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib12ago" path="sib12ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6am. Sibling 13 </td>
<td width= "20%"><form:input type="text" name="sib13mob" path="sib13mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib13yob" path="sib13yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib13agd" path="sib13agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib13neu" path="sib13neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib13pdx" path="sib13pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib13moe" path="sib13moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib13ago" path="sib13ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6an. Sibling 14 </td>
<td width= "20%"><form:input type="text" name="sib14mob" path="sib14mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib14yob" path="sib14yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib14agd" path="sib14agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib14neu" path="sib14neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib14pdx" path="sib14pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib14moe" path="sib14moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib14ago" path="sib14ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6ao. Sibling 15 </td>
<td width= "20%"><form:input type="text" name="sib15mob" path="sib15mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib15yob" path="sib15yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib15agd" path="sib15agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib15neu" path="sib15neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib15pdx" path="sib15pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib15moe" path="sib15moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib15ago" path="sib15ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6ap. Sibling 16 </td>
<td width= "20%"><form:input type="text" name="sib16mob" path="sib16mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib16yob" path="sib16yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib16agd" path="sib16agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib16neu" path="sib16neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib16pdx" path="sib16pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib16moe" path="sib16moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib16ago" path="sib16ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6aq. Sibling 17 </td>
<td width= "20%"><form:input type="text" name="sib17mob" path="sib17mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib17yob" path="sib17yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib17agd" path="sib17agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib17neu" path="sib17neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib17pdx" path="sib17pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib17moe" path="sib17moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib17ago" path="sib17ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6ar. Sibling 18 </td>
<td width= "20%"><form:input type="text" name="sib18mob" path="sib18mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib18yob" path="sib18yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib18agd" path="sib18agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib18neu" path="sib18neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib18pdx" path="sib18pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib18moe" path="sib18moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib18ago" path="sib18ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6as. Sibling 19 </td>
<td width= "20%"><form:input type="text" name="sib19mob" path="sib19mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib19yob" path="sib19yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib19agd" path="sib19agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib19neu" path="sib19neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib19pdx" path="sib19pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib19moe" path="sib19moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib19ago" path="sib19ago"  style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6at. Sibling 20 </td>
<td width= "20%"><form:input type="text" name="sib20mob" path="sib20mob"  style="margin-left:20px; width:20px ;"/>/
<form:input type="text" name="sib20yob" path="sib20yob" style="margin-left:0px; width:60px ;"/></td>
<td width= "20%"><form:input type="text" name="sib20agd" path="sib20agd"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib20neu" path="sib20neu"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib20pdx" path="sib20pdx"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib20moe" path="sib20moe"  style="margin-left:30px;width:20px"/></td>
<td width= "10%"><form:input type="text" name="sib20ago" path="sib20ago"  style="margin-left:20px; width:40px"/></td>
</tr>


</table>

<br>
<br>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Initial Visit</b></font> <font color = "Red">Form A3 : Subject Family History </font>  
</p>
<p class="footer1"> <b>Page 3 of 5</b> </p>
<input type = "submit" name="action" value="Move to Page 4" style="margin-left:400px;" /> 
</form:form>
</body>
</html>