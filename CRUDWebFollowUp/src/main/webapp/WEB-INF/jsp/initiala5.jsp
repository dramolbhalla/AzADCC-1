<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/jsp/includes.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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



<font size =3px><i>INSTRUCTION : This form is to be completed by the clinicians or ADC staff. For additional clarification and examples , see UDS Coding Guidebook
for Follow-Up Visit Packet , Form A1.Check only <u>one</u> box per question.</i></font>
<br><br>
<br>
<font color="red"> <span>${message}</span></font>
<form:form action="initiala5.do" method="POST" commandName="initiala5">
<p class="odd">
<label for="textvalue1">1. History of cigarette smoking and alcohol use</label>
</p>
<p class="odd">
<label for="textvalue2">CIGARETTE SMOKING</label>
</p>
<p class="even">
<label for="textvalue9">1a. Has subject smoked within the last 30 days?</label>
<form:input type="radio" name="option" required ="required" path="tobac30" value="0" style="margin-left:0px;" />0 No
<form:input type="radio" name="option" required ="required" path="tobac30" value="1" style="margin-left:10px;" />1 Yes
<form:input type="radio" name="option" required ="required" path="tobac30" value="9" style="margin-left:10px;"/>9 Unknown <br />
</p>
<p class="even">
<label for="textvalue10">1b. Has subject smoked more than 100 cigarettes in her/his</label>
<form:input type="radio" name="option" required ="required" path="tobac100" value="0" style="margin-left:0px;" />0 No
<form:input type="radio" name="option" required ="required" path="tobac100" value="1" style="margin-left:10px;"/>1 Yes
<form:input type="radio" name="option" required ="required" path="tobac100" value="9" style="margin-left:10px;"/>9 Unknown <br />
</p>
<p class="odd">
<label for="textvalue3">1c. Total years smoked (99 = unknown)</label>
<form:input type="text" required ="required" path="smokyrs" size= "2" maxlength="2" style="margin-left:0px;width:20px;"/>
</p>
<p class="even">
<label for="textvalue4">id. Average number of packs smoked per day: </label>
<form:input type="radio" name="option" required ="required" path="packsper" value="1" style="margin-left:0px;" />1 cigarette to less than 1/2 pack<br />
<form:input type="radio" name="option" required ="required" path="packsper" value="2" />2 1/2 pack to less than 1 pack<br />
<form:input type="radio" name="option" required ="required" path="packsper" value="3" />3 1 pack to less than 1.5 packs <br />
<form:input type="radio" name="option" required ="required" path="packsper" value="4" />4 1.5 packs to 2 packs<br />
<form:input type="radio" name="option" required ="required" path="packsper" value="5" />5 2 packs or more<br />
<form:input type="radio" name="option" required ="required" path="packsper" value="6" />6 Unknown<br />
</p>
<p class="odd">
<label for="textvalue5">1e. If the subject quit smoking ,specify the age at which he/she last smoked(i.e.,quit) (888 = N/A,999 = unknown)</label>
<form:input type="text" required ="required" path="quitsmok" size= "3" maxlength="3" style="margin-left:0px;width:20px;"/>
</p>
<p class="odd">
<label for="textvalue6">ALCOHOL USE</label>
</p>


<p class="even">
<label for="textvalue7">1f. In the past three months,has the subject consumed any alcohol?</label>
<form:input type="radio" name="consumed" required ="required" path="alcoccas" value="0" style="margin-left:0px;"/>0 No <b> (SKIP TO QUESTION 2a)</b><br />
<form:input type="radio" name="consumed" required ="required" path="alcoccas" value="1" />1 Yes<br />
<form:input type="radio" name="consumed" required ="required" path="alcoccas" value="" />2 Unknown <b> (SKIP TO QUESTION 2a)</b><br />
</p>

<p class="even">
<label for="textvalue4">1g.  During the past three months, how often did the subject have at least one drink of any alcoholic beverage such as wine,beer,malt liquor, or spirits?  </label>
<form:input type="radio" name="living" required ="required" path="alcfreq" value="0" style="margin-left:0px;" />0 Less than once a month<br />
<form:input type="radio" name="living" required ="required" path="alcfreq" value="1" />1 About once a month<br />
<form:input type="radio" name="living" required ="required" path="alcfreq" value="2" />2 About once a week<br />
<form:input type="radio" name="living" required ="required" path="alcfreq" value="3" />3 A few times a week<br />
<form:input type="radio" name="living" required ="required" path="alcfreq" value="4" />4 Daily or almost daily<br />
<form:input type="radio" name="living" required ="required" path="alcfreq" value="9" />9 Unknown<br />
</p>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Follow-up Visit</b></font> 
</p>
<p class="footer1"> <b>Page 1 of 4</b> </p>
<input type = "submit" name="action" value="Move to page 2" style="margin-left:400px;" /> 
</form:form>
</body>
</html>