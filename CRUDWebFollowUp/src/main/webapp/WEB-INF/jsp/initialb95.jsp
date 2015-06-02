<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinical Judgment of Symptoms</title>
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
<p class="odd">
<b> Candidates for further evaluation for Lewy body disease or frontotemporal lobar degeneration</b> <br>
</p>
<form:form action="initialb95.do" method="POST" commandName="initialb95">
<p class="even">
22.  Is the subject a potential candidate for further evaluation for Lewy body disease?
<form:input type="radio" name="lbdeval" path="lbdeval" required ="required" value="0" style="margin-left:80px;"/>0 No<br />
<form:input type="radio" name="lbdeval" path="lbdeval" required ="required" value="1" style="margin-left:626px;"/>1 Yes<br />
</p>
<p class="even">
23.  Is the subject a potential candidate for further evaluation for frontotemporal lobar disease?
<form:input type="radio" name="ftldeval" path="ftldeval" required ="required" value="0" style="margin-left:20px;"/>0 No<br />
<form:input type="radio" name="ftldeval" path="ftldeval" required ="required" value="1" style="margin-left:626px;"/>1 Yes<br />
</p>


<br>
<br>
<br>
<p class="footer">
 <font size =2px>National Alzheimer's Coordinating Center &nbsp;&nbsp; | &nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br></font>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Telephone Follow-up Visit</b></font> <font color = "Red">Form B9 : Clinical Judgment of Symptoms </font>  
</p>
<p class="footer1"> <b>Page 5 of 5</b> </p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form:form>
</body>
</html>