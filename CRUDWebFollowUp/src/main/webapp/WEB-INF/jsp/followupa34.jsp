<%@page import="com.web.model.FollowupA3, com.web.model.Header"%>
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
table.smallheader
{
font size :3px;
font-weight :bold;
}

p form:input
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
<%
	Header header = (Header)session.getAttribute("header");
	FollowupA3 followupa3 = (FollowupA3) session.getAttribute("followupa3");
%>
<form:form action="followupa34.do" method="POST" commandName="followupa34">
<table class="smallheader">
<tr>
<td><label for="textvalue1" style="margin-left:10px;">Subject ID : </label> &nbsp; 
<input type="text" name="ptid" <% if(header.getPtid()!=0){out.print("value=\""+header.getPtid()+"\"");} %> style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:180px;">Form date : </label>
<input type="text" name="visitmo" <% if(header.getVisitmo()!=0){out.print("value=\""+header.getVisitmo()+"\"");} %> style="margin-left:0px; width:20px;"/>/
<input type="text" name="visitday" <% if(header.getVisitday()!=0){out.print("value=\""+header.getVisitday()+"\"");} %> style="margin-left:0px; width:20px;"/>/
<input type="text" name="visityr" <% if(header.getVisityr()!=0){out.print("value=\""+header.getVisityr()+"\"");} %> style="margin-left:0px; width:50px;"/>
<td><label for="textvalue3" style="margin-left:250px;">Visit # : </label>
<input type="text" name="visitnum" <% if(header.getVisitnum()!=0){out.print("value=\""+header.getVisitnum()+"\"");} %> style="margin-left:0px; width:30px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">
<br>
<br>

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

<p class="odd">
<label for="text11" style= "color :White;">FULL SIBLINGS</label>
</p>
<p class="even">
6. How many full siblings does the subject have? &nbsp;&nbsp; 
<input type="text" name="sibs" path="sibs" <% if(followupa3.getSibs()!=0){out.print("value=\""+followupa3.getSibs()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:20px;"/> &nbsp;&nbsp; If subject has no full siblings ,<b> SKIP TO QUESTION 7.</b><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6a. Since the last UDS visit, is new information available concerning the status of the subject's siblings?<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" required="required" name="nwinfsib" path="nwinfsib" 
	<%if(followupa3.getNwinfsib()==0){out.print(" checked ");}%> value="0" style="margin-left:0px;"/>0 No <font size=2px><b> (SKIP TO QUESTION 7)</b></font>
<input type="radio" required="required" name="nwinfsib" path="nwinfsib" 
	<%if(followupa3.getNwinfsib()==1){out.print(" checked ");}%> value="1"  style="margin-left:150px;"/>1 Yes<font size=2px> <b>(COMPLETE QUESTION 6aa-6at,AS APPLICABLE) </b></font><br /><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; For any full siblings with a neurological or psychiatric problem,the entire row must be filled out.If the clinician<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cannot determine the primary neurological problem/psychiatric condition after reviewing all available evidence, <br>  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enter 9=Unknown in the <b> Primary neurological problem/psychiatric condition</b> column ,and then skip the<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; subsequent question in the row.If the sibling has no neurological or psychiatric problem , enter 8=N/A - no <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; neurological problem or psychiatric condition in the <b> Primary neurological problem/psychiatric condition </b>column , <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and then skip the subsequent question in the row. <br>
</p>

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
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib1mob" path="sib1mob" <% if(followupa3.getSib1mob()!=0){out.print("value=\""+followupa3.getSib1mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib1yob" path="sib1yob" <% if(followupa3.getSib1yob()!=0){out.print("value=\""+followupa3.getSib1yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib1agd" path="sib1agd" <% if(followupa3.getSib1agd()!=0){out.print("value=\""+followupa3.getSib1agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib1neu" path="sib1neu" <% if(followupa3.getSib1neu()!=0){out.print("value=\""+followupa3.getSib1neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib1pdx" path="sib1pdx" <% if(followupa3.getSib1pdx()!=0){out.print("value=\""+followupa3.getSib1pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib1moe" path="sib1moe" <% if(followupa3.getSib1moe()!=0){out.print("value=\""+followupa3.getSib1moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib1ago" path="sib1ago" <% if(followupa3.getSib1ago()!=0){out.print("value=\""+followupa3.getSib1ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib2mob" path="sib2mob" <% if(followupa3.getSib2mob()!=0){out.print("value=\""+followupa3.getSib2mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib2yob" path="sib2yob" <% if(followupa3.getSib2yob()!=0){out.print("value=\""+followupa3.getSib2yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib2agd" path="sib2agd" <% if(followupa3.getSib2agd()!=0){out.print("value=\""+followupa3.getSib2agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib2neu" path="sib2neu" <% if(followupa3.getSib2neu()!=0){out.print("value=\""+followupa3.getSib2neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib2pdx" path="sib2pdx" <% if(followupa3.getSib2pdx()!=0){out.print("value=\""+followupa3.getSib2pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib2moe" path="sib2moe" <% if(followupa3.getSib2moe()!=0){out.print("value=\""+followupa3.getSib2moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib2ago" path="sib2ago" <% if(followupa3.getSib2ago()!=0){out.print("value=\""+followupa3.getSib2ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib3mob" path="sib3mob" <% if(followupa3.getSib3mob()!=0){out.print("value=\""+followupa3.getSib3mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib3yob" path="sib3yob" <% if(followupa3.getSib3yob()!=0){out.print("value=\""+followupa3.getSib3yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib3agd" path="sib3agd" <% if(followupa3.getSib3agd()!=0){out.print("value=\""+followupa3.getSib3agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib3neu" path="sib3neu" <% if(followupa3.getSib3neu()!=0){out.print("value=\""+followupa3.getSib3neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib3pdx" path="sib3pdx" <% if(followupa3.getSib3pdx()!=0){out.print("value=\""+followupa3.getSib3pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib3moe" path="sib3moe" <% if(followupa3.getSib3moe()!=0){out.print("value=\""+followupa3.getSib3moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib3ago" path="sib3ago" <% if(followupa3.getSib3ago()!=0){out.print("value=\""+followupa3.getSib3ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib4mob" path="sib4mob" <% if(followupa3.getSib4mob()!=0){out.print("value=\""+followupa3.getSib4mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib4yob" path="sib4yob" <% if(followupa3.getSib4yob()!=0){out.print("value=\""+followupa3.getSib4yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib4agd" path="sib4agd" <% if(followupa3.getSib4agd()!=0){out.print("value=\""+followupa3.getSib4agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib4neu" path="sib4neu" <% if(followupa3.getSib4neu()!=0){out.print("value=\""+followupa3.getSib4neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib4pdx" path="sib4pdx" <% if(followupa3.getSib4pdx()!=0){out.print("value=\""+followupa3.getSib4pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib4moe" path="sib4moe" <% if(followupa3.getSib4moe()!=0){out.print("value=\""+followupa3.getSib4moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib4ago" path="sib4ago" <% if(followupa3.getSib4ago()!=0){out.print("value=\""+followupa3.getSib4ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib5mob" path="sib5mob" <% if(followupa3.getSib5mob()!=0){out.print("value=\""+followupa3.getSib5mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib5yob" path="sib5yob" <% if(followupa3.getSib5yob()!=0){out.print("value=\""+followupa3.getSib5yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib5agd" path="sib5agd" <% if(followupa3.getSib5agd()!=0){out.print("value=\""+followupa3.getSib5agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib5neu" path="sib5neu" <% if(followupa3.getSib5neu()!=0){out.print("value=\""+followupa3.getSib5neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib5pdx" path="sib5pdx" <% if(followupa3.getSib5pdx()!=0){out.print("value=\""+followupa3.getSib5pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib5moe" path="sib5moe" <% if(followupa3.getSib5moe()!=0){out.print("value=\""+followupa3.getSib5moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib5ago" path="sib5ago" <% if(followupa3.getSib5ago()!=0){out.print("value=\""+followupa3.getSib5ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib6mob" path="sib6mob" <% if(followupa3.getSib6mob()!=0){out.print("value=\""+followupa3.getSib6mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib6yob" path="sib6yob" <% if(followupa3.getSib6yob()!=0){out.print("value=\""+followupa3.getSib6yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib6agd" path="sib6agd" <% if(followupa3.getSib6agd()!=0){out.print("value=\""+followupa3.getSib6agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib6neu" path="sib6neu" <% if(followupa3.getSib6neu()!=0){out.print("value=\""+followupa3.getSib6neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib6pdx" path="sib6pdx" <% if(followupa3.getSib6pdx()!=0){out.print("value=\""+followupa3.getSib6pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib6moe" path="sib6moe" <% if(followupa3.getSib6moe()!=0){out.print("value=\""+followupa3.getSib6moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib6ago" path="sib6ago" <% if(followupa3.getSib6ago()!=0){out.print("value=\""+followupa3.getSib6ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib7mob" path="sib7mob" <% if(followupa3.getSib7mob()!=0){out.print("value=\""+followupa3.getSib7mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib7yob" path="sib7yob" <% if(followupa3.getSib7yob()!=0){out.print("value=\""+followupa3.getSib7yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib7agd" path="sib7agd" <% if(followupa3.getSib7agd()!=0){out.print("value=\""+followupa3.getSib7agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib7neu" path="sib7neu" <% if(followupa3.getSib7neu()!=0){out.print("value=\""+followupa3.getSib7neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib7pdx" path="sib7pdx" <% if(followupa3.getSib7pdx()!=0){out.print("value=\""+followupa3.getSib7pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib7moe" path="sib7moe" <% if(followupa3.getSib7moe()!=0){out.print("value=\""+followupa3.getSib7moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib7ago" path="sib7ago" <% if(followupa3.getSib7ago()!=0){out.print("value=\""+followupa3.getSib7ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib8mob" path="sib8mob" <% if(followupa3.getSib8mob()!=0){out.print("value=\""+followupa3.getSib8mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib8yob" path="sib8yob" <% if(followupa3.getSib8yob()!=0){out.print("value=\""+followupa3.getSib8yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib8agd" path="sib8agd" <% if(followupa3.getSib8agd()!=0){out.print("value=\""+followupa3.getSib8agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib8neu" path="sib8neu" <% if(followupa3.getSib8neu()!=0){out.print("value=\""+followupa3.getSib8neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib8pdx" path="sib8pdx" <% if(followupa3.getSib8pdx()!=0){out.print("value=\""+followupa3.getSib8pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib8moe" path="sib8moe" <% if(followupa3.getSib8moe()!=0){out.print("value=\""+followupa3.getSib8moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib8ago" path="sib8ago" <% if(followupa3.getSib8ago()!=0){out.print("value=\""+followupa3.getSib8ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib9mob" path="sib9mob" <% if(followupa3.getSib9mob()!=0){out.print("value=\""+followupa3.getSib9mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib9yob" path="sib9yob" <% if(followupa3.getSib9yob()!=0){out.print("value=\""+followupa3.getSib9yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib9agd" path="sib9agd" <% if(followupa3.getSib9agd()!=0){out.print("value=\""+followupa3.getSib9agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib9neu" path="sib9neu" <% if(followupa3.getSib9neu()!=0){out.print("value=\""+followupa3.getSib9neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib9pdx" path="sib9pdx" <% if(followupa3.getSib9pdx()!=0){out.print("value=\""+followupa3.getSib9pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib9moe" path="sib9moe" <% if(followupa3.getSib9moe()!=0){out.print("value=\""+followupa3.getSib9moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib9ago" path="sib9ago" <% if(followupa3.getSib9ago()!=0){out.print("value=\""+followupa3.getSib9ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib10mob" path="sib10mob" <% if(followupa3.getSib10mob()!=0){out.print("value=\""+followupa3.getSib10mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib10yob" path="sib10yob" <% if(followupa3.getSib10yob()!=0){out.print("value=\""+followupa3.getSib10yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib10agd" path="sib10agd" <% if(followupa3.getSib10agd()!=0){out.print("value=\""+followupa3.getSib10agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib10neu" path="sib10neu" <% if(followupa3.getSib10neu()!=0){out.print("value=\""+followupa3.getSib10neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib10pdx" path="sib10pdx" <% if(followupa3.getSib10pdx()!=0){out.print("value=\""+followupa3.getSib10pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib10moe" path="sib10moe" <% if(followupa3.getSib10moe()!=0){out.print("value=\""+followupa3.getSib10moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib10ago" path="sib10ago" <% if(followupa3.getSib10ago()!=0){out.print("value=\""+followupa3.getSib10ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib11mob" path="sib11mob" <% if(followupa3.getSib11mob()!=0){out.print("value=\""+followupa3.getSib11mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib11yob" path="sib11yob" <% if(followupa3.getSib11yob()!=0){out.print("value=\""+followupa3.getSib11yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib11agd" path="sib11agd" <% if(followupa3.getSib11agd()!=0){out.print("value=\""+followupa3.getSib11agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib11neu" path="sib11neu" <% if(followupa3.getSib11neu()!=0){out.print("value=\""+followupa3.getSib11neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib11pdx" path="sib11pdx" <% if(followupa3.getSib11pdx()!=0){out.print("value=\""+followupa3.getSib11pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib11moe" path="sib11moe" <% if(followupa3.getSib11moe()!=0){out.print("value=\""+followupa3.getSib11moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib11ago" path="sib11ago" <% if(followupa3.getSib11ago()!=0){out.print("value=\""+followupa3.getSib11ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib12mob" path="sib12mob" <% if(followupa3.getSib12mob()!=0){out.print("value=\""+followupa3.getSib12mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib12yob" path="sib12yob" <% if(followupa3.getSib12yob()!=0){out.print("value=\""+followupa3.getSib12yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib12agd" path="sib12agd" <% if(followupa3.getSib12agd()!=0){out.print("value=\""+followupa3.getSib12agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib12neu" path="sib12neu" <% if(followupa3.getSib12neu()!=0){out.print("value=\""+followupa3.getSib12neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib12pdx" path="sib12pdx" <% if(followupa3.getSib12pdx()!=0){out.print("value=\""+followupa3.getSib12pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib12moe" path="sib12moe" <% if(followupa3.getSib12moe()!=0){out.print("value=\""+followupa3.getSib12moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib12ago" path="sib12ago" <% if(followupa3.getSib12ago()!=0){out.print("value=\""+followupa3.getSib12ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib13mob" path="sib13mob" <% if(followupa3.getSib13mob()!=0){out.print("value=\""+followupa3.getSib13mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib13yob" path="sib13yob" <% if(followupa3.getSib13yob()!=0){out.print("value=\""+followupa3.getSib13yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib13agd" path="sib13agd" <% if(followupa3.getSib13agd()!=0){out.print("value=\""+followupa3.getSib13agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib13neu" path="sib13neu" <% if(followupa3.getSib13neu()!=0){out.print("value=\""+followupa3.getSib13neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib13pdx" path="sib13pdx" <% if(followupa3.getSib13pdx()!=0){out.print("value=\""+followupa3.getSib13pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib13moe" path="sib13moe" <% if(followupa3.getSib13moe()!=0){out.print("value=\""+followupa3.getSib13moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib13ago" path="sib13ago" <% if(followupa3.getSib13ago()!=0){out.print("value=\""+followupa3.getSib13ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sib14ling  </td>
<td width= "20%">
<input type="text" name="sib14mob" path="sib14mob" <% if(followupa3.getSib14mob()!=0){out.print("value=\""+followupa3.getSib14mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib14yob" path="sib14yob" <% if(followupa3.getSib14yob()!=0){out.print("value=\""+followupa3.getSib14yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib14agd" path="sib14agd" <% if(followupa3.getSib14agd()!=0){out.print("value=\""+followupa3.getSib14agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib14neu" path="sib14neu" <% if(followupa3.getSib14neu()!=0){out.print("value=\""+followupa3.getSib14neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib14pdx" path="sib14pdx" <% if(followupa3.getSib14pdx()!=0){out.print("value=\""+followupa3.getSib14pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib14moe" path="sib14moe" <% if(followupa3.getSib14moe()!=0){out.print("value=\""+followupa3.getSib14moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib14ago" path="sib14ago" <% if(followupa3.getSib14ago()!=0){out.print("value=\""+followupa3.getSib14ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib15mob" path="sib15mob" <% if(followupa3.getSib15mob()!=0){out.print("value=\""+followupa3.getSib15mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib15yob" path="sib15yob" <% if(followupa3.getSib15yob()!=0){out.print("value=\""+followupa3.getSib15yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib15agd" path="sib15agd" <% if(followupa3.getSib15agd()!=0){out.print("value=\""+followupa3.getSib15agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib15neu" path="sib15neu" <% if(followupa3.getSib15neu()!=0){out.print("value=\""+followupa3.getSib15neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib15pdx" path="sib15pdx" <% if(followupa3.getSib15pdx()!=0){out.print("value=\""+followupa3.getSib15pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib15moe" path="sib15moe" <% if(followupa3.getSib15moe()!=0){out.print("value=\""+followupa3.getSib15moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib15ago" path="sib15ago" <% if(followupa3.getSib15ago()!=0){out.print("value=\""+followupa3.getSib15ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sib16ling  </td>
<td width= "20%">
<input type="text" name="sib16mob" path="sib16mob" <% if(followupa3.getSib16mob()!=0){out.print("value=\""+followupa3.getSib16mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib16yob" path="sib16yob" <% if(followupa3.getSib16yob()!=0){out.print("value=\""+followupa3.getSib16yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib16agd" path="sib16agd" <% if(followupa3.getSib16agd()!=0){out.print("value=\""+followupa3.getSib16agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib16neu" path="sib16neu" <% if(followupa3.getSib16neu()!=0){out.print("value=\""+followupa3.getSib16neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib16pdx" path="sib16pdx" <% if(followupa3.getSib16pdx()!=0){out.print("value=\""+followupa3.getSib16pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib16moe" path="sib16moe" <% if(followupa3.getSib16moe()!=0){out.print("value=\""+followupa3.getSib16moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib16ago" path="sib16ago" <% if(followupa3.getSib16ago()!=0){out.print("value=\""+followupa3.getSib16ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib17mob" path="sib17mob" <% if(followupa3.getSib17mob()!=0){out.print("value=\""+followupa3.getSib17mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib17yob" path="sib17yob" <% if(followupa3.getSib17yob()!=0){out.print("value=\""+followupa3.getSib17yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib17agd" path="sib17agd" <% if(followupa3.getSib17agd()!=0){out.print("value=\""+followupa3.getSib17agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib17neu" path="sib17neu" <% if(followupa3.getSib17neu()!=0){out.print("value=\""+followupa3.getSib17neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib17pdx" path="sib17pdx" <% if(followupa3.getSib17pdx()!=0){out.print("value=\""+followupa3.getSib17pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib17moe" path="sib17moe" <% if(followupa3.getSib17moe()!=0){out.print("value=\""+followupa3.getSib17moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib17ago" path="sib17ago" <% if(followupa3.getSib17ago()!=0){out.print("value=\""+followupa3.getSib17ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sib17ling  </td>
<td width= "20%">
<input type="text" name="sib18mob" path="sib18mob" <% if(followupa3.getSib18mob()!=0){out.print("value=\""+followupa3.getSib18mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib18yob" path="sib18yob" <% if(followupa3.getSib18yob()!=0){out.print("value=\""+followupa3.getSib18yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib18agd" path="sib18agd" <% if(followupa3.getSib18agd()!=0){out.print("value=\""+followupa3.getSib18agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib18neu" path="sib18neu" <% if(followupa3.getSib18neu()!=0){out.print("value=\""+followupa3.getSib18neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib18pdx" path="sib18pdx" <% if(followupa3.getSib18pdx()!=0){out.print("value=\""+followupa3.getSib18pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib18moe" path="sib18moe" <% if(followupa3.getSib18moe()!=0){out.print("value=\""+followupa3.getSib18moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib18ago" path="sib18ago" <% if(followupa3.getSib18ago()!=0){out.print("value=\""+followupa3.getSib18ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib19mob" path="sib19mob" <% if(followupa3.getSib19mob()!=0){out.print("value=\""+followupa3.getSib19mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib19yob" path="sib19yob" <% if(followupa3.getSib19yob()!=0){out.print("value=\""+followupa3.getSib19yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib19agd" path="sib19agd" <% if(followupa3.getSib19agd()!=0){out.print("value=\""+followupa3.getSib19agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib19neu" path="sib19neu" <% if(followupa3.getSib19neu()!=0){out.print("value=\""+followupa3.getSib19neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib19pdx" path="sib19pdx" <% if(followupa3.getSib19pdx()!=0){out.print("value=\""+followupa3.getSib19pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib19moe" path="sib19moe" <% if(followupa3.getSib19moe()!=0){out.print("value=\""+followupa3.getSib19moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib19ago" path="sib19ago" <% if(followupa3.getSib19ago()!=0){out.print("value=\""+followupa3.getSib19ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>

<tr>
<td width= "20%">6a. Sibling  </td>
<td width= "20%">
<input type="text" name="sib20mob" path="sib20mob" <% if(followupa3.getSib20mob()!=0){out.print("value=\""+followupa3.getSib20mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
<input type="text" name="sib20yob" path="sib20yob" <% if(followupa3.getSib20yob()!=0){out.print("value=\""+followupa3.getSib20yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "20%">
<input type="text" name="sib20agd" path="sib20agd" <% if(followupa3.getSib20agd()!=0){out.print("value=\""+followupa3.getSib20agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib20neu" path="sib20neu" <% if(followupa3.getSib20neu()!=0){out.print("value=\""+followupa3.getSib20neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib20pdx" path="sib20pdx" <% if(followupa3.getSib20pdx()!=0){out.print("value=\""+followupa3.getSib20pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib20moe" path="sib20moe" <% if(followupa3.getSib20moe()!=0){out.print("value=\""+followupa3.getSib20moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%">
<input type="text" name="sib20ago" path="sib20ago" <% if(followupa3.getSib20ago()!=0){out.print("value=\""+followupa3.getSib20ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
</tr>


</table>

<br>
<br>
<br>
<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Follow-up Visit</b></font> <font color = "Red">Form A3 : Subject Family History </font>  
</p>
<p class="footer1"> <b>Page 4 of 5</b> </p>

<input type = "submit" name="action" value="Move to Page 5" style="margin-left:400px;" />
</form:form>
</body>
</html>