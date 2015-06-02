<%@page import="com.web.model.FollowupA1, com.web.model.Header"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Subject Demographics</title>
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
table.smallheader
{
font size :3px;
font-weight :bold;
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
<script type="text/javascript">
function validate()
{ 
	
	
	var birthmo = document.getElementById("birthmo").value;
	var currentyear = new Date().getFullYear();
	var birthyr = document.getElementById("birthyr").value;
	var diff = currentyear - birthyr;
	
	if(birthmo < 1 || birthmo > 12 )
	{
	 window.alert( "Please enter a valid Birth Month." );
	 return false;
	}
	if(diff > 120 || birthyr > currentyear )
	{
	 window.alert( "Please enter a valid Birth Year." );
	 return false;
	}
}
</script>
</head>
<body>
<div id="content">
<img src="/CRUDWebFollowUp/index.jpg" height="100" width="150" class="nacc"></img>
</div>
 
 <b>NACC UNIFORM DATA SET(UDS)</b>
<h3> Form A1: <font size = 5px> &nbsp;Subject Demographics</font></h3>
<br>
<form:form action="followupa1.do" method="POST" commandName="followupa1" onsubmit="return validate();">

<%
	Header header = (Header)session.getAttribute("header");
	FollowupA1 followupa1 = (FollowupA1) session.getAttribute("followupa1");
%>
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
	<input type="hidden" name="formid" value="A1"/>
	<input type="hidden" name="formver" value="3"/>
</td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">
<font size =3px><i>INSTRUCTION : This form is to be completed by intake interviewer based on ADC scheduling records,subject interview,
medical records, and co-participant report (as needed.) For additional clarification and examples , see UDS Coding Guidebook
for Follow-Up Visit Packet , Form A1.Check only <u>one</u> box per question.</i></font>
<br><br>
<b>To print a copy of data collected for this form at a previous UDS visit, go to</b> <font size=2px color ="CornflowerBlue">https://www.alz.washington.edu/MEMBER/siteprint.html</font><b>.</b>
<br>
<br>
<font color="red"> <span>${message}</span></font>
	
<p class="odd">
<label for="textvalue1">1.  Subject's Month and year of birth(MM/YYYY):</label>
<input name="birthmo" type="text" value="<%= followupa1.getBirthmo() %>" required ="required" path="birthmo" size= "2" maxlength="2" style="margin-left:0px;width:20px;"/>/
<input name="birthyr" type="text" value="<%= followupa1.getBirthyr() %>" required ="required" path="birthyr" size="4" maxlength="4" style="margin-left:0px;"/>
</p>

<p class="even">
<label for="textvalue2">2.  Subject's <u>current </u> marital status: <%=followupa1.getMaristat() %></label>
<input type="radio" name="maristat" required ="required" path="maristat" 
	<%if(followupa1.getMaristat()==1){out.print(" checked ");}%> value="1" style="margin-left:0px;" />1 Married<br />
<input type="radio" name="maristat" required ="required" path="maristat" 
	<%if(followupa1.getMaristat()==2){out.print(" checked ");}%> value="2" />2 Widowed<br />
<input type="radio" name="maristat" required ="required" path="maristat" 
	<%if(followupa1.getMaristat()==3){out.print(" checked ");} %>value="3" />3 Divorced<br />
<input type="radio" name="maristat" required ="required" path="maristat"
	<%if(followupa1.getMaristat()==4){out.print(" checked ");} %> value="4" />4 Separated<br />
<input type="radio" name="maristat" required ="required" path="maristat" 
	<%if(followupa1.getMaristat()==5){out.print(" checked ");} %>value="5" />5 Never married (or marriage was annulled)<br />
<input type="radio" name="maristat" required ="required" path="maristat" 
	<%if(followupa1.getMaristat()==6){out.print(" checked ");} %>value="6" />6 Living as Married /domestic partner<br />
<input type="radio" name="maristat" required ="required" path="maristat" 
	<%if(followupa1.getMaristat()==9){out.print(" checked ");} %>value="9" />9 Unknown<br />
</p>

<p class="odd">
<label for="textvalue3">3.  Subject's sex:</label>
<input type="radio" name="sex" required ="required" path="sex" 
	<%if(followupa1.getSex()==0){out.print(" checked ");} %>value="0" style="margin-left:0px;"/>1 Male<br />
<input type="radio" name="sex" required ="required" path="sex" 
	<%if(followupa1.getSex()==1){out.print(" checked ");} %>value="1" />2 Female<br />
</p>

<p class="even">
<label for="textvalue4">4.  What is the subject's living situation? </label>
<input type="radio" name="livsitua" required ="required" path="livsitua" 
	<%if(followupa1.getLivsitua()==1){out.print(" checked ");} %>value="1" style="margin-left:0px;" />1 Lives Alone<br />
<input type="radio" name="livsitua" required ="required" path="livsitua" 
	<%if(followupa1.getLivsitua()==2){out.print(" checked ");} %>value="2" />2 Lives with one other person: a spouse or partner<br />
<input type="radio" name="livsitua" required ="required" path="livsitua" 
	<%if(followupa1.getLivsitua()==3){out.print(" checked ");} %>value="3" />3 Lives with one other person: a relative,friend, or roommate<br />
<input type="radio" name="livsitua" required ="required" path="livsitua" 
	<%if(followupa1.getLivsitua()==4){out.print(" checked ");} %>value="4" />4 Lives with a caregiver who is not a spouse/partner ,relative ,or friend <br />
<input type="radio" name="livsitua" required ="required" path="livsitua" 
	<%if(followupa1.getLivsitua()==5){out.print(" checked ");} %>value="5" />5 Lives with a group (related or not related) in a private residence<br />
<input type="radio" name="livsitua" required ="required" path="livsitua" 
	<%if(followupa1.getLivsitua()==6){out.print(" checked ");} %>value="6" />6 Lives in a group home (e.g., assisted living ,nursing home,or convent)<br />
<input type="radio" name="livsitua" required ="required" path="livsitua" 
	<%if(followupa1.getLivsitua()==9){out.print(" checked ");} %>value="9" />9 Unknown<br />
</p>

<p class="odd">
<label for="textvalue5">5.  What is the subject's level of independence? </label>
<input type="radio" name="independ" required ="required" path="independ" 
	<%if(followupa1.getIndepend()==1){out.print(" checked ");} %>value="1" style="margin-left:0px;" />1 Able to live independently<br />
<input type="radio" name="independ" required ="required" path="independ" 
	<%if(followupa1.getIndepend()==2){out.print(" checked ");} %>value="2" />2 Requires some assistance with complex activities<br />
<input type="radio" name="independ" required ="required" path="independ" 
	<%if(followupa1.getIndepend()==3){out.print(" checked ");} %>value="3" />3 Requires some assistance with basic activities<br />
<input type="radio" name="independ" required ="required" path="independ" 
	<%if(followupa1.getIndepend()==4){out.print(" checked ");} %>value="4" />4 Completely dependent <br />
<input type="radio" name="independ" required ="required" path="independ" 
	<%if(followupa1.getIndepend()==9){out.print(" checked ");} %>value="9" />9 Unknown<br />
</p>

<p class="even">
<label for="textvalue6">6.  What is the subject's primary type of residence? </label>
<input type="radio" name="residenc" required ="required" path="residenc" 
	<%if(followupa1.getResidenc()==1){out.print(" checked ");} %>value="1" style="margin-left:0px;" />1 Single - or multi -family private residence (apartment,condo,house)<br />
<input type="radio" name="residenc" required ="required" path="residenc" 
	<%if(followupa1.getResidenc()==2){out.print(" checked ");} %>value="2" />2 Retirement community or independent group living<br />
<input type="radio" name="residenc" required ="required" path="residenc" 
	<%if(followupa1.getResidenc()==3){out.print(" checked ");} %>value="3" />3 Assisted living,adult family home,or boarding home<br />
<input type="radio" name="residenc" required ="required" path="residenc" 
	<%if(followupa1.getResidenc()==4){out.print(" checked ");} %>value="4" />4 Skilled nursing facility,nursing home,hospital , or hospice<br />
<input type="radio" name="residenc" required ="required" path="residenc" 
	<%if(followupa1.getResidenc()==9){out.print(" checked ");} %>value="9" />9 Unknown<br />
</p>

<p class="odd">
<label for="textvalue7">7.  ZIP Code (first three digits) of subject's primary residence: </label>
<input type="text" name="zip" path="zip" <% if(followupa1.getZip()!=null){out.print("value=\""+followupa1.getZip()+"\"");} %> size = "3" maxlength="3" style="margin-left:0px;"/>(If unknown,leave blank)
</p>
<br>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Follow-up Visit</b></font> 
</p>
<p class="footer1"> <b>Page 1 of 1</b> </p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form:form>
</body>
</html>