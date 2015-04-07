<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
background-color : #08088A;
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
<label for="text11" style= "color :White;"> BIOLOGICAL CHILDREN</label>
</p>
<p class="even">
7. How many biological children does the subject have? &nbsp;&nbsp; <input type="text" name="Child" style="margin-left:0px; width:20px;"/> &nbsp;&nbsp; If subject has no biological children ,<b> END FORM HERE.</b><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7a. Since the last UDS visit, is new information available concerning the status of the subject's biological children?<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="No" value="0" style="margin-left:0px;"/>0 No <font size=2px><b> (END FROM HERE)</b></font>
<input type="radio" name="Yes" value="1"  style="margin-left:150px;"/>1 Yes<font size=2px> <b>(COMPLETE QUESTION 7aa-7ao,AS APPLICABLE) </b></font><br /><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; For any biological child with a neurological or psychiatric problem,the entire row must be filled out.If the <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; clinician cannot determine the primary neurological problem/psychiatric condition after reviewing all available <br>  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; evidence, enter 9=Unknown in the <b> Primary neurological problem/psychiatric condition</b> column ,and then skip <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the subsequent question in the row.If the child has no neurological or psychiatric problem , enter 8=N/A - no <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; neurological problem or psychiatric condition in the <b> Primary neurological problem/psychiatric condition </b>column , <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and then skip the subsequent question in the row. <br>
</p>

<br>
<br>

<table class="Biological" border=1>
<tr bgcolor="#D8D8D8">
<td width= "20%"></td>
<td width= "20%"><font size=2px><b> Birth month/year (99/9999=Unknown)</b></font></td>
<td width= "10%"><font size=2px><b> Age at death (888 =N/A,999 =Unknown)</b></font></td>
<td width= "20%"><font size=2px><b> Primary neurological problem/psychiatric condition *</b></font></td>
<td width= "10%"><font size=2px><b> Primary Dx**</b></font></td>
<td width= "10%"><font size=2px><b> Method of evaluation***</b></font></td>
<td width= "10%"><font size=2px><b> Age of onset (999=unknown)</b></font></td>
</tr>
<tr>
<td width= "20%"> 7aa. Child 1 </td>
<td width= "20%"><input type="text" name="C1MMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="C1MAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="C1MCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="C1MPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C1MMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C1MAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 7ab. Child 2 </td>
<td width= "20%"><input type="text" name="C2FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="C2FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="C2FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="C2FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C2FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C2FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 7ac. Child 3 </td>
<td width= "20%"><input type="text" name="C3FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="C3FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="C3FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="C3FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C3FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C3FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 7ad. Child 4 </td>
<td width= "20%"><input type="text" name="C4FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="C4FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="C4FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="C4FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C4FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C4FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 7ae. Child 5 </td>
<td width= "20%"><input type="text" name="C5FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="C5FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="C5FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="C5FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C5FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C5FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 7af. Child 6 </td>
<td width= "20%"><input type="text" name="C6FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="C6FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="C6FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="C6FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C6FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C6FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 7ag. Child 7 </td>
<td width= "20%"><input type="text" name="C7FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="C7FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="C7FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="C7FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C7FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C7FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 7ah. Child 8 </td>
<td width= "20%"><input type="text" name="C8FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="C8FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="C8FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="C8FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C8FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C8FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 7ai. Child 9 </td>
<td width= "20%"><input type="text" name="C9FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="C9FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="C9FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="C9FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C9FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C9FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 7aj. Child 10 </td>
<td width= "20%"><input type="text" name="C10FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="C10FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="C10FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="C10FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C10FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C10FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 7ak. Child 11 </td>
<td width= "20%"><input type="text" name="C11FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="C11FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="C11FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="C11FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C11FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C11FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 7al. Child 12 </td>
<td width= "20%"><input type="text" name="C12FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="C12FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="C12FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="C12FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C12FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C12FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 7am. Child 13 </td>
<td width= "20%"><input type="text" name="C13FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="C13FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="C13FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="C13FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C13FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C13FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 7an. Child 14 </td>
<td width= "20%"><input type="text" name="C14FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="C14FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="C14FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="C14FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C14FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C14FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 7ao. Child 15 </td>
<td width= "20%"><input type="text" name="C15FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="C15FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="C15FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="C15FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C15FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="C15FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>

</table>

<br>
<br>
<table class ="A4">
<tr><td> <b>*CODES for neurological problems and<br>
psychiatric conditions</b></td></tr>
<tr><td>1 Cognitive impairment/behavior change </td></tr>
<tr><td>2 Parkinsonism </td></tr>
<tr><td>3 ALS </td></tr>
<tr><td>4 Other neurologic condition such as multiple<br> sclerosis or stroke </td></tr>
<tr><td>5 Psychiatric condition such as schizophrenia, <br> bipolar disorder,alcoholism,or depression </td></tr>
<tr><td>8 N/A--no neurological problem or psychiatric <br>condition </td></tr>
<tr><td>9 Unknown </td></tr>
</table>


<table class="A4" style= "margin-left : 100px;">
<tr><td> <b>**CODES for primary diagnosis</b></td></tr>
<tr><td>See Appendix 1 on page 5 of this form </td></tr>
</table>


 <table class ="A4" style="margin-left : 130px;">
<tr><td> <b>***CODES for method of evaluation</b></td></tr>
<tr><td>1 Autopsy </td></tr>
<tr><td>2 Examination </td></tr>
<tr><td>3 medical record review from formal <br>dementia evaluation </td></tr>
<tr><td>4 Review of general medical records AND <br> co-participant and/or subject telephone <br> interview </td></tr>
<tr><td>5 Review of general medical records only </td></tr>
<tr><td>6 Subject and/or co-participant telephone <br>interview </td></tr>
<tr><td>9 Family report </td></tr>
</table>

<br>
<br>
<br>
<br>
<br>
<br>

<br><br>
<br>
<br>
<br>
<br>
<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Follow-up Visit</b></font> <font color = "Red">Form A3 : Subject Family History </font>  
</p>
<p class="footer1"> <b>Page 4 of 5</b> </p>


</body>
</html>