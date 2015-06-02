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
background-color : Silver;
font-weight :bold;
padding: 20px;
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
font-weight :bold;
padding: 20px;
margin: 0;
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
<%
	Header header = (Header)session.getAttribute("header");
	FollowupA3 followupa3 = (FollowupA3) session.getAttribute("followupa3");
%>
<form:form action="followupa35.do" method="POST" commandName="followupa35">
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
<p class="odd">
<label for="text11" style= "color :White;"> BIOLOGICAL CHILDREN</label>
</p>
<p class="even">
7. How many biological children does the subject have? &nbsp;&nbsp;
<input type="text" name="kids" required="required" path="kids" <% if(followupa3.getKids()!=0){out.print("value=\""+followupa3.getKids()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:20px;"/> &nbsp;&nbsp; If subject has no biological children ,<b> END FORM HERE.</b><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7a. Since the last UDS visit, is new information available concerning the status of the subject's biological children?<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="nwinfkid" required="required" path="nwinfkid" 
	<%if(followupa3.getNwinfkid()==0){out.print(" checked ");}%> value="0" style="margin-left:0px;"/>0 No <font size=2px><b> (END FROM HERE)</b></font>
<input type="radio" name="nwinfkid" required="required" path="nwinfkid" 
	<%if(followupa3.getNwinfkid()==1){out.print(" checked ");}%> value="1"  style="margin-left:150px;"/>1 Yes<font size=2px> <b>(COMPLETE QUESTION 7aa-7ao,AS APPLICABLE) </b></font><br /><br>
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
<td width= "20%"><input type="text" path="kid1mob" name="kid1mob" <% if(followupa3.getKid1mob()!=0){out.print("value=\""+followupa3.getKid1mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
				 <input type="text" path="kid1yob" name="kid1yob" <% if(followupa3.getKid1yob()!=0){out.print("value=\""+followupa3.getKid1yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" path="kid1agd" name="kid1agd" <% if(followupa3.getKid1agd()!=0){out.print("value=\""+followupa3.getKid1agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" path="kid1neu" name="kid1neu" <% if(followupa3.getKid1neu()!=0){out.print("value=\""+followupa3.getKid1neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid1pdx" name="kid1pdx" <% if(followupa3.getKid1pdx()!=0){out.print("value=\""+followupa3.getKid1pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid1moe" name="kid1moe" <% if(followupa3.getKid1moe()!=0){out.print("value=\""+followupa3.getKid1moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid1ago" name="kid1ago" <% if(followupa3.getKid1ago()!=0){out.print("value=\""+followupa3.getKid1ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7a. Child  </td>
<td width= "20%"><input type="text" path="kid2mob" name="kid2mob" <% if(followupa3.getKid2mob()!=0){out.print("value=\""+followupa3.getKid2mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
				 <input type="text" path="kid2yob" name="kid2yob" <% if(followupa3.getKid2yob()!=0){out.print("value=\""+followupa3.getKid2yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" path="kid2agd" name="kid2agd" <% if(followupa3.getKid2agd()!=0){out.print("value=\""+followupa3.getKid2agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" path="kid2neu" name="kid2neu" <% if(followupa3.getKid2neu()!=0){out.print("value=\""+followupa3.getKid2neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid2pdx" name="kid2pdx" <% if(followupa3.getKid2pdx()!=0){out.print("value=\""+followupa3.getKid2pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid2moe" name="kid2moe" <% if(followupa3.getKid2moe()!=0){out.print("value=\""+followupa3.getKid2moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid2ago" name="kid2ago" <% if(followupa3.getKid2ago()!=0){out.print("value=\""+followupa3.getKid2ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7a. Child  </td>
<td width= "20%"><input type="text" path="kid3mob" name="kid3mob" <% if(followupa3.getKid3mob()!=0){out.print("value=\""+followupa3.getKid3mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
				 <input type="text" path="kid3yob" name="kid3yob" <% if(followupa3.getKid3yob()!=0){out.print("value=\""+followupa3.getKid3yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" path="kid3agd" name="kid3agd" <% if(followupa3.getKid3agd()!=0){out.print("value=\""+followupa3.getKid3agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" path="kid3neu" name="kid3neu" <% if(followupa3.getKid3neu()!=0){out.print("value=\""+followupa3.getKid3neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid3pdx" name="kid3pdx" <% if(followupa3.getKid3pdx()!=0){out.print("value=\""+followupa3.getKid3pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid3moe" name="kid3moe" <% if(followupa3.getKid3moe()!=0){out.print("value=\""+followupa3.getKid3moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid3ago" name="kid3ago" <% if(followupa3.getKid3ago()!=0){out.print("value=\""+followupa3.getKid3ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7a. Child  </td>
<td width= "20%"><input type="text" path="kid4mob" name="kid4mob" <% if(followupa3.getKid4mob()!=0){out.print("value=\""+followupa3.getKid4mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
				 <input type="text" path="kid4yob" name="kid4yob" <% if(followupa3.getKid4yob()!=0){out.print("value=\""+followupa3.getKid4yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" path="kid4agd" name="kid4agd" <% if(followupa3.getKid4agd()!=0){out.print("value=\""+followupa3.getKid4agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" path="kid4neu" name="kid4neu" <% if(followupa3.getKid4neu()!=0){out.print("value=\""+followupa3.getKid4neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid4pdx" name="kid4pdx" <% if(followupa3.getKid4pdx()!=0){out.print("value=\""+followupa3.getKid4pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid4moe" name="kid4moe" <% if(followupa3.getKid4moe()!=0){out.print("value=\""+followupa3.getKid4moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid4ago" name="kid4ago" <% if(followupa3.getKid4ago()!=0){out.print("value=\""+followupa3.getKid4ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7a. Child  </td>
<td width= "20%"><input type="text" path="kid5mob" name="kid5mob" <% if(followupa3.getKid5mob()!=0){out.print("value=\""+followupa3.getKid5mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
				 <input type="text" path="kid5yob" name="kid5yob" <% if(followupa3.getKid5yob()!=0){out.print("value=\""+followupa3.getKid5yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" path="kid5agd" name="kid5agd" <% if(followupa3.getKid5agd()!=0){out.print("value=\""+followupa3.getKid5agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" path="kid5neu" name="kid5neu" <% if(followupa3.getKid5neu()!=0){out.print("value=\""+followupa3.getKid5neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid5pdx" name="kid5pdx" <% if(followupa3.getKid5pdx()!=0){out.print("value=\""+followupa3.getKid5pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid5moe" name="kid5moe" <% if(followupa3.getKid5moe()!=0){out.print("value=\""+followupa3.getKid5moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid5ago" name="kid5ago" <% if(followupa3.getKid5ago()!=0){out.print("value=\""+followupa3.getKid5ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7a. Child  </td>
<td width= "20%"><input type="text" path="kid6mob" name="kid6mob" <% if(followupa3.getKid6mob()!=0){out.print("value=\""+followupa3.getKid6mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
				 <input type="text" path="kid6yob" name="kid6yob" <% if(followupa3.getKid6yob()!=0){out.print("value=\""+followupa3.getKid6yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" path="kid6agd" name="kid6agd" <% if(followupa3.getKid6agd()!=0){out.print("value=\""+followupa3.getKid6agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" path="kid6neu" name="kid6neu" <% if(followupa3.getKid6neu()!=0){out.print("value=\""+followupa3.getKid6neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid6pdx" name="kid6pdx" <% if(followupa3.getKid6pdx()!=0){out.print("value=\""+followupa3.getKid6pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid6moe" name="kid6moe" <% if(followupa3.getKid6moe()!=0){out.print("value=\""+followupa3.getKid6moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid6ago" name="kid6ago" <% if(followupa3.getKid6ago()!=0){out.print("value=\""+followupa3.getKid6ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7a. Child  </td>
<td width= "20%"><input type="text" path="kid7mob" name="kid7mob" <% if(followupa3.getKid7mob()!=0){out.print("value=\""+followupa3.getKid7mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
				 <input type="text" path="kid7yob" name="kid7yob" <% if(followupa3.getKid7yob()!=0){out.print("value=\""+followupa3.getKid7yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" path="kid7agd" name="kid7agd" <% if(followupa3.getKid7agd()!=0){out.print("value=\""+followupa3.getKid7agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" path="kid7neu" name="kid7neu" <% if(followupa3.getKid7neu()!=0){out.print("value=\""+followupa3.getKid7neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid7pdx" name="kid7pdx" <% if(followupa3.getKid7pdx()!=0){out.print("value=\""+followupa3.getKid7pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid7moe" name="kid7moe" <% if(followupa3.getKid7moe()!=0){out.print("value=\""+followupa3.getKid7moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid7ago" name="kid7ago" <% if(followupa3.getKid7ago()!=0){out.print("value=\""+followupa3.getKid7ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7a. Child  </td>
<td width= "20%"><input type="text" path="kid8mob" name="kid8mob" <% if(followupa3.getKid8mob()!=0){out.print("value=\""+followupa3.getKid8mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
				 <input type="text" path="kid8yob" name="kid8yob" <% if(followupa3.getKid8yob()!=0){out.print("value=\""+followupa3.getKid8yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" path="kid8agd" name="kid8agd" <% if(followupa3.getKid8agd()!=0){out.print("value=\""+followupa3.getKid8agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" path="kid8neu" name="kid8neu" <% if(followupa3.getKid8neu()!=0){out.print("value=\""+followupa3.getKid8neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid8pdx" name="kid8pdx" <% if(followupa3.getKid8pdx()!=0){out.print("value=\""+followupa3.getKid8pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid8moe" name="kid8moe" <% if(followupa3.getKid8moe()!=0){out.print("value=\""+followupa3.getKid8moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid8ago" name="kid8ago" <% if(followupa3.getKid8ago()!=0){out.print("value=\""+followupa3.getKid8ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7a. Child  </td>
<td width= "20%"><input type="text" path="kid9mob" name="kid9mob" <% if(followupa3.getKid9mob()!=0){out.print("value=\""+followupa3.getKid9mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
				 <input type="text" path="kid9yob" name="kid9yob" <% if(followupa3.getKid9yob()!=0){out.print("value=\""+followupa3.getKid9yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" path="kid9agd" name="kid9agd" <% if(followupa3.getKid9agd()!=0){out.print("value=\""+followupa3.getKid9agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" path="kid9neu" name="kid9neu" <% if(followupa3.getKid9neu()!=0){out.print("value=\""+followupa3.getKid9neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid9pdx" name="kid9pdx" <% if(followupa3.getKid9pdx()!=0){out.print("value=\""+followupa3.getKid9pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid9moe" name="kid9moe" <% if(followupa3.getKid9moe()!=0){out.print("value=\""+followupa3.getKid9moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid9ago" name="kid9ago" <% if(followupa3.getKid9ago()!=0){out.print("value=\""+followupa3.getKid9ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7a. Child  </td>
<td width= "20%"><input type="text" path="kid10mob" name="kid10mob" <% if(followupa3.getKid10mob()!=0){out.print("value=\""+followupa3.getKid10mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
				 <input type="text" path="kid10yob" name="kid10yob" <% if(followupa3.getKid10yob()!=0){out.print("value=\""+followupa3.getKid10yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" path="kid10agd" name="kid10agd" <% if(followupa3.getKid10agd()!=0){out.print("value=\""+followupa3.getKid10agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" path="kid10neu" name="kid10neu" <% if(followupa3.getKid10neu()!=0){out.print("value=\""+followupa3.getKid10neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid10pdx" name="kid10pdx" <% if(followupa3.getKid10pdx()!=0){out.print("value=\""+followupa3.getKid10pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid10moe" name="kid10moe" <% if(followupa3.getKid10moe()!=0){out.print("value=\""+followupa3.getKid10moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid10ago" name="kid10ago" <% if(followupa3.getKid10ago()!=0){out.print("value=\""+followupa3.getKid10ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7a. Child  </td>
<td width= "20%"><input type="text" path="kid11mob" name="kid11mob" <% if(followupa3.getKid11mob()!=0){out.print("value=\""+followupa3.getKid11mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
				 <input type="text" path="kid11yob" name="kid11yob" <% if(followupa3.getKid11yob()!=0){out.print("value=\""+followupa3.getKid11yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" path="kid11agd" name="kid11agd" <% if(followupa3.getKid11agd()!=0){out.print("value=\""+followupa3.getKid11agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" path="kid11neu" name="kid11neu" <% if(followupa3.getKid11neu()!=0){out.print("value=\""+followupa3.getKid11neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid11pdx" name="kid11pdx" <% if(followupa3.getKid11pdx()!=0){out.print("value=\""+followupa3.getKid11pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid11moe" name="kid11moe" <% if(followupa3.getKid11moe()!=0){out.print("value=\""+followupa3.getKid11moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid11ago" name="kid11ago" <% if(followupa3.getKid11ago()!=0){out.print("value=\""+followupa3.getKid11ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7a. Child  </td>
<td width= "20%"><input type="text" path="kid12mob" name="kid12mob" <% if(followupa3.getKid12mob()!=0){out.print("value=\""+followupa3.getKid12mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
				 <input type="text" path="kid12yob" name="kid12yob" <% if(followupa3.getKid12yob()!=0){out.print("value=\""+followupa3.getKid12yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" path="kid12agd" name="kid12agd" <% if(followupa3.getKid12agd()!=0){out.print("value=\""+followupa3.getKid12agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" path="kid12neu" name="kid12neu" <% if(followupa3.getKid12neu()!=0){out.print("value=\""+followupa3.getKid12neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid12pdx" name="kid12pdx" <% if(followupa3.getKid12pdx()!=0){out.print("value=\""+followupa3.getKid12pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid12moe" name="kid12moe" <% if(followupa3.getKid12moe()!=0){out.print("value=\""+followupa3.getKid12moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid12ago" name="kid12ago" <% if(followupa3.getKid12ago()!=0){out.print("value=\""+followupa3.getKid12ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7a. Child  </td>
<td width= "20%"><input type="text" path="kid13mob" name="kid13mob" <% if(followupa3.getKid13mob()!=0){out.print("value=\""+followupa3.getKid13mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
				 <input type="text" path="kid13yob" name="kid13yob" <% if(followupa3.getKid13yob()!=0){out.print("value=\""+followupa3.getKid13yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" path="kid13agd" name="kid13agd" <% if(followupa3.getKid13agd()!=0){out.print("value=\""+followupa3.getKid13agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" path="kid13neu" name="kid13neu" <% if(followupa3.getKid13neu()!=0){out.print("value=\""+followupa3.getKid13neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid13pdx" name="kid13pdx" <% if(followupa3.getKid13pdx()!=0){out.print("value=\""+followupa3.getKid13pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid13moe" name="kid13moe" <% if(followupa3.getKid13moe()!=0){out.print("value=\""+followupa3.getKid13moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid13ago" name="kid13ago" <% if(followupa3.getKid13ago()!=0){out.print("value=\""+followupa3.getKid13ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7a. Child  </td>
<td width= "20%"><input type="text" path="kid14mob" name="kid14mob" <% if(followupa3.getKid14mob()!=0){out.print("value=\""+followupa3.getKid14mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
				 <input type="text" path="kid14yob" name="kid14yob" <% if(followupa3.getKid14yob()!=0){out.print("value=\""+followupa3.getKid14yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" path="kid14agd" name="kid14agd" <% if(followupa3.getKid14agd()!=0){out.print("value=\""+followupa3.getKid14agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" path="kid14neu" name="kid14neu" <% if(followupa3.getKid14neu()!=0){out.print("value=\""+followupa3.getKid14neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid14pdx" name="kid14pdx" <% if(followupa3.getKid14pdx()!=0){out.print("value=\""+followupa3.getKid14pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid14moe" name="kid14moe" <% if(followupa3.getKid14moe()!=0){out.print("value=\""+followupa3.getKid14moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid14ago" name="kid14ago" <% if(followupa3.getKid14ago()!=0){out.print("value=\""+followupa3.getKid14ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
</tr>

<tr>
<td width= "20%"> 7a. Child  </td>
<td width= "20%"><input type="text" path="kid15mob" name="kid15mob" <% if(followupa3.getKid15mob()!=0){out.print("value=\""+followupa3.getKid15mob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:20px ;"/>/
				 <input type="text" path="kid15yob" name="kid15yob" <% if(followupa3.getKid15yob()!=0){out.print("value=\""+followupa3.getKid15yob()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" path="kid15agd" name="kid15agd" <% if(followupa3.getKid15agd()!=0){out.print("value=\""+followupa3.getKid15agd()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" path="kid15neu" name="kid15neu" <% if(followupa3.getKid15neu()!=0){out.print("value=\""+followupa3.getKid15neu()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid15pdx" name="kid15pdx" <% if(followupa3.getKid15pdx()!=0){out.print("value=\""+followupa3.getKid15pdx()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid15moe" name="kid15moe" <% if(followupa3.getKid15moe()!=0){out.print("value=\""+followupa3.getKid15moe()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" path="kid15ago" name="kid15ago" <% if(followupa3.getKid15ago()!=0){out.print("value=\""+followupa3.getKid15ago()+"\"");}else{out.print("value=\"0\"");} %> style="margin-left:30px;width:20px"/></td>
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
		
<p class="footer">
<font size = 3px color="Grey">National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br></font>
<b>UDS Version 3.0 ,March 2015</b><font color = "Red">&nbsp;&nbsp;&nbsp;Form A3 : Subject Family History </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Page 5 of 5  
</b></p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form:form>

</body>
</html>