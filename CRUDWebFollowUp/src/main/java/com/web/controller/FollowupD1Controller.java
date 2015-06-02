package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.FollowupB9;
import com.web.model.FollowupD1;
import com.web.service.FollowupD1Service;

@Controller
public class FollowupD1Controller {
	@Autowired
	private FollowupD1Service followupD1service;
	FollowupD1 followupd1v = new FollowupD1();
	
	@RequestMapping("/FollowupD1")
	public String loadFollowupD1(Model model)
	{		
		    model.addAttribute("followupd1", new FollowupD1());
			return "followupd1";
	}
	
	@RequestMapping("/FollowupD12")
	public String loadFollowupD12(Model model) {
			return "followupd12";
	}
	@RequestMapping(value="/followupd1.do", method=RequestMethod.POST)
	public String FollowUpVisitD1(Model model,@RequestParam("dxmethod") int dxmethod,@RequestParam("normcog") int normcog,
			@RequestParam(value="demented", required=false, defaultValue="999") int demented)
	{	  		
		followupd1v.setDxmethod(dxmethod);
		followupd1v.setNormcog(normcog);
		if(demented!=999)
		{
			System.out.println("Value is set");
			followupd1v.setDemented(demented);

		}
		else
		{
			System.out.println(demented);
			System.out.println("Value set is:" + followupd1v.getDemented());
		}
		System.out.println("Coming here in d2controller" + demented);
		model.addAttribute("followupd12", new FollowupD1());
		return "followupd12";
	}
	
	@RequestMapping(value="/followupd12.do", method=RequestMethod.POST)
	public String FollowUpVisitD12(Model model,@RequestParam(value="amndem",required=false, defaultValue="999") int amndem,@RequestParam(value="pca", required=false, defaultValue="999") int pca,
			@RequestParam(value="ppasyn", required=false, defaultValue="999") int ppasyn,@RequestParam(value="ppasynt", required=false, defaultValue="999") int ppasynt,
			@RequestParam(value="ftdsyn", required=false, defaultValue="999") int ftdsyn,@RequestParam(value="lbdsyn", required=false, defaultValue="999") int lbdsyn,@RequestParam(value="namndem", required=false, defaultValue="999") int namndem,
			@RequestParam(value="mciamem", required=false, defaultValue="999") int mciamem,@RequestParam(value="mciaplus", required=false, defaultValue="999") int mciaplus,@RequestParam(value="mciaplan", required=false, defaultValue="999") int mciaplan,
			@RequestParam(value="mciapatt", required=false, defaultValue="999") int mciapatt,@RequestParam(value="mciapex", required=false, defaultValue="999") int mciapex,@RequestParam(value="mciapvis", required=false, defaultValue="999") int mciapvis
			) 
	
	{
		if(namndem!=999)
			followupd1v.setAmndem(namndem);
		if(pca!=999)
			followupd1v.setPca(pca);
		if(ppasyn!=999)
			followupd1v.setPpasyn(ppasyn);
		if(ppasynt!=999)
			followupd1v.setPpasynt(ppasynt);
		if(ftdsyn!=999)
			followupd1v.setFtdsyn(ftdsyn);
		if(lbdsyn!=999)
			followupd1v.setLbdsyn(lbdsyn);
		if(namndem!=999)
			followupd1v.setNamndem(namndem);
		if(mciamem!=999)
			followupd1v.setMciamem(mciamem);
		if(mciaplus!=999)
			followupd1v.setMciaplus(mciaplus);
		if(mciaplan!=999)
			followupd1v.setMciaplan(mciaplan);
		if(mciapatt!=999)
			followupd1v.setMciapatt(mciapatt);
		if(mciapex!=999)
			followupd1v.setMciapex(mciapex);
		if(mciapvis!=999)
			followupd1v.setMciapvis(mciapvis);
		model.addAttribute("followupd13", new FollowupD1());
		return "followupd13";
		
		
	}
	@RequestMapping(value="/followupd13.do", method=RequestMethod.POST)
	public String FollowUpVisitD13(Model model,
			@RequestParam(value="mcinon1",required=false, defaultValue="999") int mcinon1,
			@RequestParam(value="mcin1lan",required=false, defaultValue="999") int mcin1lan, @RequestParam(value="mcin1att",required=false, defaultValue="999") int mcin1att,@RequestParam(value="mcin1ex",required=false, defaultValue="999") int mcin1ex,@RequestParam(value="mcin1vis",required=false, defaultValue="999") int mcin1vis,
			@RequestParam(value="mcinon2",required=false, defaultValue="999") int mcinon2,
			@RequestParam(value="mcin2lan",required=false, defaultValue="999") int mcin2lan, @RequestParam(value="mcin2att",required=false, defaultValue="999") int mcin2att,@RequestParam(value="mcin2ex",required=false, defaultValue="999") int mcin2ex,@RequestParam(value="mcin2vis",required=false, defaultValue="999") int mcin2vis,
			@RequestParam(value="impnomci",required=false, defaultValue="999") int impnomci,
			@RequestParam("amylpet") int amylpet,
			@RequestParam("amylcsf") int amylcsf,
			@RequestParam("fdgad") int fdgad,@RequestParam("hippatr") int hippatr,@RequestParam("taupetad") int taupetad,@RequestParam("csftau") int csftau,
			@RequestParam("fdgftld") int fdgftld,@RequestParam("tpetftld") int tpetftld,@RequestParam("mrftld") int mrftld,@RequestParam("datscan") int datscan,
			@RequestParam("othbiom") int othbiom,@RequestParam(value="othbiomx",required=false, defaultValue="999") String othbiomx) 
	
	{	  		
		if(mcinon1!=999)
			followupd1v.setMcinon1(mcinon1);
		if(mcin1lan!=999)
			followupd1v.setMcin1lan(mcin1lan);
		if(mcin1att!=999)
			followupd1v.setMcin1att(mcin1att);
		if(mcin1ex!=999)
			followupd1v.setMcin1ex(mcin1ex);
		if(mcin1vis!=999)
			followupd1v.setMcin1vis(mcin1vis);
		if(mcinon2!=999)
			followupd1v.setMcinon2(mcinon2);
		if(mcin2lan!=999)
			followupd1v.setMcin2lan(mcin2lan);
		if(mcin2att!=999)
			followupd1v.setMcin2att(mcin2att);
		if(mcin2ex!=999)
			followupd1v.setMcin2ex(mcin2ex);
		if(mcin2vis!=999)
			followupd1v.setMcin2vis(mcin2vis);
		if(impnomci!=999)
			followupd1v.setImpnomci(impnomci);
		followupd1v.setAmylpet(amylpet);
		followupd1v.setAmylcsf(amylcsf);
		followupd1v.setFdgad(fdgad);
		followupd1v.setHippatr(hippatr);
		followupd1v.setTaupetad(taupetad);
		followupd1v.setCsftau(csftau);
		followupd1v.setFdgftld(fdgftld);
		followupd1v.setTpetftld(tpetftld);
		followupd1v.setMrftld(mrftld);
		followupd1v.setDatscan(datscan);
		followupd1v.setOthbiom(othbiom);
		if (!(othbiomx.equals("999")))
		{
			followupd1v.setOthbiomx(othbiomx);
			System.out.println("Worked because string was something else");
		}
		model.addAttribute("followupd14", new FollowupD1());
		return "followupd14";
	}
	
	@RequestMapping(value="/followupd14.do", method=RequestMethod.POST)
	public String FollowUpVisitD14(Model model,
			@RequestParam("imaglinf") int imaglinf,
			@RequestParam("imaglac") int imaglac,@RequestParam("imagmach") int imagmach,
			@RequestParam("imagmich") int imagmich,@RequestParam("imagmwwh") int imagmwwh,
			@RequestParam("imagewmh") int imagewmh,@RequestParam("admut") int admut,
			@RequestParam("ftldmut") int ftldmut,@RequestParam("othmut") int othmut,
			@RequestParam(value="othmutx",required=false, defaultValue="999") String othmutx,
			@RequestParam(value="alzdis",required=false, defaultValue="999") int alzdis,@RequestParam(value="lbdis",required=false, defaultValue="999") int lbdis,@RequestParam(value="park",required=false, defaultValue="999") int park,
			@RequestParam(value="msa",required=false, defaultValue="999") int msa,@RequestParam(value="psp",required=false, defaultValue="999") int psp,@RequestParam(value="cort",required=false, defaultValue="999") int cort,
			@RequestParam(value="ftldmo",required=false, defaultValue="999") int ftldmo,@RequestParam(value="ftldnos",required=false, defaultValue="999") int ftldnos,@RequestParam(value="ftldsubt",required=false, defaultValue="999") int ftldsubt,
			@RequestParam(value="ftldsubx",required=false, defaultValue="999") String ftldsubx, @RequestParam(value="alzdisif",required=false, defaultValue="999") int alzdisif,@RequestParam(value="lbdif",required=false, defaultValue="999") int lbdif,
			@RequestParam(value="msaif",required=false, defaultValue="999") int msaif,@RequestParam(value="pspif",required=false, defaultValue="999") int pspif,@RequestParam(value="cortif",required=false, defaultValue="999") int cortif,@RequestParam(value="ftldmoif",required=false, defaultValue="999") int ftldmoif,
			@RequestParam(value="ftldnoif",required=false, defaultValue="999") int ftldnoif) 
	
	{	
		followupd1v.setImaglinf(imaglinf);
		followupd1v.setImaglac(imaglac);
		followupd1v.setImagmach(imagmach);
		followupd1v.setImagmich(imagmich);
		followupd1v.setImagmwwh(imagmwwh);
		followupd1v.setImagewmh(imagewmh);
		followupd1v.setAdmut(admut);
		followupd1v.setFtldmut(ftldmut);
		followupd1v.setOthmut(othmut);
		if(!(othmutx.equals("999")))
			followupd1v.setOthmutx(othmutx);
		if(alzdis!=999)
			followupd1v.setAlzdis(alzdis);
		if(lbdis!=999)
			followupd1v.setLbdis(lbdis);
		if(park!=999)
			followupd1v.setPark(park);
		if(msa!=999)
			followupd1v.setMsa(msa);
		if(psp!=999)
			followupd1v.setPsp(psp);
		if(cort!=999)
			followupd1v.setCort(cort);
		if(ftldmo!=999)
			followupd1v.setFtldmo(ftldmo);
		if(ftldnos!=999)
			followupd1v.setFtldnos(ftldnos);
		if(ftldsubt!=999)
			followupd1v.setFtldsubt(ftldsubt);
		if(!(ftldsubx.equals("999")))
			followupd1v.setFtldsubx(ftldsubx);
		if(alzdisif!=999)
			followupd1v.setAlzdisif(alzdisif);
		if(lbdif!=999)
			followupd1v.setLbdif(lbdif);
		if(msaif!=999)
			followupd1v.setMsaif(msaif);
		if(pspif!=999)
			followupd1v.setPspif(pspif);
		if(cortif!=999)
			followupd1v.setCortif(cortif);
		if(ftldmoif!=999)
			followupd1v.setFtldmoif(ftldmoif);
		if(ftldnoif!=999)
			followupd1v.setFtldnoif(ftldnoif);
		model.addAttribute("followupd15", new FollowupD1());
		return "followupd15";
	}
	
	@RequestMapping(value="/followupd15.do", method=RequestMethod.POST)
	public String FollowUpVisitD15(Model model,@RequestParam(value="cvd",required=false, defaultValue="999") int cvd,@RequestParam(value="cvdif",required=false, defaultValue="999") int cvdif,
			@RequestParam(value="prevstk",required=false, defaultValue="999") int prevstk,@RequestParam(value="strokdec",required=false, defaultValue="999") int strokdec,
			@RequestParam(value="stkimag",required=false, defaultValue="999") int stkimag,@RequestParam(value="infnetw",required=false, defaultValue="999") int infnetw,
			@RequestParam(value="infwmh",required=false, defaultValue="999") int infwmh,@RequestParam(value="esstrem",required=false, defaultValue="999") int esstrem,
			@RequestParam(value="esstreif",required=false, defaultValue="999") int esstreif,@RequestParam(value="downs",required=false, defaultValue="999") int downs,
			@RequestParam(value="downsif",required=false, defaultValue="999") int downsif,@RequestParam(value="hunt",required=false, defaultValue="999") int hunt,
			@RequestParam(value="huntif",required=false, defaultValue="999") int huntif,@RequestParam(value="prion",required=false, defaultValue="999") int prion,
			@RequestParam(value="prionif",required=false, defaultValue="999") int prionif) 
	
	{	  		
		if(cvd!=999)	
			followupd1v.setCvd(cvd);
		if(cvdif!=999)
			followupd1v.setCvdif(cvdif);
		if(prevstk!=999)
			followupd1v.setPrevstk(prevstk);	
		if(strokdec!=999)
			followupd1v.setStrokdec(strokdec);	
		if(stkimag!=999)
			followupd1v.setStkimag(stkimag);	
		if(infnetw!=999)
			followupd1v.setInfnetw(infnetw);	
		if(infwmh!=999)
			followupd1v.setInfwmh(infwmh);	
		if(esstrem!=999)
			followupd1v.setEsstrem(esstrem);
		if(esstreif!=999)
			followupd1v.setEsstreif(esstreif);
		if(downs!=999)
			followupd1v.setDowns(downs);	
		if(downsif!=999)
			followupd1v.setDownsif(downsif);	
		if(hunt!=999)
			followupd1v.setHunt(hunt);
		if(huntif!=999)
			followupd1v.setHuntif(huntif);	
		if(prion!=999)
			followupd1v.setPrion(prion);
		if(prionif!=999)
			followupd1v.setPrionif(prionif);
		model.addAttribute("followupd16", new FollowupD1());
		return "followupd16";

		
		/*followupD1service.add(followupd1v);
		return "D1"; */ //- Check out ? 
	}

	
	@RequestMapping(value="/followupd16.do", method=RequestMethod.POST)
	public String FollowUpVisitD16(Model model,@RequestParam(value="brnincte",required=false, defaultValue="999") int brnincte,@RequestParam(value="brninj",required=false, defaultValue="999") int brninj,
			@RequestParam(value="brninjif",required=false, defaultValue="999") int brninjif,@RequestParam(value="hyceph",required=false, defaultValue="999") int hyceph,
			@RequestParam(value="hycephif",required=false, defaultValue="999") int hycephif,@RequestParam(value="epilep",required=false, defaultValue="999") int epilep,
			@RequestParam(value="epilepif",required=false, defaultValue="999") int epilepif,@RequestParam(value="neopstat",required=false, defaultValue="999") int neopstat,
			@RequestParam(value="neop",required=false, defaultValue="999") int neop,@RequestParam(value="neopif",required=false, defaultValue="999") int neopif,
			@RequestParam(value="hiv",required=false, defaultValue="999") int hiv,@RequestParam(value="hivif",required=false, defaultValue="999") int hivif,
			@RequestParam(value="othcog",required=false, defaultValue="999") int othcog,@RequestParam(value="othcogif",required=false, defaultValue="999") int othcogif,
			@RequestParam(value="deptreat",required=false, defaultValue="999") int deptreat, 
			@RequestParam(value="dep",required=false, defaultValue="999") int dep,@RequestParam(value="depif",required=false, defaultValue="999") int depif,
			@RequestParam(value="bipoldx",required=false, defaultValue="999") int bipoldx,@RequestParam(value="bipoldif",required=false, defaultValue="999") int bipoldif,
			@RequestParam(value="schizop",required=false, defaultValue="999") int schizop,@RequestParam(value="schizoif",required=false, defaultValue="999") int schizoif,
			@RequestParam(value="anxiet",required=false, defaultValue="999") int anxiet,@RequestParam(value="anxietif",required=false, defaultValue="999") int anxietif,
			@RequestParam(value="delir",required=false, defaultValue="999") int delir,@RequestParam(value="delirif",required=false, defaultValue="999") int delirif,
			
			@RequestParam(value="ptsddx",required=false, defaultValue="999") int ptsddx,@RequestParam(value="ptsddxif",required=false, defaultValue="999") int ptsddxif,
			@RequestParam(value="othpsy",required=false, defaultValue="999") int othpsy,@RequestParam(value="othpsyif",required=false, defaultValue="999") int othpsyif
			) 
	
	{	  		
		if(brnincte!=999)
			followupd1v.setBrnincte(brnincte);
		if(brninj!=999)
			followupd1v.setBrninj(brninj);
		if(brninjif!=999)
			followupd1v.setBrninjif(brninjif);	
		if(hyceph!=999)
			followupd1v.setHyceph(hyceph);	
		if(hycephif!=999)
			followupd1v.setHycephif(hycephif);	
		if(epilep!=999)
			followupd1v.setEpilep(epilep);
		if(epilepif!=999)
			followupd1v.setEpilepif(epilepif);	
		if(neopstat!=999)
			followupd1v.setNeopstat(neopstat);
		if(neop!=999)
			followupd1v.setNeop(neop);
		if(neopif!=999)
			followupd1v.setNeopif(neopif);	
		if(hiv!=999)
			followupd1v.setHiv(hiv);	
		if(hivif!=999)
			followupd1v.setHivif(hivif);
		if(othcog!=999)
			followupd1v.setOthcog(othcog);	
		if(othcogif!=999)
			followupd1v.setOthcogif(othcogif);
		if(deptreat!=999)
			followupd1v.setDeptreat(deptreat);
		if(dep!=999)
			followupd1v.setDep(dep);
		if(depif!=999)
			followupd1v.setDepif(depif);
		if(bipoldx!=999)
			followupd1v.setBipoldx(bipoldx);
		if(schizop!=999)
			followupd1v.setSchizop(schizop);
		if(schizoif!=999)
			followupd1v.setSchizoif(schizoif);
		if(anxiet!=999)
			followupd1v.setAnxiet(anxiet);
		if(anxietif!=999)
			followupd1v.setAnxietif(anxietif);
		if(delir!=999)
			followupd1v.setDelir(delir);
		if(delirif!=999)
			followupd1v.setDelirif(delirif);
		if(ptsddx!=999)
			followupd1v.setPtsddx(ptsddx);
		if(ptsddxif!=999)
			followupd1v.setPtsddxif(ptsddxif);
		if(othpsy!=999)
			followupd1v.setOthpsy(othpsy);
		if(othpsyif!=999)
			followupd1v.setOthpsyif(othpsyif);
		
		model.addAttribute("followupd17", new FollowupD1());
		return "followupd17";
	}
	
	@RequestMapping(value="/followupd17.do", method=RequestMethod.POST)
	public String FollowUpVisitD17(Model model,@RequestParam(value="alcdem",required=false, defaultValue="999") int alcdem,@RequestParam(value="alcabuse",required=false, defaultValue="999") int alcabuse,
			@RequestParam(value="alcdemif",required=false, defaultValue="999") int alcdemif,@RequestParam(value="impsub",required=false, defaultValue="999") int impsub,
			@RequestParam(value="impsubif",required=false, defaultValue="999") int impsubif,@RequestParam(value="dysill",required=false, defaultValue="999") int dysill,
			@RequestParam(value="dysillif",required=false, defaultValue="999") int dysillif,@RequestParam(value="meds",required=false, defaultValue="999") int meds,@RequestParam(value="medsif",required=false, defaultValue="999") int medsif)
//			@RequestParam("cogpresent1") int cogpresent1,
//			@RequestParam("NOS1") int NOS1,@RequestParam("cogset1") int cogset1,
//			@RequestParam("cogpresent2") int cogpresent2,@RequestParam("NOS2") int NOS2,
//			@RequestParam("cogset2") int cogset2, 
//			@RequestParam("cogpresent3") int cogpresent3,@RequestParam("NOS3") int NOS3,
//			@RequestParam("cogset3") int cogset3) 
	
	{	  		
		if(alcdem!=999)
			followupd1v.setAlcdem(alcdem);
		if(alcabuse!=999)
			followupd1v.setAlcabuse(alcabuse);
		if(alcdemif!=999)
			followupd1v.setAlcdemif(alcdemif);	
		if(impsub!=999)
			followupd1v.setImpsub(impsub);	
		if(impsubif!=999)
			followupd1v.setImpsubif(impsubif);
		if(dysill!=999)
			followupd1v.setDysill(dysill);
		if(dysillif!=999)
			followupd1v.setDysillif(dysillif);
		if(meds!=999)
			followupd1v.setMeds(meds);
		if(medsif!=999)
			followupd1v.setMedsif(medsif);
	
		followupD1service.add(followupd1v);
		return "D1";
	}
	
	
	
	
}
