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
<div id="content">
<img src="/Show/index.jpg" height="100" width="150" class="nacc"></img>
</div>
<input type="text" value="FOLLOW - UP VISIT PACKET"  style="background-color:Black; color:White; width:200px; font-weight :bold;"/> &nbsp; &nbsp; 
 <b>NACC UNIFORM DATA SET(UDS)</b>
<h3> Form A4: &nbsp;Subject Medications<font size = 5px>&nbsp;&nbsp;</font></h3>
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

<font size =3px><i>NOTE: This form is to be completed by the clinician or ADC staff.The purpose of this form is to record all
prescription medications taken by the subject<b> within the two weeks before the current visit.</b> For prescription medications not
listed here, please follow the instructions at the end of this form.OTC (non -prescription) medications need not be reported;
however , a short list of medications that could be either prescription or OTC follows the prescription list.</i></font>
<br><br>
<br>
<p class="even">
 Is the subject currently taking an medications? &nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" name="option" value="No" style="margin-left:0px;" /> 0&nbsp;&nbsp; No <b>&nbsp;&nbsp;&nbsp;&nbsp; (END FORM HERE)</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" name="option" value="Yes" style="margin-left:0px;" /> 1 &nbsp;&nbsp;Yes
</p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="display: inline-block; border: 1px solid CornflowerBlue; float: left; ">
         <tr>
			<th bgcolor="Silver">MEDICATION NAME</th>
			<th bgcolor="Silver">drugID&nbsp;&nbsp;</th>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="1" style="margin-left:0px;" />&nbsp;&nbsp;acetaminophen - hydrocodone (Vicodin) </td>
			<td>d03428</td>
		</tr>
		<tr bgcolor="Silver">
			<td ><input type="checkbox" name="option" value="2" style="margin-left:0px;" />&nbsp;&nbsp;albuterol (Proventil, Ventolin, Volmax)</td>
			<td>d00749</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="3" style="margin-left:0px;" />&nbsp;&nbsp;alendronate (Fosamax)</td>
			<td>d03849</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="4" style="margin-left:0px;" />&nbsp;&nbsp;allopurinol (Aloprim, Lopurin, Zyloprim)</td>
			<td>d00023</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="5" style="margin-left:0px;" />&nbsp;&nbsp;alprazolam (Niravam, Xanax)</td>
			<td>d00168</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="6" style="margin-left:0px;" />&nbsp;&nbsp;amlodipine (Norvasc)</td>
			<td>d00689</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="7" style="margin-left:0px;" />&nbsp;&nbsp;atenolol (Senormin, Tenormin)</td>
			<td>d00004</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="8" style="margin-left:0px;" />&nbsp;&nbsp;atorvastatin (Lipitor)</td>
			<td>d04105</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="9" style="margin-left:0px;" />&nbsp;&nbsp;benazepril (Lotensin)</td>
			<td>d00730</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="10" style="margin-left:0px;" />&nbsp;&nbsp;bupropion(Budeprion, Wellbutrin, Zyban)</td>
			<td>d00181</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="11" style="margin-left:0px;" />&nbsp;&nbsp;calcium acetate (Calphron, PhosLo)</td>
			<td>d03689</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="12" style="margin-left:0px;" />&nbsp;&nbsp;carbidopa - levodopa (Atamet, Sinemet)</td>
			<td>d03473</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="11" style="margin-left:0px;" />&nbsp;&nbsp;carvedilol (Coreg, Carvedilol)</td>
			<td>d03847</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="13" style="margin-left:0px;" />&nbsp;&nbsp;celecoxib (Celebrex)</td>
			<td>d04380</td>
		</tr>
		<tr >
			<td><input type="checkbox" name="option" value="27" style="margin-left:0px;" />&nbsp;&nbsp;cetirizine (Zyrtec)</td>
			<td>d03827</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="14" style="margin-left:0px;" />&nbsp;&nbsp;citalopram (Celexa)</td>
			<td>d04332</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="15" style="margin-left:0px;" />&nbsp;&nbsp;clonazepam (Klonopin)</td>
			<td>d00197</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="16" style="margin-left:0px;" />&nbsp;&nbsp;clopidogrel (Plavix)</td>
			<td>d04258</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="17" style="margin-left:0px;" />&nbsp;&nbsp;conjugated estrogens (Cenestin, Premarin)</td>
			<td>d00541</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="18" style="margin-left:0px;" />&nbsp;&nbsp;cyanocobalamin (Neuroforte -R, Vitamin B12) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>d00413</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="19" style="margin-left:0px;" />&nbsp;&nbsp;digoxin (Digitek, Lanoxin)</td>
			<td>d00210</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="20" style="margin-left:0px;" />&nbsp;&nbsp;diltiazem (Cardizem, Tiazac)</td>
			<td>d00045</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="21" style="margin-left:0px;" />&nbsp;&nbsp;donepezil (Aricept)</td>
			<td>d04099</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="26" style="margin-left:0px;" />&nbsp;&nbsp;duloxetine (Cymbalta)</td>
			<td>d05355</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="22" style="margin-left:0px;" />&nbsp;&nbsp;enalapril (Vasotec)</td>
			<td>d00013</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="23" style="margin-left:0px;" />&nbsp;&nbsp;ergocalciferol (Calciferol, Drisdol, Vitamin D)</td>
			<td>d03128</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="24" style="margin-left:0px;" />&nbsp;&nbsp;escitalopram (Lexapro)</td>
			<td>d04812</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="25" style="margin-left:0px;" />&nbsp;&nbsp;esomeprazole (Nexium)</td>
			<td>d04749</td>
		</tr>
		</table>
		
		<table style="display: inline-block; border: 1px solid CornflowerBlue;">
		<tr>
			<th bgcolor="Silver">MEDICATION NAME</th>
			<th bgcolor="Silver">drugID&nbsp;&nbsp;</th>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="31" style="margin-left:0px;" />&nbsp;&nbsp;estradiol (Estrace, Estrogel, Fempatch) </td>
			<td>d00537</td>
		</tr>
		<tr bgcolor="Silver">
			<td ><input type="checkbox" name="option" value="32" style="margin-left:0px;" />&nbsp;&nbsp;ezetimibe (Zetia)</td>
			<td>d04824</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="3" style="margin-left:0px;" />&nbsp;&nbsp;ferrous sulfate (FeroSul, Iron Supplement)</td>
			<td>d03824</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="4" style="margin-left:0px;" />&nbsp;&nbsp;fexofenadine (Allegra)</td>
			<td>d04040</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="5" style="margin-left:0px;" />&nbsp;&nbsp;finasteride (Propecia, Proscar)</td>
			<td>d00563</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="6" style="margin-left:0px;" />&nbsp;&nbsp;fluoxetine (Prozac)</td>
			<td>d00236</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="7" style="margin-left:0px;" />&nbsp;&nbsp;fluticasone (Flovent)</td>
			<td>d01296</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="8" style="margin-left:0px;" />&nbsp;&nbsp;fluticasone nasal (Flonase , Veramyst)</td>
			<td>d04283</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="9" style="margin-left:0px;" />&nbsp;&nbsp;fluticasone -salmeterol (Advair)</td>
			<td>d04611</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="10" style="margin-left:0px;" />&nbsp;&nbsp;furosemide (Lasix)</td>
			<td>d00070</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="11" style="margin-left:0px;" /> &nbsp;&nbsp;gabapentin (Neurontin)</td>
			<td>d03182</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="12" style="margin-left:0px;" />&nbsp;&nbsp;galantamine (Razadyne, Reminyl)</td>
			<td>d04750</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="13" style="margin-left:0px;" />&nbsp;&nbsp;glipizide (Glucotrol)</td>
			<td>d00246</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="27" style="margin-left:0px;" />&nbsp;&nbsp;hydrochlorothiazide (Esidrix, Hydrodiuril)</td>
			<td>d00253</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="14" style="margin-left:0px;" />&nbsp;&nbsp;hydrochlorothiazide - triamterene (Dyazide)</td>
			<td>d03052</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="15" style="margin-left:0px;" />&nbsp;&nbsp;latanoprost ophthalmic (Xalatan)</td>
			<td>d04017</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="16" style="margin-left:0px;" />&nbsp;&nbsp;levothyroxine (Levothroid, Levoxyl, Synthroid) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>d00278</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="17" style="margin-left:0px;" />&nbsp;&nbsp;lisinopril (Prinivil, Zestril)</td>
			<td>d00732</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="18" style="margin-left:0px;" />&nbsp;&nbsp;lorazepam (Ativan)</td>
			<td>d00149</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="19" style="margin-left:0px;" />&nbsp;&nbsp;losartan (Cozaar)</td>
			<td>d03821</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="20" style="margin-left:0px;" />&nbsp;&nbsp;lovastatin (Altocor, Mevacor)</td>
			<td>d00280</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="21" style="margin-left:0px;" />&nbsp;&nbsp;meloxicam (Meloxicam ,Mobic)</td>
			<td>d04532</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="26" style="margin-left:0px;" />&nbsp;&nbsp;memantine (Namenda)</td>
			<td>d04899</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="22" style="margin-left:0px;" />&nbsp;&nbsp;metformin (Glucophage, Riomet)</td>
			<td>d03807</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="23" style="margin-left:0px;" />&nbsp;&nbsp;metoprolol (Lopressor, Toprol- XL)</td>
			<td>d00134</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="24" style="margin-left:0px;" />&nbsp;&nbsp;mirtazapine (Remeron)</td>
			<td>d04025</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="option" value="23" style="margin-left:0px;" />&nbsp;&nbsp;montelukast (Singulair)</td>
			<td>d04289</td>
		</tr>
		<tr bgcolor="Silver">
			<td><input type="checkbox" name="option" value="25" style="margin-left:0px;" />&nbsp;&nbsp;naproxen (Aleve, Anaprox, Naprosyn)</td>
			<td>d00019</td>
		</tr>
		</table>
<br>
<br>


<p class="footer">
<font size = 3px color="Grey">National Alzheimer's Coordinating Center &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;(206) 543 -8637 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;fax :(206) 616-5927 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; naccmail@uw.edu  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  www.alz.washington.edu<br></font>
<b>UDS Version 3.0 ,March 2015</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Page 1 of 2  
</b></p>
<input type = "submit" name="action" value="Submit" style="margin-left:400px;" /> 

</body>
</html>