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
background-color : #E6E6E6;
font-weight :light;
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
table.smallheader
{
font size :3px;
font-weight :bold;
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
<h3> Form A3:<font size = 5px> &nbsp;Subject Family History</font></h3>
<br>
<table class="smallheader">
<tr>
<td>ADC name : &nbsp;<input type="text" name="ID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue1" style="margin-left:150px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:100px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
</tr>
<tr>
<td><label for="textvalue3" style="margin-left:0px;">Visit # : </label><input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
<td><label for="textvalue4" style="margin-left:150px;">Examiner's initials : </label><input type="text" name="EI" style="margin-left:0px; width:50px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">

<form:form action="initiala3.do" method="POST" commandName="initiala3">

<font size =3px><i>INSTRUCTION : This form is to be completed by clinician with experience in evaluating patients with neurological problems<br>
and psychiatric conditions. For additional clarification and examples , see UDS Coding Guidebook for Initial Visit Packet , 
Form A3</i></font>

<br>
<br>

<table  width ="100% " border = 1 style="border: 1px solid CornflowerBlue;">
<tr>
<td width= "50%">1.  Are there affected first-degree relatives(biological parents, full siblings, or biological children? ) <br> "Affected" = having dementia or one of the non-normal diagonoses listed in Appendix 1 on page 5</td>
<td width= "50%">
<input type="radio" name="afffamm" path="afffamm" value="0" style="margin-left:0px;" />0 No <br />
<input type="radio" name="afffamm" path="afffamm" value="1" style="margin-left:0px;"/>1 YES<br />
<input type="radio" name="afffamm" path="afffamm" value="9"  style="margin-left:0px;"/>9 Unknown <br /> <br></td>
</tr>
<tr bgcolor = "Silver">
<td  width= "50%">2a. In this family ,is there evidence for an AD mutation?If yes <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;select predominant mutation.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NOTE : APOE should not be reported here. </td>
<td width= "50%">
<input type="radio" name="fadmut" path="fadmut" value="0" style="margin-left:0px;" />0 No <b>  (SKIP TO QUESTION 3a)</b><br />
<input type="radio" name="fadmut" path="fadmut" value="1" style="margin-left:0px;" style="margin-left:0px;"/>1 YES ,APP<br />
<input type="radio" name="fadmut" path="fadmut" value="2"  style="margin-left:0px;" style="margin-left:0px;"/> 2 YES,PS-1 (PSEN 1)<br>
<input type="radio" name="fadmut" path="fadmut" value="8"  style="margin-left:0px;" style="margin-left:0px;"/> 8 YES,other (SPECIFY) : 
<input type="text" name="fadmutx" path="fadmutx" style="margin-left:0px;"/><br />
<input type="radio" name="fadmut" path="fadmut" value="9"  style="margin-left:0px;" style="margin-left:0px;"/> 9 Unknown whether mutation exists <font size=2px> <b> (SKIP TO QUESTION 3a)</b><br><br></font>
</td>
</tr>
<tr>
<td width= "50%">2b. Source of evidence for AD mutation (check one): </td>
<td width= "50%">
<input type="radio" name="fadmuso" path="fadmuso" value="1" style="margin-left:0px;" />1 Family report (no test documentation available)<br />
<input type="radio" name="fadmuso" path="fadmuso" value="2" style="margin-left:0px;"/>2 Commercial test documentation<br />
<input type="radio" name="fadmuso" path="fadmuso" value="3"  style="margin-left:0px;"/>3 Research lab test documentation<br />
<input type="radio" name="fadmuso" path="fadmuso" value="8" style="margin-left:0px;"/>8 Other (SPECIFY) : 
<input type="text" name="fadmusox" path="fadmusox" style="margin-left:0px;"/><br />
<input type="radio" name="fadmuso" path="fadmuso" value="9"  style="margin-left:0px;"/>9 Unknown<br /></td>
</tr>
<tr bgcolor = "Silver">
<td  width= "50%">3a. In this family ,is there evidence for an FTLD mutation?If yes <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;select predominant mutation.</td>
<td width= "50%">
<input type="radio" name="fftdmut" path="fftdmut" value="0" style="margin-left:0px;" />0 No <b> (SKIP TO QUESTION 4a)</b><br />
<input type="radio" name="fftdmut" path="fftdmut" value="1" style="margin-left:0px;" style="margin-left:0px;"/>1 YES ,MAPT<br />
<input type="radio" name="fftdmut" path="fftdmut" value="2"  style="margin-left:0px;" style="margin-left:0px;"/> 2 YES,PGRN<br>
<input type="radio" name="fftdmut" path="fftdmut" value="3"  style="margin-left:0px;" style="margin-left:0px;"/> 3 Yes, C9orf72<br>
<input type="radio" name="fftdmut" path="fftdmut" value="4"  style="margin-left:0px;" style="margin-left:0px;"/> 3 Yes, FUS<br>
<input type="radio" name="fftdmut" path="fftdmut" value="8"  style="margin-left:0px;" style="margin-left:0px;"/> 3 Yes, Other (SPECIFY) :<br>
<input type="text" name="fftdmutx" path="fftdmutx" style="margin-left:0px;"/><br />
<input type="radio" name="fftdmut" path="fftdmut" value="9"  style="margin-left:0px;" style="margin-left:0px;"/> 9 Unknown whether mutation exists <font size=2px> <b> (SKIP TO QUESTION 4a)</b><br></font>
</td>
</tr>
<tr>
<td width= "50%">3b. Source of evidence for FTLD mutation (check one): <br></td>
<td width= "50%">
<input type="radio" name="fftdmuso" path="fftdmuso" value="1" style="margin-left:0px;" />1 Family report (no test documentation available)<br />
<input type="radio" name="fftdmuso" path="fftdmuso" value="2" style="margin-left:0px;"/>2 Commercial test documentation<br />
<input type="radio" name="fftdmuso" path="fftdmuso" value="3"  style="margin-left:0px;"/>3 Research lab test documentation<br />
<input type="radio" name="fftdmuso" path="fftdmuso" value="8" style="margin-left:0px;"/>8 Other (SPECIFY):&nbsp;&nbsp; 
<input type="text" name="fftdmusx" path="fftdmusx" style="margin-left:0px;"/><br />
<input type="radio" name="fftdmuso" path="fftdmuso" value="9"  style="margin-left:0px;"/>9 Unknown<br />
</td>
</tr>
</table>
<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> 
</p>
<p class="footer1"> <b>Page 1 of 5</b> </p>
<input type = "submit" name="action" value="Move to Page 2" style="margin-left:400px;" /> </body>
</form:form>
</body>
</html>