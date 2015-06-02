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
<img src="/Show/index.jpg" height="100" width="150" class="nacc"></img>
</div>
<input type="text" value="INITIAL VISIT PACKET"  style="background-color:Black; color:White; width:200px; font-weight :bold;"/> &nbsp; &nbsp; 
 <b>NACC UNIFORM DATA SET(UDS)</b>
<h3> Form A1:<font size = 5px> &nbsp;Subject Demographics</font></h3>
<br>
<table class="smallheader">
<tr>
<td>ADC name : &nbsp;<input type="text" name="ID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue1" style="margin-left:150px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:100px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">
<br>
<br>
<font color="red"> <span>${message}</span></font>
<form:form action="initiala13.do" method="POST" commandName="initiala13">
<p class="even">
<label for="textvalue1">12.  Subject's primary language : </label>
<form:input type="radio" name="prilang" path="primlang" required ="required" value="1" style="margin-left:0px;" />1 English<br />
<form:input type="radio" name="prilang" path="primlang" required ="required" value="2" />2 Spanish<br />
<form:input type="radio" name="prilang" path="primlang" required ="required" value="3" />3 Mandarin<br />
<form:input type="radio" name="prilang" path="primlang" required ="required" value="4" />4 Cantonese<br />
<form:input type="radio" name="prilang" path="primlang" required ="required" value="5" />5 Russian<br />
<form:input type="radio" name="prilang" path="primlang" required ="required" value="6" />6 Japanese<br />
<form:input type="radio" name="prilang" path="primlang" required ="required" value="8" />8 Other primary language (SPECIFY) <form:input type="text" name="Visit" path="primlanx" style="margin-left:0px; width:150px;"/><br />
<form:input type="radio" name="option" path="primlang" required ="required" value="9" />9 Unknown<br />
</p>

<p class="odd">
13. Subject's years of education - use the codes below to report the level achieved; if<br>
an attempted level is not completed, enter the number of years completed:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  <form:input type="text" name="educ" path="educ" required ="required" style="margin-left:0px; width:20px;"/> <br>
<font size=2px> <b>12= high school or GED &nbsp;&nbsp;&nbsp;16 = bachelor's degree &nbsp;&nbsp;&nbsp; 18= master's degree &nbsp;&nbsp;&nbsp; 20= doctorate &nbsp;&nbsp;&nbsp; 99 = unknown </b></font>
</p>

<p class="even">
<label for="textvalue2">14.  Subject's <u>current</u> marital status: </label>
<form:input type="radio" name="marstat" path="maristat" required ="required" value="1" style="margin-left:0px;" />1 Married<br />
<form:input type="radio" name="marstat" path="maristat" required ="required" value="2" />2 Widowed<br />
<form:input type="radio" name="marstat" path="maristat" required ="required" value="3" />3 Divorced<br />
<form:input type="radio" name="marstat" path="maristat" required ="required" value="4" />4 Separated<br />
<form:input type="radio" name="marstat" path="maristat" required ="required" value="5" />5 Never married (or marriage was annulled)<br />
<form:input type="radio" name="marstat" path="maristat" required ="required" value="6" />6 Living as Married /domestic partner<br />
<form:input type="radio" name="marstat" path="maristat" required ="required" value="9" />9 Unknown<br />
</p>

<p class="odd">
<label for="textvalue4">15.  What is the subject's living situation? </label>
<form:input type="radio" name="living" path="livsitua" required ="required" value="1" style="margin-left:0px;" />1 Lives Alone<br />
<form:input type="radio" name="living" path="livsitua" required ="required" value="2" />2 Lives with one other person: a spouse or partner<br />
<form:input type="radio" name="living" path="livsitua" required ="required" value="3" />3 Lives with one other person: a relative,friend, or roommate<br />
<form:input type="radio" name="living" path="livsitua" required ="required" value="4" />4 Lives with a caregiver who is not a spouse/partner ,relative ,or friend <br />
<form:input type="radio" name="living" path="livsitua" required ="required" value="5" />5 Lives with a group (related or not related) in a private residence<br />
<form:input type="radio" name="living" path="livsitua" required ="required" value="6" />6 Lives in a group home (e.g., assisted living ,nursing home,or convent)<br />
<form:input type="radio" name="living" path="livsitua" required ="required" value="9" />9 Unknown<br />
</p>

<p class="even">
<label for="textvalue5">16.  What is the subject's level of independence? </label>
<form:input type="radio" name="level" path="independ" required ="required" value="1" style="margin-left:0px;" />1 Able to live independently<br />
<form:input type="radio" name="level" path="independ" required ="required" value="2" />2 Requires some assistance with complex activities<br />
<form:input type="radio" name="level" path="independ" required ="required" value="3" />3 Requires some assistance with basic activities<br />
<form:input type="radio" name="level" path="independ" required ="required" value="4" />4 Completely dependent <br />
<form:input type="radio" name="level" path="independ" required ="required" value="9" />9 Unknown<br />
</p>

<p class="odd">
<label for="textvalue6">17.  What is the subject's primary type of residence? </label>
<form:input type="radio" name="residenc" path="residenc" required ="required" value="1" style="margin-left:0px;" />1 Single - or multi -family private residence (apartment,condo,house)<br />
<form:input type="radio" name="residenc" path="residenc" required ="required" value="2" />2 Retirement community or independent group living<br />
<form:input type="radio" name="residenc" path="residenc" required ="required" value="3" />3 Assisted living,adult family home,or boarding home<br />
<form:input type="radio" name="residenc" path="residenc" required ="required" value="4" />4 Skilled nursing facility,nursing home,hospital , or hospice<br />
<form:input type="radio" name="residenc" path="residenc" required ="required" value="9" />9 Unknown<br />
</p>

<p class="even">
<label for="textvalue7">18.  ZIP Code (first three digits) of subject's primary residence: </label>
<form:input type="text" name="zip" path="zip" required ="required" size = "3" maxlength="3" style="margin-left:0px;"/>(If unknown,leave blank)
</p>

<p class="odd">
<label for="textvalue6">19.  Is the subject left - or right handed (for example, which hand would s/he normally use to write or throw a ball) </label>
<form:input type="radio" name="rlhand" path="handed" required ="required" value="1" style="margin-left:0px;" />1 Left - handed<br />
<form:input type="radio" name="rlhand" path="handed" required ="required" value="2" />2 Right - handed<br />
<form:input type="radio" name="rlhand" path="handed" required ="required" value="3" />3 Ambidextrous<br />
<form:input type="radio" name="rlhand" path="handed" required ="required" value="9" />9 Unknown<br />
</p>

<br>
<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Follow-up Visit</b></font> 
</p>
<p class="footer1"> <b>Page 3 of 3</b> </p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form:form>
</body>
</html>