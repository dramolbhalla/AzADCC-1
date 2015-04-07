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
<p class="even" style = "background-color : #D8D8D8;">
<b> Year of birth for full siblings and biological children :</b> If birth year is unknown ,please provide an approximate year on UDS <br>
Initial Visit Form A3 and UDS Follow -up Visit Form A3 so that the sibling/child with unknown birth year ends up in correct<br>
birth order relative to the other siblings/children.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font size=2px> <i> Example : A subject is the oldest of three children.The subject was born 1940 and the middle sibling in 1943; the youngest  sibling's birth year is unknown.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                     An approximate birth year of 1944 or later should be assigned to the youngest sibling.</i></font>
<br>
Use that same birth year on FTLD Module Form A3a, if applicable , and across all UDS visits so that any new information <br>
on a particular sibling or child can be linked to previously submitted information.If it is impossible for the subject and co- <br>
participant to estimate year of birth,enter 9999=Unknown.


</p>

<p class="odd">
<label for="text11" style= "color :White;">FULL SIBLINGS</label>
</p>
<p class="even">
6. How many full siblings does the subject have? &nbsp;&nbsp; <input type="text" name="sib" style="margin-left:0px; width:20px;"/> &nbsp;&nbsp; If subject has no full siblings ,<b> SKIP TO QUESTION 7.</b><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6a. Since the last UDS visit, is new information available concerning the status of the subject's siblings?<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="No" value="0" style="margin-left:0px;"/>0 No <font size=2px><b> (SKIP TO QUESTION 7)</b></font>
<input type="radio" name="Yes" value="1"  style="margin-left:150px;"/>1 Yes<font size=2px> <b>(COMPLETE QUESTION 6aa-6at,AS APPLICABLE) </b></font><br /><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; For any full siblings with a neurological or psychiatric problem,the entire row must be filled out.If the clinician<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cannot determine the primary neurological problem/psychiatric condition after reviewing all available evidence, <br>  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enter 9=Unknown in the <b> Primary neurological problem/psychiatric condition</b> column ,and then skip the<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; subsequent question in the row.If the sibling has no neurological or psychiatric problem , enter 8=N/A - no <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; neurological problem or psychiatric condition in the <b> Primary neurological problem/psychiatric condition </b>column , <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and then skip the subsequent question in the row. <br>
</p>

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
<td width= "20%">6aa. Sibling 1 </td>
<td width= "20%"><input type="text" name="S1MMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="S1MAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="S1MCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="S1MPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S1MMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S1MAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 6ab. Sibling 2 </td>
<td width= "20%"><input type="text" name="S2FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="S2FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="S2FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="S2FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S2FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S2FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 6ac. Sibling 3 </td>
<td width= "20%"><input type="text" name="S3FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="S3FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="S3FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="S3FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S3FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S3FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 6ad. Sibling 4 </td>
<td width= "20%"><input type="text" name="S4FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="S4FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="S4FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="S4FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S4FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S4FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 6ae. Sibling 5 </td>
<td width= "20%"><input type="text" name="S5FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="S5FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="S5FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="S5FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S5FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S5FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 6af. Sibling 6 </td>
<td width= "20%"><input type="text" name="S6FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="S6FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="S6FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="S6FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S6FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S6FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 6ag. Sibling 7 </td>
<td width= "20%"><input type="text" name="S7FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="S7FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="S7FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="S7FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S7FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S7FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 6ah. Sibling 8 </td>
<td width= "20%"><input type="text" name="S8FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="S8FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="S8FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="S8FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S8FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S8FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 6ai. Sibling 9 </td>
<td width= "20%"><input type="text" name="S9FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="S9FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="S9FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="S9FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S9FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S9FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 6aj. Sibling 10 </td>
<td width= "20%"><input type="text" name="S10FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="S10FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="S10FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="S10FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S10FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S10FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 6ak. Sibling 11 </td>
<td width= "20%"><input type="text" name="S11FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="S11FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="S11FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="S11FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S11FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S11FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 6al. Sibling 12 </td>
<td width= "20%"><input type="text" name="S12FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="S12FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="S12FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="S12FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S12FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S12FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 6am. Sibling 13 </td>
<td width= "20%"><input type="text" name="S13FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="S13FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="S13FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="S13FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S13FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S13FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 6an. Sibling 14 </td>
<td width= "20%"><input type="text" name="S14FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="S14FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="S14FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="S14FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S14FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S14FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>
<tr>
<td width= "20%"> 6ao. Sibling 15 </td>
<td width= "20%"><input type="text" name="S15FMM"  style="margin-left:20px; width:20px ;"/>/<input type="text" name="Year" style="margin-left:0px; width:60px ;"/></td>
<td width= "10%"><input type="text" name="S15FAge"   style="margin-left:20px; width:40px"/></td>
<td width= "20%"><input type="text" name="S15FCondition"  style="margin-left:70px;width:20px"/></td>
<td width= "10%"><input type="text" name="S15FPrimary"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S15FMethod"   style="margin-left:30px;width:20px"/></td>
<td width= "10%"><input type="text" name="S15FAgeOnset"   style="margin-left:30px;width:20px"/></td>
</tr>

</table>

<br>
<br>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Follow-up Visit</b></font> <font color = "Red">Form A3 : Subject Family History </font>  
</p>
<p class="footer1"> <b>Page 3 of 5</b> </p>


</body>
</html>