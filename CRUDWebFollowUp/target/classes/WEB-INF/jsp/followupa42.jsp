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
</head>
<body>
<table style="font size :3px">
<tr>
<td>Subject ID : &nbsp;<input type="text" name="ID" style="margin-left:0px;"/></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;Form Date : &nbsp; <input type="text" name="MM" style="margin-left:50px; width:20px;"/> &nbsp; / &nbsp; <input type="text" name="DD" style="margin-left:0px; width:20px;"/> &nbsp; / &nbsp;<input type="text" name="YY" style="margin-left:0px; width:70px;"/></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;Visit # : <input type="text" name="Visit" style="margin-left:0px; width:50px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="display: inline-block; border: 1px solid CornflowerBlue; float: left; ">
         <tr>
			<th bgcolor="Silver">MEDICATION NAME</th>
			<th bgcolor="Silver">drugID&nbsp;&nbsp;</th>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="1" style="margin-left:0px;" />&nbsp;&nbsp;niacin (Niacor, Nico- 400, Nicotinic Acid)</td>
			<td>d00314</td>
		</tr>
		<tr bgcolor="Silver">
			<td ><input type="checkbox" name="option" value="2" style="margin-left:0px;" />&nbsp;&nbsp;nifedipine (Adalat, Procardia)</td>
			<td>d00051</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="3" style="margin-left:0px;" />&nbsp;&nbsp;nitroglycerin (Nitro - Bid, Nitro - Dur, Nitrostat)</td>
			<td>d00321</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="4" style="margin-left:0px;" />&nbsp;&nbsp;omega - 3 polyunsaturate d fatty acids(Omacor ,Lovaza)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>d00497</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="5" style="margin-left:0px;" />&nbsp;&nbsp;omeprazole (Prilosec)</td>
			<td>d00325</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="6" style="margin-left:0px;" />&nbsp;&nbsp;oxybutynin (Ditropan, Urotrol)</td>
			<td>d00328</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="7" style="margin-left:0px;" />&nbsp;&nbsp;pantoprazole (Protonix)</td>
			<td>d04514</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="8" style="margin-left:0px;" />&nbsp;&nbsp;paroxetine (Paxil, Paxil CR, Pexeva)</td>
			<td>d03157</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="9" style="margin-left:0px;" />&nbsp;&nbsp;potassium chloride (K- Dur 10, K-Lor, Slow-K)</td>
			<td>d00345</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="10" style="margin-left:0px;" />&nbsp;&nbsp;pravastatin (Pravachol)</td>
			<td>d00348</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="11" style="margin-left:0px;" />&nbsp;&nbsp;quetiapine (Seroquel)</td>
			<td>d04220</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="12" style="margin-left:0px;" />&nbsp;&nbsp;ranitidine (Zantac)</td>
			<td>d00021</td>
		</tr>
		</table>

		
		<table style="display: inline-block; border: 1px solid CornflowerBlue;">
		<tr>
			<th bgcolor="Silver">MEDICATION NAME</th>
			<th bgcolor="Silver">drugID&nbsp;&nbsp;</th>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="13" style="margin-left:0px;" />&nbsp;&nbsp;rivastigmine (Exelon) </td>
			<td>d04537</td>
		</tr>
		<tr bgcolor="Silver">
			<td ><input type="checkbox" name="option" value="14" style="margin-left:0px;" />&nbsp;&nbsp;rosuvastatin (Crestor)</td>
			<td>d04851</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="15" style="margin-left:0px;" />&nbsp;&nbsp;sertraline (Zoloft)</td>
			<td>d00880</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="16" style="margin-left:0px;" />&nbsp;&nbsp;simvastatin (Zocor)</td>
			<td>d00746</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="17" style="margin-left:0px;" />&nbsp;&nbsp;tamsulosin (Flomax)</td>
			<td>d04121</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="18" style="margin-left:0px;" />&nbsp;&nbsp;terazosin (Hytrin)</td>
			<td>d00386</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="19" style="margin-left:0px;" />&nbsp;&nbsp;tramadol (Ryzolt ,Ultram)</td>
			<td>d03826</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="20" style="margin-left:0px;" />&nbsp;&nbsp;trazodone (Desyrel)</td>
			<td>d00395</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="21" style="margin-left:0px;" />&nbsp;&nbsp;valsartan (Diovan)</td>
			<td>d04113</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="22" style="margin-left:0px;" />&nbsp;&nbsp;venlafaxine (Effexor)</td>
			<td>d03181</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="23" style="margin-left:0px;" /> &nbsp;&nbsp;warfarin (Coumadin, Jantoven)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>d00022</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="24" style="margin-left:0px;" />&nbsp;&nbsp;zolpidem (Ambien)</td>
			<td>d00910</td>
		</tr>
		</table>
<br>
<br>
<p>
<b> Commonly reported medications that may be purchased over the counter (but that may also be prescription):</b>
</p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="display: inline-block; border: 1px solid CornflowerBlue; float: left; ">
         <tr>
			<th bgcolor="Silver">MEDICATION NAME</th>
			<th bgcolor="Silver">drugID&nbsp;&nbsp;</th>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="25" style="margin-left:0px;" />&nbsp;&nbsp;acetaminophen (Anacin, Tempra, Tylenol)</td>
			<td>d00049</td>
		</tr>
		<tr bgcolor="Silver">
			<td ><input type="checkbox" name="option" value="26" style="margin-left:0px;" />&nbsp;&nbsp;ascorbic acid (C Complex, Vitamin C)</td>
			<td>d00426</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="27" style="margin-left:0px;" />&nbsp;&nbsp;aspirin</td>
			<td>d00170</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="28" style="margin-left:0px;" />&nbsp;&nbsp;calcium carbonate (Ro
laids, Tums)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>d00425</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="29" style="margin-left:0px;" />&nbsp;&nbsp;calcium- vitamin D (Dical - D, O - Cal- D)</td>
			<td>d03137</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="30" style="margin-left:0px;" />&nbsp;&nbsp;cholecalciferol (Vitamin D3, Replesta)</td>
			<td>d03129</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="31" style="margin-left:0px;" />&nbsp;&nbsp;chondroitin-glucosamine (Cidaflex ,Osteo Bi -Flex)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>d04420</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="32" style="margin-left:0px;" />&nbsp;&nbsp;docusate (Calcium Stool Softener, Dioctyl SS</td>
			<td>d01021</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="33" style="margin-left:0px;" />&nbsp;&nbsp;folic acid (Folic Acid)</td>
			<td>d00241</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="34" style="margin-left:0px;" />&nbsp;&nbsp;glucosamine (Hydrochloride)</td>
			<td>d04418</td>
		</tr>
		</table>


		
		<table style="display: inline-block; border: 1px solid CornflowerBlue;">
		<tr>
			<th bgcolor="Silver">MEDICATION NAME</th>
			<th bgcolor="Silver">drugID&nbsp;&nbsp;</th>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="35" style="margin-left:0px;" />&nbsp;&nbsp;ibuprofen (Advil, Motrin, Nuprin) </td>
			<td>d00015</td>
		</tr>
		<tr bgcolor="Silver">
			<td ><input type="checkbox" name="option" value="36" style="margin-left:0px;" />&nbsp;&nbsp;loratadine (Alavert, Claritin, Dimetapp, Tavist)</td>
			<td>d03050</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="37" style="margin-left:0px;" />&nbsp;&nbsp;melatonin (Melatonin ,melatonin Time Release)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>d04058</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="38" style="margin-left:0px;" />&nbsp;&nbsp;multivitamin</td>
			<td>d03140</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="39" style="margin-left:0px;" />&nbsp;&nbsp;multivitamin with minerals</td>
			<td>d03145</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="40" style="margin-left:0px;" />&nbsp;&nbsp;polyethylene glycol 3350 (Miralax)</td>
			<td>d05350</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="41" style="margin-left:0px;" />&nbsp;&nbsp;psyllium (Fiberall, Metamucil)</td>
			<td>d01018</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="42" style="margin-left:0px;" />&nbsp;&nbsp;pyridoxine (Vitamin B6)</td>
			<td>d00412</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="43" style="margin-left:0px;" />&nbsp;&nbsp;ubiquinone (Co Q -10)</td>
			<td>d04523</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="44" style="margin-left:0px;" />&nbsp;&nbsp;vitamin E (Aquavite
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
		<br><input type="checkbox" name="option" value="45" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;---------------------------------------------------------------------------------------------------------------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<input type="text" name="text1" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="46" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;---------------------------------------------------------------------------------------------------------------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<input type="text" name="text2" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="47" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;---------------------------------------------------------------------------------------------------------------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<input type="text" name="text3" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="48" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;---------------------------------------------------------------------------------------------------------------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<input type="text" name="text4" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="49" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;---------------------------------------------------------------------------------------------------------------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<input type="text" name="text5" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="50" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;---------------------------------------------------------------------------------------------------------------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<input type="text" name="text6" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="51" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;---------------------------------------------------------------------------------------------------------------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<input type="text" name="text7" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="52" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;---------------------------------------------------------------------------------------------------------------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<input type="text" name="text8" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="53" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;---------------------------------------------------------------------------------------------------------------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<input type="text" name="text9" style="margin-left:0px;"/><br>
		<br><input type="checkbox" name="option" value="54" style="margin-left:0px;" />&nbsp;&nbsp;(SPECIFY:)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;---------------------------------------------------------------------------------------------------------------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d<input type="text" name="text10" style="margin-left:0px;"/><br>

<p class="footer">
<font size = 3px color="Grey">National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br></font>
<b>UDS (V3.0 ,March 2015) <b>Follow-up Visit</b></b> <font color = "Red">Form A4 : Subject Medcations </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Page 2 of 2  
</b></p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 

</body>
</html>