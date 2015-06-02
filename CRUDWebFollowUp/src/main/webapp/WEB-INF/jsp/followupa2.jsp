<%@page import="com.web.model.FollowupA2, com.web.model.Header"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>test</title>
<style>
body
{
margin-left : 200px;
margin-top : 50px;
font-family : Arial Black;
width: 1050px;
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
width :"100% ";
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
<div id="content">
<img src="/Show/index.jpg" height="100" width="150" class="nacc"></img>
</div>
<input type="text" value="FOLLOW - UP VISIT PACKET"  style="background-color:Black; color:White; width:200px; font-weight :bold;"/> &nbsp; &nbsp; 
 <b>NACC UNIFORM DATA SET(UDS)</b>
<h3> Form test:<font size = 5px> &nbsp;<font size = 3px color ="GREY"> &nbsp;BEHAVIORAL ASSESSMENT</font>&nbsp;&nbsp;Neuropsychiatric Inventory Questionnaire (NPI-Q<sup> 1</sup>)</font></h3>
<br>

<%
	Header header = (Header)session.getAttribute("header");
	FollowupA2 followupa2 = (FollowupA2) session.getAttribute("followupa2");
%>
<form:form action="followupa2.do" method="POST" commandName="followupa2">
<table class="smallheader">
<tr>
<td>
	ADC name : &nbsp;<br>
	<input type="text" name="adcid" required="required" value="33" style="margin-left:0px; width:100px;"/>
</td>
<td>
	Subject ID : &nbsp;<br> 
	<input type="text" name="ptid" required="required" <% if(header.getPtid()!=0){out.print("value=\""+header.getPtid()+"\"");} %> size ="10" style="margin-left:0px; width:130px;"/>
</td>
<td>
	Form date : <br>
	<input type="text" name="visitmo" required="required" <% if(header.getVisitmo()!=0){out.print("value=\""+header.getVisitmo()+"\"");} %> size ="2" maxlength="2" style="margin-left:0px; width:20px;"/>/
	<input type="text" name="visitday" required="required" <% if(header.getVisitday()!=0){out.print("value=\""+header.getVisitday()+"\"");} %> size ="2" maxlength="2" style="margin-left:0px; width:20px;"/>/
	<input type="text" name="visityr" required="required" <% if(header.getVisityr()!=0){out.print("value=\""+header.getVisityr()+"\"");} %> size ="4" maxlength="4" style="margin-left:0px; width:50px;"/>
</td>
</tr>
<tr>
<td>
	Visit # : <br>
	<input type="text" name="visitnum" required="required" <% if(header.getVisitnum()!=0){out.print("value=\""+header.getVisitnum()+"\"");} %>  size ="3" maxlength="3" style="margin-left:0px; width:30px;"/>
</td>
<td>
	Examiner's initials : <br>
	<input type="text" name="initials" required="required" <% if(header.getInitials()!=null){out.print("value=\""+header.getInitials()+"\"");} %> size ="3" maxlength="3" style="margin-left:0px; width:40px;"/>
	<input type="hidden" name="packet" value="F"/>
	<input type="hidden" name="formid" value="A2"/>
	<input type="hidden" name="formver" value="3"/>
</td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">

<font size =3px><i>INSTRUCTION : This form is to be completed by intake interviewer based on co-participant's report.
For additional clarification and examples , see UDS Coding Guidebook 
for Follow-Up Visit Packet , Form A2.Check only <u>one</u> box per question.</i></font>
<br><br>
<b>To print a copy of data collected for this form at a previous UDS visit, go to</b> <font size=2px color ="CornflowerBlue">https://www.alz.washington.edu/MEMBER/siteprint.html</font><b>.</b>
<br>
<br>

<font color="red"> <span>${message}</span></font>



<p class="odd">
<label for="textvalue1">1.  Co-Participant's Month and year of birth(MM/YYYY):</label>
<input type="text" required="required" path="inbirmo" name="inbirmo" <% if(followupa2.getInbirmo()!=0){out.print("value=\""+followupa2.getInbirmo()+"\"");} %> size= "2" maxlength="2"/>/
<input type="text" required="required" path="inbiryr" name="inbiryr" <% if(followupa2.getInbiryr()!=0){out.print("value=\""+followupa2.getInbiryr()+"\"");} %> size= "4" maxlength="4"/> <b>&nbsp;&nbsp;(99/9999 = unknown)</b>
</p>

<p class="even">
<label for="textvalue2">2.  Subject's sex:</label>
<input type="radio" required="required" name="insex" path="insex" 
	<%if(followupa2.getInsex()==1){out.print(" checked ");}%> value="1" style="margin-left:0px;"/>1 Male<br />
<input type="radio" required="required" name="insex" path="insex" 
	<%if(followupa2.getInsex()==2){out.print(" checked ");}%> value="2" />2 Female<br />
</p>

<p class="odd">
<label for="textvalue3">3. Is this a new co-participant - i.e., one who was not a co- <br>
participant at any past UDS visit?: </label>
<input type="radio" name="newinf" required="required" path="newinf" 
	<%if(followupa2.getNewinf()==0){out.print(" checked ");}%> value="0" style="margin-left:0px;" />0 No ( If No, <b>SKIP TO QUESTION 9 </b>)<br />
<input type="radio" name="newinf" required="required" path="newinf" 
	<%if(followupa2.getNewinf()==1){out.print(" checked ");}%>value="1" />1 Yes<br />
</p>

<p class="even">
<label for="textvalue4">4. Does the co-participant report being of Hispanic/latino <br>
<u>ethnicity </u> (i.e., having origins from a mainly Spanish - <br>
speaking Latin American country), regardless of race ?</label>
<input type="radio" name="inhisp" required="required" path="inhisp" 
	<%if(followupa2.getInhisp()==0){out.print(" checked ");}%> value="0" style="margin-left:0px;" />1 No (If No, <b> SKIP TO QUESTION 9</b>)<br />
<input type="radio" name="inhisp" required="required" path="inhisp" 
	<%if(followupa2.getInhisp()==1){out.print(" checked ");}%> value="1" />2 Yes<br />
<input type="radio" name="inhisp" required="required" path="inhisp" 
	<%if(followupa2.getInhisp()==9){out.print(" checked ");}%> value="9" />9 Unknown (If Unknown ,<b>SKIP TO QUESTION 5</b>)<br />
</p>

<p class="odd">
<label for="textvalue5"> &nbsp;&nbsp;4a. if yes, what are the co-participant's reported origins? </label>
<input type="radio" name="inhispor" required="required" path="inhispor" 
	<%if(followupa2.getInhispor()==1){out.print(" checked ");}%> value="1" style="margin-left:0px;" />1 Mexican , Chicano , or Mexican-American<br />
<input type="radio" name="inhispor" required="required" path="inhispor" 
	<%if(followupa2.getInhispor()==2){out.print(" checked ");}%> value="2" />2 Puerto Rican<br />
<input type="radio" name="inhispor" required="required" path="inhispor" 
	<%if(followupa2.getInhispor()==3){out.print(" checked ");}%> value="3" />3 Cuban<br />
<input type="radio" name="inhispor" required="required" path="inhispor" 
	<%if(followupa2.getInhispor()==4){out.print(" checked ");}%> value="4" />4 Dominican <br />
<input type="radio" name="inhispor" required="required" path="inhispor" 
	<%if(followupa2.getInhispor()==5){out.print(" checked ");}%> value="5" />5 Central American <br />
<input type="radio" name="inhispor" required="required" path="inhispor" 
	<%if(followupa2.getInhispor()==6){out.print(" checked ");}%> value="6" />6 South American <br />
<input type="radio" name="inhispor" required="required" path="inhispor" 
	<%if(followupa2.getInhispor()==50){out.print(" checked ");}%> value="50" />50 Other (SPECIFY) : 
	<input type="text" path="inhispox" name="inhispox" size= "20" <% if(followupa2.getInhispox()!=null){out.print("value=\""+followupa2.getInhispox()+"\"");} %> maxlength="20"/><br />
<input type="radio" name="inhispor" required="required" path="inhispor" 
	<%if(followupa2.getInhispor()==99){out.print(" checked ");}%> value="99" />99 Unknown <br />
</p>

<p class="even">
<label for="textvalue6">5.  What is the co-participant report as his or her race? </label>
<input type="radio" name="inrace" required="required" path="inrace" 
	<%if(followupa2.getInrace()==1){out.print(" checked ");}%> value="1" style="margin-left:0px;" />1 White <br />
<input type="radio" name="inrace" required="required" path="inrace" 
	<%if(followupa2.getInrace()==2){out.print(" checked ");}%> value="2" />2 Black or African American<br />
<input type="radio" name="inrace" required="required" path="inrace" 
	<%if(followupa2.getInrace()==3){out.print(" checked ");}%> value="3" />3 American India or Alaska Native<br />
<input type="radio" name="inrace" required="required" path="inrace" 
	<%if(followupa2.getInrace()==4){out.print(" checked ");}%> value="4" />4 Native Hawaiian or other pacific Islander<br />
<input type="radio" name="inrace" required="required" path="inrace" 
	<%if(followupa2.getInrace()==5){out.print(" checked ");}%> value="5" />5 Asian<br />
<input type="radio" name="inrace" required="required" path="inrace" 
	<%if(followupa2.getInrace()==50){out.print(" checked ");}%> value="50" />50 Other (SPECIFY) : 
	<input type="text" name="inracex" path="inracex" size= "20" <% if(followupa2.getInracex()!=null){out.print("value=\""+followupa2.getInracex()+"\"");} %> maxlength="20"/><br />
<input type="radio" name="inrace" required="required" path="inrace" 
	<%if(followupa2.getInrace()==99){out.print(" checked ");}%> value="99" />99 Unknown <br />
</p>

<p class="odd">
<label for="textvalue7">5.  What additional race does the co-participant?</label>
<input type="radio" name="inrater" required="required" path="inrater" 
	<%if(followupa2.getInrater()==1){out.print(" checked ");}%>value="1" style="margin-left:0px;" />1 White <br />
<input type="radio" name="inrater" required="required" path="inrater" 
	<%if(followupa2.getInrater()==2){out.print(" checked ");}%>value="2" />2 Black or African American<br />
<input type="radio" name="inrater" required="required" path="inrater" 
	<%if(followupa2.getInrater()==3){out.print(" checked ");}%>value="3" />3 American India or Alaska Native<br />
<input type="radio" name="inrater" required="required" path="inrater" 
	<%if(followupa2.getInrater()==4){out.print(" checked ");}%>value="4" />4 Native Hawaiian or other pacific Islander<br />
<input type="radio" name="inrater" required="required" path="inrater" 
	<%if(followupa2.getInrater()==5){out.print(" checked ");}%>value="5" />5 Asian<br />
<input type="radio" name="inrater" required="required" path="inrater" 
	<%if(followupa2.getInrater()==50){out.print(" checked ");}%>value="50" />50 Other (SPECIFY) : 
	<input type="text" name="inraterx" path="inraterx" <% if(followupa2.getInraterx()!=null){out.print("value=\""+followupa2.getInraterx()+"\"");} %> size= "20" maxlength="20"/><br />
<input type="radio" name="inrater" required="required" path="inrater" 
	<%if(followupa2.getInrater()==88){out.print(" checked ");}%>value="88" />88 None reported <br />
<input type="radio" name="inrater" required="required" path="inrater" 
	<%if(followupa2.getInrater()==99){out.print(" checked ");}%>value="99" />99 Unknown <br />
</p>

<p class="footer1"> <b>Page 1 of 2</b> </p>
<input type = "submit" name="action" value="Move to Page 2" style="margin-left:400px;" /> 
</form:form>
</body>
</html>