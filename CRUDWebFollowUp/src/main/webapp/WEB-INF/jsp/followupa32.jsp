<%@page import="com.web.model.FollowupA3, com.web.model.Header"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Subject Medications</title>
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
table.A4
{
display: inline-block;
font-size:13px;
margin-left : 20px ;
color : CornflowerBlue ;
float: left; 
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
<%
	Header header = (Header)session.getAttribute("header");
	FollowupA3 followupa3 = (FollowupA3) session.getAttribute("followupa3");
%>
<form:form action="followupa32.do" method="POST" commandName="followupa32">
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

<table  width ="100% " style="border: 1px solid CornflowerBlue;">
<tr bgcolor = "Silver">
<td  width= "50%">3a. In this family ,is there evidence for an FTLD mutation?If yes <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;select predominant mutation.</td>
<td width= "50%">
<input type="radio" name="fftdmut" path="fftdmut" 
	<%if(followupa3.getFftdmut()==0){out.print(" checked ");}%> value="0" style="margin-left:0px;" />0 No <b>(SKIP TO QUESTION 4a)</b><br />
<input type="radio" name="fftdmut" path="fftdmut" 
	<%if(followupa3.getFftdmut()==1){out.print(" checked ");}%> value="1" style="margin-left:0px;" style="margin-left:0px;"/>1 YES ,MAPT<br />
<input type="radio" name="fftdmut" path="fftdmut" 
	<%if(followupa3.getFftdmut()==2){out.print(" checked ");}%> value="2"  style="margin-left:0px;" style="margin-left:0px;"/> 2 YES,PGRN<br>
<input type="radio" name="fftdmut" path="fftdmut" 
	<%if(followupa3.getFftdmut()==3){out.print(" checked ");}%> value="3"  style="margin-left:0px;" style="margin-left:0px;"/> 3 Yes, C9orf72<br>
<input type="radio" name="fftdmut" path="fftdmut" 
	<%if(followupa3.getFftdmut()==4){out.print(" checked ");}%> value="4"  style="margin-left:0px;" style="margin-left:0px;"/> 4 Yes, FUS<br>
<input type="radio" name="fftdmut" path="fftdmut" 
	<%if(followupa3.getFftdmut()==8){out.print(" checked ");}%> value="8"  style="margin-left:0px;" style="margin-left:0px;"/> 8 Yes, Other (SPECIFY) : 
	<input type="text" name="fftdmutx" path="fftdmutx" <% if(followupa3.getFftdmutx()!=null){out.print("value=\""+followupa3.getFftdmutx()+"\"");} %> style="margin-left:0px;"/><br>
<input type="radio" name="fftdmut" path="fftdmut" 
	<%if(followupa3.getFftdmut()==9){out.print(" checked ");}%> value="9"  style="margin-left:0px;" style="margin-left:0px;"/> 9 Unknown whether mutation exists <font size=2px> <b> (SKIP TO QUESTION 4a)</b><br></font>
</td>
</tr>
<tr>
<td width= "50%">3b. Source of evidence for FTLD mutation (check one): <br></td>
<td width= "50%">
<input type="radio" name="fftdmuso" path="fftdmuso" 
	<%if(followupa3.getFftdmuso()==1){out.print(" checked ");}%> value="1" style="margin-left:0px;" />1 Family report (no test documentation available)<br />
<input type="radio" name="fftdmuso" path="fftdmuso" 
	<%if(followupa3.getFftdmuso()==2){out.print(" checked ");}%> value="2" style="margin-left:0px;"/>2 Commercial test documentation<br />
<input type="radio" name="fftdmuso" path="fftdmuso" 
	<%if(followupa3.getFftdmuso()==3){out.print(" checked ");}%> value="3"  style="margin-left:0px;"/>3 Research lab test documentation<br />
<input type="radio" name="fftdmuso" path="fftdmuso" 
	<%if(followupa3.getFftdmuso()==8){out.print(" checked ");}%> value="8" style="margin-left:0px;"/>8 Other (SPECIFY):&nbsp;&nbsp; 
	<input type="text" name="fftdmusx" path="fftdmusx" <% if(followupa3.getFftdmusx()!=null){out.print("value=\""+followupa3.getFftdmusx()+"\"");} %> style="margin-left:0px;"/><br />
<input type="radio" name="fftdmuso" path="fftdmuso" 
	<%if(followupa3.getFftdmuso()==9){out.print(" checked ");}%> value="9"  style="margin-left:0px;"/>9 Unknown<br />
</td>
</tr>
<tr bgcolor = "Silver">
<td  width= "50%">4a. In this family ,is there evidence for an AD mutation other than an <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AD or FTLD mutation?<br>(If No or Unknown , <b> SKIP TO Question 5)</b> </td>
<td width= "50%">
<input type="radio" name="fothmut" path="fothmut" 
	<%if(followupa3.getFothmut()==0){out.print(" checked ");}%> value="0" style="margin-left:0px;" />0 No <b> (SKIP TO QUESTION 5)</b><br />
<input type="radio" name="fothmut" path="fothmut" 
	<%if(followupa3.getFothmut()==8){out.print(" checked ");}%> value="8"  style="margin-left:0px;" style="margin-left:0px;"/> 1 YES,(SPECIFY) : 
	<input type="text" name="fothmutx" path="fothmutx" <% if(followupa3.getFothmutx()!=null){out.print("value=\""+followupa3.getFothmutx()+"\"");} %> style="margin-left:0px;"/><br>
<input type="radio" name="fothmut" path="fothmut" 
	<%if(followupa3.getFothmut()==9){out.print(" checked ");}%> value="9"  style="margin-left:0px;" style="margin-left:0px;"/> 9 Unknown <font size=2px> <b> (SKIP TO QUESTION 5)</b><br></font>
</td>
</tr>
<tr>
<td width= "50%">4b. Source of evidence for other mutation (check one): </td>
<td width= "50%">
<input type="radio" name="fothmuso" path="fothmuso" 
	<%if(followupa3.getFothmuso()==1){out.print(" checked ");}%> value="1" style="margin-left:0px;" />1 Family report (no test documentation available)<br />
<input type="radio" name="fothmuso" path="fothmuso" 
	<%if(followupa3.getFothmuso()==2){out.print(" checked ");}%> value="2" style="margin-left:0px;"/>2 Commercial test documentation<br />
<input type="radio" name="fothmuso" path="fothmuso" 
	<%if(followupa3.getFothmuso()==3){out.print(" checked ");}%> value="3"  style="margin-left:0px;"/>3 Research lab test documentation<br />
<input type="radio" name="fothmuso" path="fothmuso" 
	<%if(followupa3.getFothmuso()==8){out.print(" checked ");}%> value="8" style="margin-left:0px;"/>8 Other (Specify) : 
	<input type="text" name="fothmusx" path="fothmusx"  <% if(followupa3.getFothmusx()!=null){out.print("value=\""+followupa3.getFothmusx()+"\"");} %> style="margin-left:0px;"/><br />
<input type="radio" name="fothmuso" path="fothmuso" 
	<%if(followupa3.getFothmuso()==9){out.print(" checked ");}%> value="9"  style="margin-left:0px;"/>9 Unknown<br /></td>
</tr>
</table>

<br>
<br>



<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Follow-up Visit</b></font> <font color = "Red">Form A3 : Subject Family History </font>  
</p>
<p class="footer1"> <b>Page 2 of 5</b> </p>
<input type = "submit" name="action" value="Move to Page 3" style="margin-left:400px;" />
</form:form>
</body>
</html>