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

<HR COLOR="CornflowerBlue" WIDTH="100%">


<form:form action="test.do" method="POST" commandName="test">
<table class="CDR" border=1>

<tr>
<td> <b>2 . DELUSIONS -</b>
Does the patient believe that ot
hers are stealing from him or her, or <br> planning to harm him or
her in some way? 
<td>2a.<form:input type="radio" name="myvalue"  path="myvalue" required ="required" value="1" style="margin-left:10px;" />1</td>
<td ><form:input type="radio" name="myvalue" path="myvalue" required ="required" value="0" style="margin-left:10px;" />0</td>
<td ><form:input type="radio" name="myvalue" path="myvalue" required ="required" value="9" style="margin-left:10px;" />9</td>
</tr>

<p class="footer1"> <b>Page 1 of 2</b> </p>
<input type = "submit" name="action" value="Move to Page 2" style="margin-left:400px;" /> 
</form:form>
</body>
</html>