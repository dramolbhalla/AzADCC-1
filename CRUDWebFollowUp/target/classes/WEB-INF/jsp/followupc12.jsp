<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Neuropsychological Battery Summary Scores</title>
<style>
body
{
margin-left : 200px;
margin-top : 50px;
font-family : Arial Black;
width: 70%;
min-width: 800px;
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
background-color : #08088A;
font-weight :bold;
padding: 0px;
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
font-weight :light;
padding: 20px;
margin: 0;
}
p.Silver
{
border: CornflowerBlue 1px solid;
background-color : Silver;
font-weight :bold;
padding: 20px;
margin: 0;
}
table.CDR
{
width :"100% ";
border: 1px solid CornflowerBlue;
}
table.smallheader
{
font size :3px;
font-weight :bold;
}
p.lense label
{
display: inline-block;
width: 600px; 
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
<h3> Form C1:<font size = 5px>&nbsp;&nbsp;Neuropsychological Battery Summary Scores</font></h3>
<br>
<table class="smallheader">
<tr>
<td><label for="textvalue1" style="margin-left:10px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:180px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
<td><label for="textvalue3" style="margin-left:250px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">

<b>KEY : 
95/995 = Physical problem
96/996 = Cognitive/behavior problem
97/997 = Other problem
98/998 = Verbal refusal 
</b>
<form:form action="followupc12.do" method="POST" commandName="followupc12">
<p class="even">
1d. Orientation subscale score
</p>
<p class="even">
1d1. Time: <form:input type="text" name="mmseorda" path="mmseorda" size ="2" maxlength="2" required ="required" style="margin-left:575px; width:40px;"/> <font size=3px> (0-5,95-98)</font>
</p>
<p class="even">
1d2. Place: <form:input type="text" name="mmseorlo" path="mmseorlo" size ="2" maxlength="2" required ="required"  style="margin-left:575px; width:40px;"/> <font size=3px> (0-5,95-98)</font>
</p>
<p class="even">
1e.Intersecting pentagon subscale score <form:input type="text" name="pentagon" path="pentagon" size ="2" maxlength="2" required ="required" style="margin-left:395px; width:40px;"/> <font size=3px> (0-1,95-98)</font>
</p>
<p class="even">
1f.Total MMSE score (using D-L-R-O-W) <font size=px> If any of the MMSE items are 95-98 ,enter 88</font><form:input type="text" name="mmse" path="mmse" size ="2" maxlength="2" required ="required" style="margin-left:80px; width:40px;"/> <font size=3px> (0-30,88)</font>
</p>
<p class="odd" style= "color :White;">
<b> 2. Administration of the remainder of the battery</b> <br>
</p>
<p class="even">
2a. The remainder of the battery (i.e.,the tests summarized below)
was administered
<form:input type="radio" name="npsycloc" path="npsycloc" required ="required" value="1" style="margin-left:20px;"/>1 In ADC/clinic <br />
<form:input type="radio" name="npsycloc" path="npsycloc" required ="required" value="2" style="margin-left:562px;"/>2 In home <br />
<form:input type="radio" name="npsycloc" path="npsycloc" required ="required" value="3" style="margin-left:562px;"/>3 In person -other <br />
</p>
<p class="even">
2b.  Language of test administration?
<form:input type="radio" name="npsylan" path="npsylan" required ="required" value="1" style="margin-left:323px;"/>1 English <br />
<form:input type="radio" name="npsylan" path="npsylan" required ="required" value="2" style="margin-left:562px;"/>2 Spanish <br />
<form:input type="radio" name="npsylan" path="npsylan" required ="required" value="3" style="margin-left:562px;"/>3 Other (SPECIFY) : <form:input type="text" name="npsylanx" path="npsylanx" size ="20" maxlength="20" style="margin-left:0px; width:200px;"/><br />
</p>

<p class="odd" style= "color :White;">
<b> 3. Logical Memory IA -Immediate</b> <br>
</p>


<p class="even">
3a.If this test has been administered to the subject
within the past <br>3 months, specify the date
previously administered: <form:input type="text" name="logimo" path="logimo" size ="2" maxlength="2" required ="required" style="margin-left:300px; width:30px;"/>/<form:input type="text" name="logiday" path="logiday" size ="2" maxlength="2" required ="required" style="margin-left:0px; width:30px;"/>/<form:input type="text" name="logiyr" path="logiyr" size ="4" maxlength="4" required ="required" style="margin-left:0px; width:50px;"/><font size=3px> (88/88/8888=N/A)</font>
</p>
<p class="even">
3a1. Total score from the previous test administration: <form:input type="text" name="logiprev" path="logiprev" size ="2" maxlength="2" required ="required" style="margin-left:375px; width:40px;"/> <font size=3px> (0-25,88=N/A)</font>
</p>
<p class="even">
3b. Total number of story units r
ecalled from this current test
administration:  <form:input type="text" name="logimem" path="logimem" size ="2" maxlength="2" required ="required" style="margin-left:225px; width:40px;"/> <font size=3px> (0-25,95-98)</font>
</p>

<p class="odd" style= "color :White;">
<b> 4. Benson Complex Figure Copy</b> <br>
</p>
<p class="even">
4a. Total score for copy of Benson figure: <form:input type="text" name="udsbentc" path="udsbentc" size ="2" maxlength="2" required ="required" style="margin-left:575px; width:40px;"/> <font size=3px> (0-77,95-98)</font>
</p>
<p class="odd" style= "color :White;">
<b> 5. Digit Span Forward</b> <br>
</p>
<p class="even">
5a. Total number of trials correct prio
r to two consecutive errors at the
same digit length: <br>
(If test not completed,enter reason code,95-98,and <b> SKIP TO QUESTION 7a</b>) <form:input type="text" name="digif" path="digif" size ="2" maxlength="2" required ="required" style="margin-left:338px; width:40px;"/><font size=3px> (0-77,95-98)</font>
</p>
<p class="even">
5b. Digit span backward length: <form:input type="text" name="digiflen" path="digiflen" size ="2" maxlength="2" required ="required" style="margin-left:635px; width:40px;"/> <font size=3px> (0-77,95-98)</font>
</p>
<p class="odd" style= "color :White;">
<b> 6. Digit Span Backward</b> <br>
</p>
<p class="even">
6a. Total number of trials correct prio
r to two consecutive errors at the
same digit length: <br>
(If test not completed,enter reason code,95-98,and <b> SKIP TO QUESTION 7a</b>) <form:input type="text" name="digib" path="digib" size ="2" maxlength="2" required ="required" style="margin-left:338px; width:40px;"/><font size=3px> (0-77,95-98)</font>
</p>
<p class="even">
6b. Digit span backward length: <form:input type="text" name="digiblen" path="digiblen" size ="2" maxlength="2" required ="required" style="margin-left:635px; width:40px;"/> <font size=3px> (0-77,95-98)</font>
</p>

<p class="odd" style= "color :White;">
<b> 7. Category Fluency</b> <br>
</p>
<p class="even">
7a. Animals : Total number of animals named in 60 seconds? <form:input type="text" name="animals" path="animals" size ="2" maxlength="2" required ="required" style="margin-left:450px; width:40px;"/><font size=3px> (0-77,95-98)</font>
</p>
<p class="even">
7b. Vegetables : Total number of vegetables named in 60 seconds? <form:input type="text" name="veg" path="veg" size ="2" maxlength="2" required ="required" style="margin-left:415px; width:40px;"/> <font size=3px> (0-77,95-98)</font>
</p>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> <font color ="Red"> Form C1 : Neuropsychological Battery Summary Scores</font>
</p>
<p class="footer1"> <b>Page 2 of 4</b> </p>
<input type = "submit" name="action" value="Move to Page 3" style="margin-left:400px;" /> 
</form:form>
</body>
</html>