<%@page import="com.web.model.FollowupA2, com.web.model.Header"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>test2</title>
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

</head>
<body>
<%
	Header header = (Header)session.getAttribute("header");
	FollowupA2 followupa2 = (FollowupA2) session.getAttribute("followupa2");
	
%>
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

<font color="red"> <span>${message}</span></font>
<form:form action="followupa22.do" method="POST" commandName="followupa22">
<p class="even">
<label for="textvalue1">7.  What additional beyond those reported in Questions 5 and 6 , does the co-participant report?</label>
<input type="radio" name="inrasec" required="required" path="inrasec" 
	<%if(followupa2.getInrasec()==1){out.print(" checked ");}%> value="1" style="margin-left:0px;" />1 &nbsp;&nbsp;&nbsp;White <br />
<input type="radio" name="inrasec" required="required" 
	<%if(followupa2.getInrasec()==2){out.print(" checked ");}%> path="inrasec" value="2" />2 &nbsp;&nbsp;&nbsp;Black or African American<br />
<input type="radio" name="inrasec" required="required" path="inrasec" 
	<%if(followupa2.getInrasec()==3){out.print(" checked ");}%> value="3" />3 &nbsp;&nbsp;&nbsp;American India or Alaska Native<br />
<input type="radio" name="inrasec" required="required" path="inrasec" 
	<%if(followupa2.getInrasec()==4){out.print(" checked ");}%> value="4" />4 &nbsp;&nbsp;&nbsp;Native Hawaiian or other pacific Islander<br />
<input type="radio" name="inrasec" required="required" path="inrasec" 
	<%if(followupa2.getInrasec()==5){out.print(" checked ");}%> value="5" />5 &nbsp;&nbsp;&nbsp;Asian<br />
<input type="radio" name="inrasec" required="required" path="inrasec" 
	<%if(followupa2.getInrasec()==50){out.print(" checked ");}%> value="50" />50 &nbsp;Other (SPECIFY) : 
	<input type="text" name="inrasecx" path="inrasecx" value="<%=followupa2.getInrasecx() %>" size ="20" maxlength ="20"/><br />
<input type="radio" name="inrasec" required="required" path="inrasec" 
	<%if(followupa2.getInrasec()==88){out.print(" checked ");}%> value="88" />88 &nbsp;None reported <br />
<input type="radio" name="inrasec" required="required" path="inrasec" 
	<%if(followupa2.getInrasec()==99){out.print(" checked ");}%> value="99" />99 &nbsp;Unknown <br />
</p>
<p class = "odd">
Co- participant's years of education - use the codes below to report the level achieved; if an <br> attempted level is not completed, enter the number of years completed:  
<input type="text" required="required" path="ineduc" name="ineduc" <% if(followupa2.getIneduc()!=0){out.print("value=\""+followupa2.getIneduc()+"\"");} %> size ="2" maxlength ="2"/> <br>
<b> <font size =  2px> 12 = high school or GED &nbsp;&nbsp; 16 = bachelor's degree &nbsp;&nbsp; 18 = master's degree&nbsp;&nbsp;  20 = doctorate  &nbsp;&nbsp;99 = unknown</font></b>
</p>

<p class="even">
<label for="textvalue3">9. What is the co-participant's relationship to the subject? </label>
<input type="radio" name="inrelto" required="required" path="inrelto" 
	<%if(followupa2.getInrelto()==1){out.print(" checked ");}%> value="1" style="margin-left:0px;" />1 &nbsp; Spouse, partner , or companion (include ex-spouse, <br> &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbspex-partner,fiance(e),boyfriend,girlfriend) <br />
<input type="radio" name="inrelto" required="required" path="inrelto" 
	<%if(followupa2.getInrelto()==2){out.print(" checked ");}%> value="2" />2 &nbsp;Child(by blood or through marriage or adoption)<br />
<input type="radio" name="inrelto" required="required" path="inrelto" 
	<%if(followupa2.getInrelto()==3){out.print(" checked ");}%> value="3" />3 &nbsp;Sibling (by blood or through marriage or adoption)  <br />
<input type="radio" name="inrelto" required="required" path="inrelto" 
	<%if(followupa2.getInrelto()==4){out.print(" checked ");}%> value="4" />4 &nbsp;Other relative (by blood or through marriage or adoption)<br />
<input type="radio" name="inrelto" required="required" path="inrelto" 
	<%if(followupa2.getInrelto()==5){out.print(" checked ");}%> value="5" />5 &nbsp;Friend,neighbour, or someone known through <br> &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;family, friend, work, or community (e.g., church) <br />
<input type="radio" name="inrelto" required="required" path="inrelto" 
	<%if(followupa2.getInrelto()==6){out.print(" checked ");}%> value="6" />6 &nbsp;paid caregiver, health care provider or clinician<br />
</p>

<p class="even">
<label for="textvalue4">&nbsp;&nbsp;&nbsp; &nbsp;9a. How long has the co-participant known the subject? </label> 
<input type="text" required="required" name="inknown" path="inknown" <% if(followupa2.getInknown()!=0){out.print("value=\""+followupa2.getInknown()+"\"");} %> size ="3" maxlength ="3"/><br /><b> years &nbsp; (999 =unknown)</b>
</p>

<p class="even">
<label for="textvalue2">10.  Does the co-participant live with the subject?:</label>
<input type="radio" required="required" name="inlivwth" path="inlivwth" 
	<%if(followupa2.getInlivwth()==1){out.print(" checked ");}%> value="1" style="margin-left:0px;"/>1 &nbsp;&nbsp;No<br />
<input type="radio" required="required" name="inlivwth" path="inlivwth"
	<%if(followupa2.getInlivwth()==2){out.print(" checked ");}%> value="2" />2 &nbsp;&nbsp;Yes (if Yes, <b> SKIP TO QUESTION 11</b>)<br />
</p>

<p class="even">
<label for="textvalue3">&nbsp;&nbsp; &nbsp; &nbsp;10 a. If no, approximate frequency of in-person visits? </label>
<input type="radio" name="invisits" required="required" path="invisits" 
	<%if(followupa2.getInvisits()==1){out.print(" checked ");}%> value="1" style="margin-left:0px;" />1 &nbsp;&nbsp;Daily <br />
<input type="radio" name="invisits" required="required" path="invisits" 
	<%if(followupa2.getInvisits()==2){out.print(" checked ");}%> value="2" />2 &nbsp;&nbsp;At least three times per week<br />
<input type="radio" name="invisits" required="required" path="invisits" 
	<%if(followupa2.getInvisits()==3){out.print(" checked ");}%> value="3" />3 &nbsp;&nbsp;Weekly <br />
<input type="radio" name="invisits" required="required" path="invisits" 
	<%if(followupa2.getInvisits()==4){out.print(" checked ");}%> value="4" />4 &nbsp;&nbsp;At least three times per month<br />
<input type="radio" name="invisits" required="required" path="invisits" 
	<%if(followupa2.getInvisits()==5){out.print(" checked ");}%> value="5" />5 &nbsp;&nbsp;Monthly <br />
<input type="radio" name="invisits" required="required" path="invisits" 
	<%if(followupa2.getInvisits()==6){out.print(" checked ");}%> value="6" />6 &nbsp;&nbsp;Less than once a month<br />
</p>

<p class="even">
<label for="textvalue4">&nbsp;&nbsp; &nbsp; &nbsp;10 b. If no, approximate frequency of telephone contact? </label>
<input type="radio" name="incalls" required="required" path="incalls" 
	<%if(followupa2.getIncalls()==1){out.print(" checked ");}%> value="1" style="margin-left:0px;" />1 &nbsp;&nbsp;Daily <br />
<input type="radio" name="incalls" required="required" path="incalls" 
	<%if(followupa2.getIncalls()==2){out.print(" checked ");}%> value="2" />2 &nbsp;&nbsp;At least three times per week<br />
<input type="radio" name="incalls" required="required" path="incalls" 
	<%if(followupa2.getIncalls()==3){out.print(" checked ");}%> value="3" />3 &nbsp;&nbsp; Weekly <br />
<input type="radio" name="incalls" required="required" path="incalls" 
	<%if(followupa2.getIncalls()==4){out.print(" checked ");}%> value="4" />4 &nbsp;&nbsp;At least three times per month<br />
<input type="radio" name="incalls" required="required" path="incalls" 
	<%if(followupa2.getIncalls()==5){out.print(" checked ");}%> value="5" />5 &nbsp;&nbsp;Monthly <br />
<input type="radio" name="incalls" required="required" path="incalls" 
	<%if(followupa2.getIncalls()==6){out.print(" checked ");}%> value="6" />6 &nbsp;&nbsp;Less than once a month<br />
</p>

<p class="even">
<label for="textvalue4">11. Is there a question about the co-participant's reliability? </label>
<input type="radio" name="inrely" required="required" path="inrely" 
	<%if(followupa2.getInrely()==0){out.print(" checked ");}%> value="0" style="margin-left:0px;" />0 &nbsp;&nbsp; No <br />
<input type="radio" name="inrely" required="required" path="inrely" 
	<%if(followupa2.getInrely()==1){out.print(" checked ");}%> value="1" />1 &nbsp;&nbsp;Yes<br />
</p>
<br>
<br>
<br>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)Initial Visit</b></font><font color = "Red">Form A2 : Co-participant Demographics </font> 
</p>
<p class="footer1"> <b>Page 2 of 2</b> </p>

<input type = "submit" name="action" value="Submit" style="margin-left:400px;" />
</form:form>
</body>
</html>