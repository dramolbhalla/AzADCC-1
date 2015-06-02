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
width: 1000px;
}
h4
{
background-color : Black;
line-height : 1.5em;
}
p.even
{
border: CornflowerBlue 1px solid;
font-weight :bold;
padding: 20px;
margin-bottom : 10;
}
img 
{
margin-left : 900px;
}
p.footer
{
text-align : left;

}
table.smallheader
{
font size :3px;
font-weight :bold;
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
<div id="content">
<img src="/Show/index.jpg" height="100" width="150" class="nacc"></img>
</div>
<input type="text" value="FOLLOWUP VISIT PACKET"  style="background-color:Black; color:White; width:200px; font-weight :bold;"/> &nbsp; &nbsp; 
 <b>NACC UNIFORM DATA SET(UDS)</b>
<h3> Form A4: &nbsp;Subject Medications<font size = 5px>&nbsp;&nbsp;</font></h3>
<br>

<form:form action="followupa4.do" method="POST" commandName="followupa4" >

<table class="smallheader">
<tr>
<td>ADC name : &nbsp;<input type="text" name="ID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue1" style="margin-left:150px;">Subject ID : </label> &nbsp; 
<input type="text" name="SubID" style="margin-left:0px; width:130px;"/></td>
<td><label for="textvalue2" style="margin-left:100px;">Form date : </label>
<input type="text" name="MM" style="margin-left:0px; width:20px;"/>/
<input type="text" name="DD" style="margin-left:0px; width:20px;"/>/
<input type="text" name="YY" style="margin-left:0px; width:50px;"/>
</tr>
<tr>
<td><label for="textvalue3" style="margin-left:0px;">Visit # : </label>
<input type="text" name="Visit" style="margin-left:0px; width:30px;"/></td>
<td><label for="textvalue4" style="margin-left:150px;">Examiner's initials : </label>
<input type="text" name="EI" style="margin-left:0px; width:50px;"/></td>
</tr>
</table>
<HR COLOR="CornflowerBlue" WIDTH="100%">

<font size =3px><i>NOTE: This form is to be completed by the clinician or ADC staff.The purpose of this form is to record all
prescription medications taken by the subject<b> within the two weeks before the current visit.</b> For prescription medications not
listed here, please follow the instructions at the end of this form.OTC (non -prescription) medications need not be reported;
however , a short list of medications that could be either prescription or OTC follows the prescription list.</i></font>
<br><br>
<br>
<p class="even">
 Is the subject currently taking an medications? &nbsp;&nbsp;&nbsp;&nbsp; 
 <form:input type="radio" name="curmed" path="curmed" value="0" required ="required" style="margin-left:0px;" /> 0&nbsp;&nbsp; No <b>&nbsp;&nbsp;&nbsp;&nbsp; (END FORM HERE)</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
 <form:input type="radio" name="curmed" path="curmed" value="1" required ="required" style="margin-left:0px;" /> 1 &nbsp;&nbsp;Yes
</p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table style="display: inline-block; border: 1px solid CornflowerBlue; float: left; ">
         <tr>
			<th bgcolor="Silver">MEDICATION NAME</th>
			<th bgcolor="Silver">drugID&nbsp;&nbsp;</th>
		</tr>
		<tr>
			    <form:input type="hidden" name="d03428" path="d03428"/>
			<td><input type="checkbox" name="d03428_c" value="1" style="margin-left:0px;" />&nbsp;&nbsp;acetaminophen - hydrocodone (Vicodin) </td>
			<td>d03428</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d00749" path="d00749"/>
			<td ><input type="checkbox" name="d00749_c" value="2" style="margin-left:0px;" />&nbsp;&nbsp;albuterol (Proventil, Ventolin, Volmax)</td>
			<td>d00749</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d03849" path="d03849"/>		
			<td><input type="checkbox" name="d03849_c" value="3" style="margin-left:0px;" />&nbsp;&nbsp;alendronate (Fosamax)</td>
			<td>d03849</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d00023" path="d00023"/>				
			<td><input type="checkbox" name="d00023_c" value="4" style="margin-left:0px;" />&nbsp;&nbsp;allopurinol (Aloprim, Lopurin, Zyloprim)</td>
			<td>d00023</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d00168" path="d00168"/>		
			<td><input type="checkbox" name="d00168_c" value="5" style="margin-left:0px;" />&nbsp;&nbsp;alprazolam (Niravam, Xanax)</td>
			<td>d00168</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d00689" path="d00689"/>		
			<td><input type="checkbox" name="d00689_c" value="6" style="margin-left:0px;" />&nbsp;&nbsp;amlodipine (Norvasc)</td>
			<td>d00689</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d00004" path="d00004"/>		
			<td><input type="checkbox" name="d00004_c" value="7" style="margin-left:0px;" />&nbsp;&nbsp;atenolol (Senormin, Tenormin)</td>
			<td>d00004</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d04105" path="d04105"/>		
			<td><input type="checkbox" name="d04105_c" value="8" style="margin-left:0px;" />&nbsp;&nbsp;atorvastatin (Lipitor)</td>
			<td>d04105</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d00730" path="d00730"/>		
			<td><input type="checkbox" name="d00730_c" value="9" style="margin-left:0px;" />&nbsp;&nbsp;benazepril (Lotensin)</td>
			<td>d00730</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d00181" path="d00181"/>		
			<td><input type="checkbox" name="d00181_c" value="10" style="margin-left:0px;" />&nbsp;&nbsp;bupropion(Budeprion, Wellbutrin, Zyban)</td>
			<td>d00181</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d03689" path="d03689"/>		
			<td><input type="checkbox" name="d03689_c" value="11" style="margin-left:0px;" />&nbsp;&nbsp;calcium acetate (Calphron, PhosLo)</td>
			<td>d03689</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d03473" path="d03473"/>		
			<td><input type="checkbox" name="d03473_c" value="12" style="margin-left:0px;" />&nbsp;&nbsp;carbidopa - levodopa (Atamet, Sinemet)</td>
			<td>d03473</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d03847" path="d03847"/>		
			<td><input type="checkbox" name="d03847_c" value="11" style="margin-left:0px;" />&nbsp;&nbsp;carvedilol (Coreg, Carvedilol)</td>
			<td>d03847</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d04380" path="d04380"/>		
			<td><input type="checkbox" name="d04380_c" value="13" style="margin-left:0px;" />&nbsp;&nbsp;celecoxib (Celebrex)</td>
			<td>d04380</td>
		</tr>
		<tr >
				 <form:input type="hidden" name="d03827" path="d03827"/>		
			<td><input type="checkbox" name="d03827_c" value="27" style="margin-left:0px;" />&nbsp;&nbsp;cetirizine (Zyrtec)</td>
			<td>d03827</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d04332" path="d04332"/>		
			<td><input type="checkbox" name="d04332_c" value="14" style="margin-left:0px;" />&nbsp;&nbsp;citalopram (Celexa)</td>
			<td>d04332</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d00197" path="d00197"/>		
			<td><input type="checkbox" name="d00197_c" value="15" style="margin-left:0px;" />&nbsp;&nbsp;clonazepam (Klonopin)</td>
			<td>d00197</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d04258" path="d04258"/>		
			<td><input type="checkbox" name="d04258_c" value="16" style="margin-left:0px;" />&nbsp;&nbsp;clopidogrel (Plavix)</td>
			<td>d04258</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d00541" path="d00541"/>		
			<td><input type="checkbox" name="d00541_c" value="17" style="margin-left:0px;" />&nbsp;&nbsp;conjugated estrogens (Cenestin, Premarin)</td>
			<td>d00541</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d00413" path="d00413"/>		
			<td><input type="checkbox" name="d00413_c" value="18" style="margin-left:0px;" />&nbsp;&nbsp;cyanocobalamin (Neuroforte -R, Vitamin B12) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>d00413</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d00210" path="d00210"/>		
			<td><input type="checkbox" name="d00210_c" value="19" style="margin-left:0px;" />&nbsp;&nbsp;digoxin (Digitek, Lanoxin)</td>
			<td>d00210</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d00045" path="d00045"/>		
			<td><input type="checkbox" name="d00045_c" value="20" style="margin-left:0px;" />&nbsp;&nbsp;diltiazem (Cardizem, Tiazac)</td>
			<td>d00045</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d04099" path="d04099"/>		
			<td><input type="checkbox" name="d04099_c" value="21" style="margin-left:0px;" />&nbsp;&nbsp;donepezil (Aricept)</td>
			<td>d04099</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d05355" path="d05355"/>		
			<td><input type="checkbox" name="d05355_c" value="26" style="margin-left:0px;" />&nbsp;&nbsp;duloxetine (Cymbalta)</td>
			<td>d05355</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d00013" path="d00013"/>		
			<td><input type="checkbox" name="d00013_c" value="22" style="margin-left:0px;" />&nbsp;&nbsp;enalapril (Vasotec)</td>
			<td>d00013</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d03128" path="d03128"/>		
			<td><input type="checkbox" name="d03128_c" value="23" style="margin-left:0px;" />&nbsp;&nbsp;ergocalciferol (Calciferol, Drisdol, Vitamin D)</td>
			<td>d03128</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d04812" path="d04812"/>		
			<td><input type="checkbox" name="d04812_c" value="24" style="margin-left:0px;" />&nbsp;&nbsp;escitalopram (Lexapro)</td>
			<td>d04812</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d04749" path="d04749"/>		
			<td><input type="checkbox" name="d04749_c" value="25" style="margin-left:0px;" />&nbsp;&nbsp;esomeprazole (Nexium)</td>
			<td>d04749</td>
		</tr>
		</table>
		
		<table style="display: inline-block; border: 1px solid CornflowerBlue;">
		<tr>
			<th bgcolor="Silver">MEDICATION NAME</th>
			<th bgcolor="Silver">drugID&nbsp;&nbsp;</th>
		</tr>
		<tr>
				 <form:input type="hidden" name="d00537" path="d00537"/>		
			<td><input type="checkbox" name="d00537_c" value="31" style="margin-left:0px;" />&nbsp;&nbsp;estradiol (Estrace, Estrogel, Fempatch) </td>
			<td>d00537</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d04824" path="d04824"/>		
			<td><input type="checkbox" name="d04824_c" value="32" style="margin-left:0px;" />&nbsp;&nbsp;ezetimibe (Zetia)</td>
			<td>d04824</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d03824" path="d03824"/>		
			<td><input type="checkbox" name="d03824_c" value="33" style="margin-left:0px;" />&nbsp;&nbsp;ferrous sulfate (FeroSul, Iron Supplement)</td>
			<td>d03824</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d04040" path="d04040"/>		
			<td><input type="checkbox" name="d04040_c" value="34" style="margin-left:0px;" />&nbsp;&nbsp;fexofenadine (Allegra)</td>
			<td>d04040</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d00563" path="d00563"/>		
			<td><input type="checkbox" name="d00563_c" value="35" style="margin-left:0px;" />&nbsp;&nbsp;finasteride (Propecia, Proscar)</td>
			<td>d00563</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d00236" path="d00236"/>		
			<td><input type="checkbox" name="d00236_c" value="36" style="margin-left:0px;" />&nbsp;&nbsp;fluoxetine (Prozac)</td>
			<td>d00236</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d01296" path="d01296"/>		
			<td><input type="checkbox" name="d01296_c" value="37" style="margin-left:0px;" />&nbsp;&nbsp;fluticasone (Flovent)</td>
			<td>d01296</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d04283" path="d04283"/>		
			<td><input type="checkbox" name="d04283_c" value="38" style="margin-left:0px;" />&nbsp;&nbsp;fluticasone nasal (Flonase , Veramyst)</td>
			<td>d04283</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d04611" path="d04611"/>		
			<td><input type="checkbox" name="d04611_c" value="39" style="margin-left:0px;" />&nbsp;&nbsp;fluticasone -salmeterol (Advair)</td>
			<td>d04611</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d00070" path="d00070"/>		
			<td><input type="checkbox" name="d00070_c" value="40" style="margin-left:0px;" />&nbsp;&nbsp;furosemide (Lasix)</td>
			<td>d00070</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d03182" path="d03182"/>		
			<td><input type="checkbox" name="d03182_c" value="41" style="margin-left:0px;" /> &nbsp;&nbsp;gabapentin (Neurontin)</td>
			<td>d03182</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d04750" path="d04750"/>		
			<td><input type="checkbox" name="d04750_c" value="42" style="margin-left:0px;" />&nbsp;&nbsp;galantamine (Razadyne, Reminyl)</td>
			<td>d04750</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d00246" path="d00246"/>		
			<td><input type="checkbox" name="d00246_c" value="43" style="margin-left:0px;" />&nbsp;&nbsp;glipizide (Glucotrol)</td>
			<td>d00246</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d00253" path="d00253"/>		
			<td><input type="checkbox" name="d00253_c" value="44" style="margin-left:0px;" />&nbsp;&nbsp;hydrochlorothiazide (Esidrix, Hydrodiuril)</td>
			<td>d00253</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d03052" path="d03052"/>		
			<td><input type="checkbox" name="d03052_c" value="45" style="margin-left:0px;" />&nbsp;&nbsp;hydrochlorothiazide - triamterene (Dyazide)</td>
			<td>d03052</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d04017" path="d04017"/>		
			<td><input type="checkbox" name="d04017_c" value="46" style="margin-left:0px;" />&nbsp;&nbsp;latanoprost ophthalmic (Xalatan)</td>
			<td>d04017</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d00278" path="d00278"/>		
			<td><input type="checkbox" name="d00278_c" value="47" style="margin-left:0px;" />&nbsp;&nbsp;levothyroxine (Levothroid, Levoxyl, Synthroid) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>d00278</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d00732" path="d00732"/>		
			<td><input type="checkbox" name="d00732_c" value="48" style="margin-left:0px;" />&nbsp;&nbsp;lisinopril (Prinivil, Zestril)</td>
			<td>d00732</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d00149" path="d00149"/>		
			<td><input type="checkbox" name="d00149_c" value="49" style="margin-left:0px;" />&nbsp;&nbsp;lorazepam (Ativan)</td>
			<td>d00149</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d03821" path="d03821"/>		
			<td><input type="checkbox" name="d03821_c" value="50" style="margin-left:0px;" />&nbsp;&nbsp;losartan (Cozaar)</td>
			<td>d03821</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d00280" path="d00280"/>		
			<td><input type="checkbox" name="d00280_c" value="51" style="margin-left:0px;" />&nbsp;&nbsp;lovastatin (Altocor, Mevacor)</td>
			<td>d00280</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d04532" path="d04532"/>		
			<td><input type="checkbox" name="d04532_c" value="52" style="margin-left:0px;" />&nbsp;&nbsp;meloxicam (Meloxicam ,Mobic)</td>
			<td>d04532</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d04899" path="d04899"/>		
			<td><input type="checkbox" name="d04899_c" value="53" style="margin-left:0px;" />&nbsp;&nbsp;memantine (Namenda)</td>
			<td>d04899</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d03807" path="d03807"/>		
			<td><input type="checkbox" name="d03807_c" value="54" style="margin-left:0px;" />&nbsp;&nbsp;metformin (Glucophage, Riomet)</td>
			<td>d03807</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d00134" path="d00134"/>		
			<td><input type="checkbox" name="d00134_c" value="55" style="margin-left:0px;" />&nbsp;&nbsp;metoprolol (Lopressor, Toprol- XL)</td>
			<td>d00134</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d04025" path="d04025"/>		
			<td><input type="checkbox" name="d04025_c" value="56" style="margin-left:0px;" />&nbsp;&nbsp;mirtazapine (Remeron)</td>
			<td>d04025</td>
		</tr>
		<tr>
				 <form:input type="hidden" name="d04289" path="d04289"/>		
			<td><input type="checkbox" name="d04289_c" value="57" style="margin-left:0px;" />&nbsp;&nbsp;montelukast (Singulair)</td>
			<td>d04289</td>
		</tr>
		<tr bgcolor="Silver">
				 <form:input type="hidden" name="d00019" path="d00019"/>		
			<td><input type="checkbox" name="d00019_c" value="58" style="margin-left:0px;" />&nbsp;&nbsp;naproxen (Aleve, Anaprox, Naprosyn)</td>
			<td>d00019</td>
		</tr>
				
</table>
<br>
<br>

<p class="footer">
National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br>
<font color ="Black"><b>UDS (V3.0 ,March 2015)</b></font> 
</p>
<p class="footer1"> <b>Page 1 of 2</b> </p>
<input type = "submit" name="action" value="Move to Page 2" style="margin-left:400px;" onclick="return validate();"/>
</form:form>
</body>
</html>