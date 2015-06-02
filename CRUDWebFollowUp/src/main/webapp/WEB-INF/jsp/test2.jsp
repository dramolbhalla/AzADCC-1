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

<HR COLOR="CornflowerBlue" WIDTH="100%">
<br>
<br>
<form:form action="test2.do" method="POST" commandName="test2">
<p class="odd">
<label for="textvalue1">6.  What additional beyond those reported in Questions 4 and 5 , does the co-participant report?</label>
<form:input type="radio" name="myvalue2" required="required" path="myvalue2" value="1" style="margin-left:0px;" />1 &nbsp;&nbsp;&nbsp;White <br />
<form:input type="radio" name="myvalue2" required="required" path="myvalue2" value="2" />2 &nbsp;&nbsp;&nbsp;Black or African American<br />
<form:input type="radio" name="myvalue2" required="required" path="myvalue2" value="3" />3 &nbsp;&nbsp;&nbsp;American India or Alaska Native<br />
</p>
<p class="evan">
<label for="textvalue1">7.  What additional beyond those reported in Questions 4 and 5 , does the co-participant report?</label>
<form:input type="radio" name="myvalue3" required="required" path="myvalue3" value="1" style="margin-left:0px;" />1 &nbsp;&nbsp;&nbsp;White <br />
<form:input type="radio" name="myvalue3" required="required" path="myvalue3" value="2" />2 &nbsp;&nbsp;&nbsp;Black or African American<br />
<form:input type="radio" name="myvalue3" required="required" path="myvalue3" value="3" />3 &nbsp;&nbsp;&nbsp;American India or Alaska Native<br />
</p>
<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)Initial Visit</b></font><font color = "Red">Form A2 : Co-participant Demographics </font> 
</p>
<p class="footer1"> <b>Page 2 of 2</b> </p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 
</form:form>
</body>
</html>