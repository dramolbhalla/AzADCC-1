<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Global Staging</title>
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
<h3> Form B4:<font size = 5px> &nbsp;Global Staging - Clinical Dementia Rating (CDR)</font> <font size=3px> STANDARD AND SUPPLEMENTAL</font></h3>
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



<font size =3px><i>INSTRUCTIONs : For information on the required online CDR training , see UDS Coding Guidebook for Follow-up Visit Packet , Form B4.This form is to be completed by the 
clinician or other trained health professional , based on co - participant report and behavioral and neurological exam of the subject.in the extremely rare instances when no 
co - participant is available , the clinician or other trained health professional must complete this form using all other available information and his/her best clinical judgement.
Score only as decline from previous level due to <u> cognitive loss,</u> not impairment due to other factors, such as physical disability. For further information , see UDS Coding 
Guidebook for Follow-up Visit Packet , Form B4.</i></font>
<br>
<br>
<b> SECTION 1: STANDARD CDR <sup> 1 </sup></b>

<br>
<br>

<form action="followupb4.do" method="POST">
<table class="CDR" border=1>
<tr bgcolor = "#08088A" style= "color :White;">
<td width= "10%"><i> Please enter score below</i></td>
<td width= "10%"><font size=2px><b> None --0</b></font></td>
<td width= "10%"><font size=2px><b> Questionable - 0.5</b></font></td>
<td width= "10%"><font size=2px><b> Mild - 1</b></font></td>
<td width= "10%"><font size=2px><b> Moderate -2</b></font></td>
<td width= "10%"><font size=2px><b> Severe - 3</b></font></td>
</tr>
<tr>
<td width= "10%" bgcolor = "#D8D8D8"> <b> 1. Memory <br></b><input type="text" name="MemoryLeft"  required="required" path="memory" size ="3" maxlength="3" style="margin-left:20px; width:20px ;"/></td>
<td width= "10%">No memory loss, or slight inconsistent forgetfulness. </td>
<td width= "10%">Consistent slight forgetfulness;partial recollection of events; "benign" forgetfulness. </td>
<td width= "10%">Moderate memory loss, more marked for recent events; defect interferes with everyday activities. </td>
<td width= "10%">Severe memory loss; only highly learned material retained; new material rapidly lost. </td>
<td width= "10%">Severe memory loss; only fragments remain. </td>
</tr>
<tr>
<td width= "10%" bgcolor = "#D8D8D8"> <b> 2. Orientation <br></b><input type="text" name="OLeft" required="required" path="orient" size ="3" maxlength="3" style="margin-left:20px; width:20px ;"/></td>
<td width= "10%">Fully oriented. </td>
<td width= "10%">Fully oriented except for slight difficulty with time relationships. </td>
<td width= "10%">Moderate difficulty with time relationships; oriented for place at examination; may have geographic disorientation elsewhere.  </td>
<td width= "10%">Severe difficulty with time relationships; usually disoriented to time, often to place.  </td>
<td width= "10%">Oriented to person only. </td>
</tr>
<tr>
<td width= "10%" bgcolor = "#D8D8D8"> <b> 3. JUDGMENT & PROBLEM SOLVING <br></b><input type="text" name="JLeft" required="required" path="judgment" size ="3" maxlength="3" style="margin-left:20px; width:20px ;"/></td>
<td width= "10%">Solves everyday problems, handles business & financial affairs well; judgment good in relation to past performance.  </td>
<td width= "10%">Slight impairment in solving problems, similarities, and differences.  </td>
<td width= "10%">Moderate difficulty in handling problems, similarities, and differences; social judgment usually maintained.   </td>
<td width= "10%">Severely impaired in handling problems, similarities, and differences; social judgment usually impaired.  </td>
<td width= "10%">Unable to make judgments or solve problems. </td>
</tr>
<tr>
<td width= "10%" bgcolor = "#D8D8D8"> <b> 4. COMMUNITY AFFAIRS <br></b><input type="text" name="CLeft"  required="required" path="commun" size ="3" maxlength="3" style="margin-left:20px; width:20px ;"/></td>
<td width= "10%">Independent function at usual level in job, shopping, volunteer and social groups.  </td>
<td width= "10%">Slight impairment in these activities.   </td>
<td width= "10%">Unable to function independently at these activities, although may still be engaged in some; appears normal to casual inspection.    </td>
<td width= "10%">No pretense of independent function outside the home; appears well enough to be taken to functions outside the family home.   </td>
<td width= "10%">No pretense of independent function outside the home; appears too ill to be taken to functions outside the family home.  </td>
</tr>
<tr>
<td width= "10%" bgcolor = "#D8D8D8"> <b> 5. Life at home, hobbies, and intellectual interests well maintained.  <br></b><input type="text" name="HLeft" required="required" path="homehobb" size ="3" maxlength="3" style="margin-left:20px; width:20px ;"/></td>
<td width= "10%">Life at home, hobbies, and intellectual interests well maintained.  </td>
<td width= "10%">Life at home, hobbies, and intellectual interests slightly impaired.   </td>
<td width= "10%">Mild but definite impairment of function at home; more difficult chores abandoned; more complicated hobbies and interests abandoned.   </td>
<td width= "10%">Only simple chores preserved; very restricted interests, poorly maintained.   </td>
<td width= "10%">No significant function in the home.  </td>
</tr>
<tr>
<td width= "10%" bgcolor = "#D8D8D8"> <b> 6. PERSONAL CARE.  <br></b><input type="text" name="perscare" required="required" path="perscare" size ="1" maxlength="1" style="margin-left:20px; width:20px ;"/> . 0 </td>
<td width= "10%">Fully capable of self-care (= 0)  </td>
<td width= "10%">  </td>
<td width= "10%">Needs prompting   </td>
<td width= "10%">Requires assistance in dressing, hygiene, keeping of personal effects.    </td>
<td width= "10%">Requires much help with personal care; frequent incontinence.  </td>
</tr>
</table>
<p class="even">
7.&nbsp;&nbsp;&nbsp; <input type="text" name="CDR1" required="required" path="cdrsum" size ="4" maxlength="4" style="margin-left:5px; width:20px ;"/> <b> &nbsp;&nbsp;&nbsp; STANDARD CDR SUM OF BOXES</b>
</p>
<p class="odd">
8. <input type="text" name="GCDR" required="required" path="cdrglob" size ="3" maxlength="3" style="margin-left:20px; width:20px ;"/> <b> &nbsp;&nbsp;&nbsp; STANDARD GLOBAL CDR</b>
</p>

<br>
<br>
<input type = "submit" name="action" value="Move to Page 2" style="margin-left:400px;" /> 
</form>
<sup> 1 </sup><font size=2px>Morris JC. The Clinical Dementia Rating (CDR): Current version and scoring rules. Neurology 43(11):2412-4, 1993. Copyright © Lippincott, Williams & Wilkins. Reproduced by permission. </font>
<p class="footer">
<font color ="Black"><b>UDS (V3.0 ,March 2015) </b></font> <font size=2px>National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br></font>

</p>
<p class="footer1"> <b>Page 1 of 2</b> </p>

</body>
</html>