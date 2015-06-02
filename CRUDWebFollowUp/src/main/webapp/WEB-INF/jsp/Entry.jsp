<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Entry</title>

</head>
<body>
<div id="content">
<img src="/Show/index.jpg" height="100" width="150" class="nacc"></img>
</div>
<form:form action="entry.do" method="POST" commandName="entry">
<table>
<tr>
<td>
	Subject ID : &nbsp;<br> 
	<input type="text" name="ptid" value="0" size ="10" style="margin-left:0px; width:130px;"/>
</td>
</tr>
<tr>
<td>
	Visit # : <br>
	<input type="text" size ="3" value="0" maxlength="3" name="visitnum" style="margin-left:0px; width:30px;"/>
</td>
<td>
	Packet : <br>
	<input type="text" size ="1" required="required" maxlength="1" name="packet" style="margin-left:0px; width:40px;"/>
	<input type="text" size ="2" required="required" maxlength="2" name="formid" style="margin-left:0px; width:40px;"/>
	<input type="hidden" name="formver" value="3"/>
</td>
</tr>
</table>	




<HR COLOR="CornflowerBlue" WIDTH="100%">


<br>
<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Initial Visit</b></font> 
</p>

<input type = "submit" name="action" value="search/create" style="margin-left:400px;" />
</form:form>

</body>
</html>