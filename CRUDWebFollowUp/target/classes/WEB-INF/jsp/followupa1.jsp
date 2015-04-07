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
</head>
<body>

<div id="content">
<img src="/CRUDWebFollowUp/index.jpg" height="100" width="150" class="nacc"></img>
</div>
<input type="text" value="FOLLOW - UP VISIT PACKET"  style="background-color:Black; color:White; width:200px; font-weight :bold;"/> &nbsp; &nbsp; 
 <b>NACC UNIFORM DATA SET(UDS)</b>
<h3> Form A1:<font size = 5px> &nbsp;Subject Demographics</font></h3>
<br>
<table class="smallheader">
<tr>
<td>ADC name : &nbsp;<input type="text" name="ID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue1" style="margin-left:150px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" size ="10" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:100px;">Form date : </label><input type="text" name="MM" size ="2" maxlength="2" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" size ="2" maxlength="2" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" size ="4" maxlength="4" style="margin-left:0px; width:50px;"/>
</tr>
<tr>
<td><label for="textvalue3" style="margin-left:0px;">Visit # : </label><input type="text" size ="3" maxlength="3" name="Visit" style="margin-left:0px; width:30px;"/></td>
<td><label for="textvalue4" style="margin-left:150px;">Examiner's initials : </label><input type="text" size ="3" maxlength="3" name="EI" style="margin-left:0px; width:50px;"/></td>
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
<form:form action="followupa1.do" method="POST" commandName="followupa1">
<p class="odd">
<label for="textvalue1">1.  Subject's Month and year of birth(MM/YYYY):</label>
<form:input type="text" required ="required" path="birthmo" size= "2" maxlength="2" style="margin-left:0px;width:20px;"/>/<form:input type="text" size="4" maxlength="4" required ="required" path="birthyr" style="margin-left:0px;"/>
</p>

<p class="even">
<label for="textvalue2">2.  Subject's <u>current </u> marital status: </label>
<form:input type="radio" name="option" required ="required" path="maristat" value="1" style="margin-left:0px;" />1 Married<br />
<form:input type="radio" name="option" required ="required" path="maristat" value="2" />2 Widowed<br />
<form:input type="radio" name="option" required ="required" path="maristat" value="3" />3 Divorced<br />
<form:input type="radio" name="option" required ="required" path="maristat" value="4" />4 Separated<br />
<form:input type="radio" name="option" required ="required" path="maristat" value="5" />5 Never married (or marriage was annulled)<br />
<form:input type="radio" name="option" required ="required" path="maristat" value="6" />6 Living as Married /domestic partner<br />
<form:input type="radio" name="option" required ="required" path="maristat" value="9" />9 Unknown<br />
</p>

<p class="odd">
<label for="textvalue3">3.  Subject's sex:</label>
<form:input type="radio" name="sex" required ="required" path="sex" value="0" style="margin-left:0px;"/>1 Male<br />
<form:input type="radio" name="sex" required ="required" path="sex" value="1" />2 Female<br />
</p>

<p class="even">
<label for="textvalue4">4.  What is the subject's living situation? </label>
<form:input type="radio" name="living" required ="required" path="livsitua" value="1" style="margin-left:0px;" />1 Lives Alone<br />
<form:input type="radio" name="living" required ="required" path="livsitua" value="2" />2 Lives with one other person: a spouse or partner<br />
<form:input type="radio" name="living" required ="required" path="livsitua" value="3" />3 Lives with one other person: a relative,friend, or roommate<br />
<form:input type="radio" name="living" required ="required" path="livsitua" value="4" />4 Lives with a caregiver who is not a spouse/partner ,relative ,or friend <br />
<form:input type="radio" name="living" required ="required" path="livsitua" value="5" />5 Lives with a group (related or not related) in a private residence<br />
<form:input type="radio" name="living" required ="required" path="livsitua" value="6" />6 Lives in a group home (e.g., assisted living ,nursing home,or convent)<br />
<form:input type="radio" name="living" required ="required" path="livsitua" value="9" />9 Unknown<br />
</p>

<p class="odd">
<label for="textvalue5">5.  What is the subject's level of independence? </label>
<form:input type="radio" name="level" required ="required" path="independ" value="1" style="margin-left:0px;" />1 Able to live independently<br />
<form:input type="radio" name="level" required ="required" path="independ" value="2" />2 Requires some assistance with complex activities<br />
<form:input type="radio" name="level" required ="required" path="independ" value="3" />3 Requires some assistance with basic activities<br />
<form:input type="radio" name="level" required ="required" path="independ" value="4" />4 Completely dependent <br />
<form:input type="radio" name="level" required ="required" path="independ" value="9" />9 Unknown<br />
</p>

<p class="even">
<label for="textvalue6">6.  What is the subject's primary type of residence? </label>
<form:input type="radio" name="resi" required ="required" path="residenc" value="1" style="margin-left:0px;" />1 Single - or multi -family private residence (apartment,condo,house)<br />
<form:input type="radio" name="resi" required ="required" path="residenc" value="2" />2 Retirement community or independent group living<br />
<form:input type="radio" name="resi" required ="required" path="residenc" value="3" />3 Assisted living,adult family home,or boarding home<br />
<form:input type="radio" name="resi" required ="required" path="residenc" value="4" />4 Skilled nursing facility,nursing home,hospital , or hospice<br />
<form:input type="radio" name="resi" required ="required" path="residenc" value="9" />9 Unknown<br />
</p>

<p class="odd">
<label for="textvalue7">7.  ZIP Code (first three digits) of subject's primary residence: </label>
<form:input type="text" name="zip" path="zip" size = "3" maxlength="3" style="margin-left:0px;"/>(If unknown,leave blank)
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