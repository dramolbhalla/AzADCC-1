<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"><title>Subject Medications</title>
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

<table><font size =3px><b>
<tr>
<td>Subject ID : &nbsp;<input type="text" name="ID" style="margin-left:0px;"/></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;Form Date : &nbsp; <input type="text" name="MM" style="margin-left:0px; width:20px;"/> &nbsp; / &nbsp; <input type="text" name="DD" style="margin-left:0px; width:20px;"/> &nbsp; / &nbsp;<input type="text" name="YY" style="margin-left:0px; width:70px;"/></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;Visit # : <input type="text" name="Visit" style="margin-left:0px; width:50px;"/></td>
</tr>
</b></font></table>
<HR COLOR="CornflowerBlue" WIDTH="100%">
<br>
<br>
<p>
 ** APPENDIX 1: PRIMARY DIAGNOSIS CODES  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;  *** APPENDIX 2 : METHOD OF EVALUATION
</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="display: inline-block;float: left; ">
		<tr>
			<td bgcolor="#E6E6E6">040 &nbsp;&nbsp; Mild cognitive impairment (MCI) , not otherwise specified </td>
		</tr>
		<tr>
			<td >041 &nbsp;&nbsp; MCI - single domain amnestic</td>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">042 &nbsp;&nbsp; MCI - multiple domain with amnestic</td>
		</tr>
		<tr >
			<td> 043 &nbsp;&nbsp; MCI - single domain nonamnestictd>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">044 &nbsp;&nbsp; MCI - multiple domain with nonamnestic</td>
		</tr>
		<tr >
			<td>045 &nbsp;&nbsp; Impaired, but not MCI</td>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">050 &nbsp;&nbsp; Alzheimer's disease dementia</td>
		</tr>
		<tr >
			<td>070 &nbsp;&nbsp; Dementia with Lewy Bodies</td>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">080&nbsp;&nbsp;Vascular cognitive impairment or dementia</td>
		</tr>
		<tr >
			<td>100 &nbsp;&nbsp;Impairment due to alcohol abuse</td>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">110&nbsp;&nbsp;Dementia of undetermined etiology</td>
		</tr>
		<tr >
			<td>120 &nbsp;&nbsp;Behavioral variant frontotemporal dementia</td>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">130 &nbsp;&nbsp; primary progressive aphasia , semantic variant</td>
		</tr>
		<tr >
			<td>131 &nbsp;&nbsp;primary progressive aphasia, nonfluent/agrammatic variant</td>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">132&nbsp;&nbsp; primary progressive aphasia ,logopenic variant</td>
		</tr>
		<tr >
			<td>133 &nbsp;&nbsp;primary progressive aphasia , not otherwise specified</td>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">140&nbsp;&nbsp; Clinical progressive supranuclear palsy</td>
		</tr>
		<tr >
			<td>150 &nbsp;&nbsp;Clinical corticobasal syndrome/corticobasal degeneration</td>
		</tr><tr>
			<td bgcolor="#E6E6E6">160&nbsp;&nbsp; Huntington's disease</td>
		</tr>
		<tr >
			<td>170 &nbsp;&nbsp;Clinical prion disease</td>
		</tr><tr>
			<td bgcolor="#E6E6E6">180&nbsp;&nbsp; Cognitive dysfunction from medications</td>
		</tr>
		<tr >
			<td>190 &nbsp;&nbsp;Cognitive dysfunction from medical illness</td>
		</tr><tr>
			<td bgcolor="#E6E6E6">200&nbsp;&nbsp; Depression</td>
		</tr>
		<tr >
			<td>210 &nbsp;&nbsp;Other major psychiatric illness</td>
		</tr><tr>
			<td bgcolor="#E6E6E6">220&nbsp;&nbsp; Down syndrome</td>
		</tr>
		<tr >
			<td>230 &nbsp;&nbsp;Pakinson's disease</td>
		</tr><tr>
			<td bgcolor="#E6E6E6">240&nbsp;&nbsp;Stroke </td>
		</tr>
		<tr >
			<td>250 &nbsp;&nbsp;Hydrocephalus</td>
		</tr><tr>
			<td bgcolor="#E6E6E6">260&nbsp;&nbsp; Traumatic brain injury</td>
		</tr>
		<tr >
			<td>270 &nbsp;&nbsp;CNS neoplasm</td>
		</tr><tr>
			<td bgcolor="#E6E6E6">280&nbsp;&nbsp; Other</td>
		</tr>
		<tr >
			<td>310 &nbsp;&nbsp;Amyotrophic lateral sclerosis</td>
		</tr><tr>
			<td bgcolor="#E6E6E6">320 &nbsp;&nbsp; Multiple sclerosis </td>
		</tr>
		<tr >
			<td>999 &nbsp;&nbsp;Specific diagnosis unknown (acceptable if method of evaluation <br>
			is not by autopsy, examination , or dementia evaluation)</td>
		</tr>
		<tr>
			<td > </td>
		</tr>
		
		<tr>
			<td > </td>
		</tr>
		
		
		<tr>
			<td bgcolor="Silver">Neuropathology diagnosis from autopsy</td>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">400 &nbsp;&nbsp; Alzheimer's disease neuropathology</td>
		</tr>
		<tr>
			<td >410 &nbsp;&nbsp; Lewy body disease neuropathology</td>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">420 &nbsp;&nbsp;Gross infarct(s) neuropathology</td>
		</tr>
		<tr >
			<td> 421 &nbsp;&nbsp; Hemorrhage(s) neuropathology</td>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">422 &nbsp;&nbsp; Other cerebrovascular disease neuropathology</td>
		</tr>
		<tr >
			<td>430 &nbsp;&nbsp;ALS/MND</td>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">431&nbsp;&nbsp;FTLD with Tau pathology -- Pick's disease</td>
		</tr>
		<tr >
			<td>432 &nbsp;&nbsp;FTLD with Tau pathology -- CBD</td>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">433&nbsp;&nbsp;FTLD with Tau pathology -- PSP</td>
		</tr>
		<tr >
			<td>434 &nbsp;&nbsp;FTLD with Tau pathology -- argyrophyllic grains</td>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">435&nbsp;&nbsp;FTLD with Tau pathology -- other</td>
		</tr>
		<tr >
			<td>436 &nbsp;&nbsp;FTLD with TDP-43</td>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">439 FTLD other (FTLD -FUS,FTLD -UPS,FTLD NOS)</td>
		</tr>
		<tr >
			<td>440 &nbsp;&nbsp;Hippocampal sclerosis</td>
		</tr>
		<tr>
			<td bgcolor="#E6E6E6">450 Prion disease neuropathology</td>
		</tr>
		<tr >
			<td>490 &nbsp;&nbsp;Other neuropathologic diagnosis not listed above</td>
		</tr>
		<tr>
		<td>&nbsp;&nbsp;</td>
		</tr>
		<tr>
		<td>&nbsp;&nbsp;</td>
		</table>

		
		<table style="display: inline-block; margin-left :20px ;">
		
		<tr>
			<td>1. <b> Autopsy</b><br>
			If the autopsy was performed at an outside institution ,<b>you must<br> 
			have the report </b> to code as diagnosis by autopsy.
			</td>
			
		</tr>
		<tr>
			<td>2. <b> Examination</b><br>
			The subject must have been examined in person at your ADC/<br>
			institution or by genetic studies staff associated with your ADC/<br>
			institution to code as diagnosis by examination.Medical records <br>
			may or may not have been used when assigning diagnosis.</td>
		</tr>
		<tr>
			<td>3. <b> Medical record review from formal dementia evaluation</b><br>
			Medical records should be from an examination that focused<br>
			specifically on dementia; that was performed by a neurologist,<br>
			geriatrician, or psychiatrist ; and that includes a neurologic<br>
			examination, an imaging study, and cognitive testing (e.g.,MMSE,)<br>
			Blessed, or more formal tests).A telephone interview may also be <br>
			used to collect additional information.
			</td>
		</tr>
		<tr>
			<td><b> Review of general medical records AND co-participant and/or <br>
			subject telephone interview<br>
			General medical records</b> can be of various types,including those<br>
			from a primary-care physician's office,hospitalization records,<br>
			nursing home records, etc. They may include a neurologic exam<br>
			and a cognitivete test such as the MMSE along with a medical <br>
			history.<b> The telephone interview </b> with the subject and/or the co-<br>
			participant should include a medical history to capture the nature<br>
			and presentation of cognitive deficits,if present , and age of onset<br>
			if symptomatic.if the subject is normal or is in the early stages<br>
			of cognitive impairment,brief formal cognitive testing should be<br>
			included in the interview.<br>		
			</td>
		</tr>
		<tr>
			<td>5.<b> Review of general medical records ONLY</b><br>
			See definition No. 4 above.if general medical records are used<br>
			to dagnose a subject as demented or not demented, they should <br>
			include a medical history,neurologic exam, and a cognitive <br>
			test such as an MMSE. In most cases,general medical records <br>
			alone should not be used to assign a diagnosis of mild cognitive<br>
			impairments ,or of any of the FTLD spectrum subtypes , or of <br>
			parkinsonian disorder other than Parkinson's disease.
			</td>
		</tr>
		<tr>
			<td>6.<b> Subject and/or co-participant telephone interview</b><br>
			See definition No.4 above.
			</td>
		</tr>
		<tr>
			<td>7.<b> Family report</b><br>
			Family report should be coded when the co-participant for the<br>
			family reports a subject as having been diagnosed with a particular<br>
			disorder. In most cases, family report alone should not be used to <br>
			assign a diagnosis of mild cognitive impairment, or of any of the<br>
			FTLD spectrum subtypes, or of parkinsonian disorders other than <br>
			 Parkinson's disease.
			</td>
		</tr>
		<tr>
		<td>&nbsp;&nbsp;</td>
		</tr>
		<tr>
		<td>&nbsp;&nbsp;</td>
		</tr>
		<tr>
		<td>&nbsp;&nbsp;</td>
		</tr>
		<tr>
		<td>&nbsp;&nbsp;</td>
		</tr>
		<tr>
		<td>&nbsp;&nbsp;</td>
		</tr>
		<tr>
		<td>&nbsp;&nbsp;</td>
		</tr>
		<tr>
		<td>&nbsp;&nbsp;</td>
		</tr>
		</table>
		
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br><br>
		<br>
		
		

<p class="footer">
<font size = 3px color="Grey">National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br></font>
<b>UDS Version 3.0 ,March 2015</b><font color = "Red">&nbsp;&nbsp;&nbsp;Form A3 : Subject Family History </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Page 5 of 5  
</b></p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 

</body>
</html>