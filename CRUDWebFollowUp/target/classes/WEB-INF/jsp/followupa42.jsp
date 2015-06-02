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
table.smallheader
{
font size :3px;
font-weight :bold;
}
img 
{
margin-left : 900px;
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
<script type="text/javascript">
function validate()
{ 
	var reg = /^d[0-9]+/;
	var inputs = document.getElementsByTagName("input");
	var chb = [];
	for (var input = 0; input < inputs.length; input++) 
	{
		if (inputs[input].type == "hidden") 
		{
 			var hiddenName = inputs[input].name;
 			//it's a hidden for the drug
			if(reg.test(hiddenName))
			{
				var checkBox = document.getElementsByName(hiddenName+"_c");
				if(checkBox.length!=0)
				{
					if(checkBox[0].checked){
						inputs[input].value="1";
					}
					else{
						inputs[input].value="0";
					}
				}
				else{//should never arrive here but in case...
					window.alert("Impossible to find the checkbox ["+hiddenName+"] when it was expected...");
					//I make the program crashing
					for (var input = 0; input < inputs.length; input++){
						inputs[input].value=null;
					}
				return false;
				}
			} 
		}
	}
}
</script>
</head>
<body>

<form:form action="followupa42.do" method="POST" commandName="followupa42">

<table class="smallheader">
<tr>
<td>ADC name : &nbsp;<input type="text" name="ID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue1" style="margin-left:150px;">Subject ID : </label> &nbsp; <input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:100px;">Form date : </label><input type="text" name="MM" style="margin-left:0px; width:20px;"/>/<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="display: inline-block; border: 1px solid CornflowerBlue; float: left; ">
         <tr>
			<th bgcolor="Silver">MEDICATION NAME</th>
			<th bgcolor="Silver">drugID&nbsp;&nbsp;</th>
		</tr>
		<tr>
			    <form:input type="hidden" name="d00314" path="d00314"/>		
			<td><input type="checkbox" name="d00314_c" value="1" style="margin-left:0px;" />&nbsp;&nbsp;niacin (Niacor, Nico- 400, Nicotinic Acid)</td>
			<td>d00314</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d00051" path="d00051"/>		
			<td><input type="checkbox" name="d00051_c" value="2" style="margin-left:0px;" />&nbsp;&nbsp;nifedipine (Adalat, Procardia)</td>
			<td>d00051</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d00321" path="d00321"/>		
			<td><input type="checkbox" name="d00321_c" value="3" style="margin-left:0px;" />&nbsp;&nbsp;nitroglycerin (Nitro - Bid, Nitro - Dur, Nitrostat)</td>
			<td>d00321</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d00497" path="d00497"/>		
			<td><input type="checkbox" name="d00497_c" value="4" style="margin-left:0px;" />&nbsp;&nbsp;omega - 3 polyunsaturate d fatty acids(Omacor ,Lovaza)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>d00497</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d00325" path="d00325"/>		
			<td><input type="checkbox" name="d00325_c" value="5" style="margin-left:0px;" />&nbsp;&nbsp;omeprazole (Prilosec)</td>
			<td>d00325</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d00328" path="d00328"/>		
			<td><input type="checkbox" name="d00328_c" value="6" style="margin-left:0px;" />&nbsp;&nbsp;oxybutynin (Ditropan, Urotrol)</td>
			<td>d00328</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d04514" path="d04514"/>		
			<td><input type="checkbox" name="d04514_c" value="7" style="margin-left:0px;" />&nbsp;&nbsp;pantoprazole (Protonix)</td>
			<td>d04514</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d03157" path="d03157"/>		
			<td><input type="checkbox" name="d03157_c" value="8" style="margin-left:0px;" />&nbsp;&nbsp;paroxetine (Paxil, Paxil CR, Pexeva)</td>
			<td>d03157</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d00345" path="d00345"/>		
			<td><input type="checkbox" name="d00345_c" value="9" style="margin-left:0px;" />&nbsp;&nbsp;potassium chloride (K- Dur 10, K-Lor, Slow-K)</td>
			<td>d00345</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d00348" path="d00348"/>		
			<td><input type="checkbox" name="d00348_c" value="10" style="margin-left:0px;" />&nbsp;&nbsp;pravastatin (Pravachol)</td>
			<td>d00348</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d04220" path="d04220"/>		
			<td><input type="checkbox" name="d04220_c" value="11" style="margin-left:0px;" />&nbsp;&nbsp;quetiapine (Seroquel)</td>
			<td>d04220</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d00021" path="d00021"/>		
			<td><input type="checkbox" name="d00021_c" value="12" style="margin-left:0px;" />&nbsp;&nbsp;ranitidine (Zantac)</td>
			<td>d00021</td>
		</tr>
		</table>

		
	<table style="display: inline-block; border: 1px solid CornflowerBlue;">
		<tr>
			<th bgcolor="Silver">MEDICATION NAME</th>
			<th bgcolor="Silver">drugID&nbsp;&nbsp;</th>
		</tr>
		<tr>
			    <form:input type="hidden" name="d04537" path="d04537"/>		
			<td><input type="checkbox" name="d04537_c" value="13" style="margin-left:0px;" />&nbsp;&nbsp;rivastigmine (Exelon) </td>
			<td>d04537</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d04851" path="d04851"/>		
			<td ><input type="checkbox" name="d04851_c" value="14" style="margin-left:0px;" />&nbsp;&nbsp;rosuvastatin (Crestor)</td>
			<td>d04851</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d00880" path="d00880"/>		
			<td><input type="checkbox" name="d00880_c" value="15" style="margin-left:0px;" />&nbsp;&nbsp;sertraline (Zoloft)</td>
			<td>d00880</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d00746" path="d00746"/>		
			<td><input type="checkbox" name="d00746_c" value="16" style="margin-left:0px;" />&nbsp;&nbsp;simvastatin (Zocor)</td>
			<td>d00746</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d04121" path="d04121"/>		
			<td><input type="checkbox" name="d04121_c" value="17" style="margin-left:0px;" />&nbsp;&nbsp;tamsulosin (Flomax)</td>
			<td>d04121</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d00386" path="d00386"/>		
			<td><input type="checkbox" name="d00386_c" value="18" style="margin-left:0px;" />&nbsp;&nbsp;terazosin (Hytrin)</td>
			<td>d00386</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d03826" path="d03826"/>		
			<td><input type="checkbox" name="d03826_c" value="19" style="margin-left:0px;" />&nbsp;&nbsp;tramadol (Ryzolt ,Ultram)</td>
			<td>d03826</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d00395" path="d00395"/>		
			<td><input type="checkbox" name="d00395_c" value="20" style="margin-left:0px;" />&nbsp;&nbsp;trazodone (Desyrel)</td>
			<td>d00395</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d04113" path="d04113"/>		
			<td><input type="checkbox" name="d04113_c" value="21" style="margin-left:0px;" />&nbsp;&nbsp;valsartan (Diovan)</td>
			<td>d04113</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d03181" path="d03181"/>		
			<td><input type="checkbox" name="d03181_c" value="22" style="margin-left:0px;" />&nbsp;&nbsp;venlafaxine (Effexor)</td>
			<td>d03181</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d00022" path="d00022"/>		
			<td><input type="checkbox" name="d00022_c" value="23" style="margin-left:0px;" /> &nbsp;&nbsp;warfarin (Coumadin, Jantoven)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>d00022</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d00910" path="d00910"/>		
			<td><input type="checkbox" name="d00910_c" value="24" style="margin-left:0px;" />&nbsp;&nbsp;zolpidem (Ambien)</td>
			<td>d00910</td>
		</tr>
		</table>

<p>
<b> Commonly reported medications that may be purchased over the counter (but that may also be prescription):</b>
</p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="display: inline-block; border: 1px solid CornflowerBlue; float: left; ">
         <tr>
			<th bgcolor="Silver">MEDICATION NAME</th>
			<th bgcolor="Silver">drugID&nbsp;&nbsp;</th>
		</tr>
		<tr>
			    <form:input type="hidden" name="d00049" path="d00049"/>		
			<td><input type="checkbox" name="d00049_c" value="25" style="margin-left:0px;" />&nbsp;&nbsp;acetaminophen (Anacin, Tempra, Tylenol)</td>
			<td>d00049</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d00426" path="d00426"/>		
			<td><input type="checkbox" name="d00426_c" value="26" style="margin-left:0px;" />&nbsp;&nbsp;ascorbic acid (C Complex, Vitamin C)</td>
			<td>d00426</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d00170" path="d00170"/>		
			<td><input type="checkbox" name="d00170_c" value="27" style="margin-left:0px;" />&nbsp;&nbsp;aspirin</td>
			<td>d00170</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d00425" path="d00425"/>		
			<td><input type="checkbox" name="d00425_c" value="28" style="margin-left:0px;" />&nbsp;&nbsp;calcium carbonate (Ro
laids, Tums)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>d00425</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d03137" path="d03137"/>		
			<td><input type="checkbox" name="d03137_c" value="29" style="margin-left:0px;" />&nbsp;&nbsp;calcium- vitamin D (Dical - D, O - Cal- D)</td>
			<td>d03137</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d03129" path="d03129"/>		
			<td><input type="checkbox" name="d03129_c" value="30" style="margin-left:0px;" />&nbsp;&nbsp;cholecalciferol (Vitamin D3, Replesta)</td>
			<td>d03129</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d04420" path="d04420"/>		
			<td><input type="checkbox" name="d04420_c" value="31" style="margin-left:0px;" />&nbsp;&nbsp;chondroitin-glucosamine (Cidaflex ,Osteo Bi -Flex)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>d04420</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d01021" path="d01021"/>		
			<td><input type="checkbox" name="d01021_c" value="32" style="margin-left:0px;" />&nbsp;&nbsp;docusate (Calcium Stool Softener, Dioctyl SS</td>
			<td>d01021</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d00241" path="d00241"/>		
			<td><input type="checkbox" name="d00241_c" value="33" style="margin-left:0px;" />&nbsp;&nbsp;folic acid (Folic Acid)</td>
			<td>d00241</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d04418" path="d04418"/>		
			<td><input type="checkbox" name="d04418_c" value="34" style="margin-left:0px;" />&nbsp;&nbsp;glucosamine (Hydrochloride)</td>
			<td>d04418</td>
		</tr>
		</table>


		
		<table style="display: inline-block; border: 1px solid CornflowerBlue;">
		<tr>
			<th bgcolor="Silver">MEDICATION NAME</th>
			<th bgcolor="Silver">drugID&nbsp;&nbsp;</th>
		</tr>
		<tr>
			    <form:input type="hidden" name="d00015" path="d00015"/>		
			<td><input type="checkbox" name="d00015_c" value="35" style="margin-left:0px;" />&nbsp;&nbsp;ibuprofen (Advil, Motrin, Nuprin) </td>
			<td>d00015</td>
		</tr>
		<tr bgcolor="Silver">
				<form:input type="hidden" name="d03050" path="d03050"/>		
			<td><input type="checkbox" name="d03050_c" value="36" style="margin-left:0px;" />&nbsp;&nbsp;loratadine (Alavert, Claritin, Dimetapp, Tavist)</td>
			<td>d03050</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d04058" path="d04058"/>		
			<td><input type="checkbox" name="d04058_c" value="37" style="margin-left:0px;" />&nbsp;&nbsp;melatonin (Melatonin ,melatonin Time Release)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>d04058</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d03140" path="d03140"/>		
			<td><input type="checkbox" name="d03140_c" value="38" style="margin-left:0px;" />&nbsp;&nbsp;multivitamin</td>
			<td>d03140</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d03145" path="d03145"/>		
			<td><input type="checkbox" name="d03145_c" value="39" style="margin-left:0px;" />&nbsp;&nbsp;multivitamin with minerals</td>
			<td>d03145</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d05350" path="d05350"/>		
			<td><input type="checkbox" name="d05350_c" value="40" style="margin-left:0px;" />&nbsp;&nbsp;polyethylene glycol 3350 (Miralax)</td>
			<td>d05350</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d01018" path="d01018"/>		
			<td><input type="checkbox" name="d01018_c" value="41" style="margin-left:0px;" />&nbsp;&nbsp;psyllium (Fiberall, Metamucil)</td>
			<td>d01018</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d00412" path="d00412"/>		
			<td><input type="checkbox" name="d00412_c" value="42" style="margin-left:0px;" />&nbsp;&nbsp;pyridoxine (Vitamin B6)</td>
			<td>d00412</td>
		</tr>
		<tr>
			    <form:input type="hidden" name="d04523" path="d04523"/>		
			<td><input type="checkbox" name="d04523_c" value="43" style="margin-left:0px;" />&nbsp;&nbsp;ubiquinone (Co Q -10)</td>
			<td>d04523</td>
		</tr>
		<tr bgcolor="Silver">
			    <form:input type="hidden" name="d00405" path="d00405"/>		
			<td><input type="checkbox" name="d00405_c" value="44" style="margin-left:0px;" />&nbsp;&nbsp;vitamin E (Aquavite
-
E, Centrum Singles)</td>
			<td>d00405</td>
		</tr>
		</table>
		<br>
		<br>
		<p>
		<b>If a medication is not one of the listed above, specify the drug or brand name and determine its drugID by using the Lookup 
		Tool on the NACC website at</b> <font color = "CornflowerBlue">https://www.alz.washington.edu/MEMBER/DrugCodeLookUp.html</font>
		</p>
		<br><input type="checkbox" name="option" value="45" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" path="dspec1" name="dspec1" size= "40" maxlength="40"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<form:input type="text" path="dd1" name="dd1" maxlength="5" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="46" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" path="dspec2" name="dspec2" size= "40" maxlength="40"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<form:input type="text" path="dd2" name="dd2" maxlength="5" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="47" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" path="dspec3" name="dspec3" size= "40" maxlength="40"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<form:input type="text" path="dd3" name="dd3" maxlength="5" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="48" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" path="dspec4" name="dspec4" size= "40" maxlength="40"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<form:input type="text" path="dd4" name="dd4" maxlength="5" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="49" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" path="dspec5" name="dspec5" size= "40" maxlength="40"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<form:input type="text" path="dd5" name="dd5" maxlength="5" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="50" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" path="dspec6" name="dspec6" size= "40" maxlength="40"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<form:input type="text" path="dd6" name="dd6" maxlength="5" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="51" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" path="dspec7" name="dspec7" size= "40" maxlength="40"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<form:input type="text" path="dd7" name="dd7" maxlength="5" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="52" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" path="dspec8" name="dspec8" size= "40" maxlength="40"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<form:input type="text" path="dd8" name="dd8" maxlength="5" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="53" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" path="dspec9" name="dspec9" size= "40" maxlength="40"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<form:input type="text" path="dd9" name="dd9" maxlength="5" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="54" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input type="text" path="dspec10" name="dspec10" size= "40" maxlength="40"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<form:input type="text" path="dd10" name="dd10" maxlength="5" style="margin-left:0px;"/><br>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015) Initial Visit</b></font> <font size=2px color = "Red"> Form A4 : Subject Medications</font>
</p>
<p class="footer1"> <b>Page 2 of 2</b> </p>

<input type = "submit" name="action" value="Submit" style="margin-left:400px;" onclick="return validate();" /> 
</form:form>

</body>
</html>