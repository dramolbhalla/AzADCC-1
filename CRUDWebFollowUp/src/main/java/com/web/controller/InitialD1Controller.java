package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.InitialD1;
import com.web.service.InitialD1Service;

@Controller
public class InitialD1Controller {
	@Autowired
	private InitialD1Service initialD1service;
	InitialD1 initiald1v = new InitialD1();
	
	@RequestMapping("/InitialD1")
	public String loadInitialD1(Model model)
	{		
		    model.addAttribute("initiald1", new InitialD1());
			return "initiald1";
	}
	
	@RequestMapping("/InitialD12")
	public String loadInitialD12(Model model) {
			return "initiald12";
	}
	@RequestMapping(value="/initiald1.do", method=RequestMethod.POST)
	public String InitialVisitD1(Model model,@RequestParam("dxmethod") int dxmethod,@RequestParam("normcog") int normcog,
			@RequestParam(value="demented", required=false, defaultValue="999") int demented)
	{	  		
		initiald1v.setDxmethod(dxmethod);
		initiald1v.setNormcog(normcog);
		if(demented!=999)
		{
			System.out.println("Value is set");
			initiald1v.setDemented(demented);

		}
		else
		{
			System.out.println(demented);
			System.out.println("Value set is:" + initiald1v.getDemented());
		}
		System.out.println("Coming here in d2controller" + demented);
		model.addAttribute("initiald12", new InitialD1());
		return "initiald12";
	}
	
	@RequestMapping(value="/initiald12.do", method=RequestMethod.POST)
	public String FollowUpVisitD12(Model model,@RequestParam(value="amndem",required=false, defaultValue="999") int amndem,@RequestParam(value="pca", required=false, defaultValue="999") int pca,
			@RequestParam(value="ppasyn", required=false, defaultValue="999") int ppasyn,@RequestParam(value="ppasynt", required=false, defaultValue="999") int ppasynt,
			@RequestParam(value="ftdsyn", required=false, defaultValue="999") int ftdsyn,@RequestParam(value="lbdsyn", required=false, defaultValue="999") int lbdsyn,@RequestParam(value="namndem", required=false, defaultValue="999") int namndem,
			@RequestParam(value="mciamem", required=false, defaultValue="999") int mciamem,@RequestParam(value="mciaplus", required=false, defaultValue="999") int mciaplus,@RequestParam(value="mciaplan", required=false, defaultValue="999") int mciaplan,
			@RequestParam(value="mciapatt", required=false, defaultValue="999") int mciapatt,@RequestParam(value="mciapex", required=false, defaultValue="999") int mciapex,@RequestParam(value="mciapvis", required=false, defaultValue="999") int mciapvis
			) 
	
	{
		if(namndem!=999)
			initiald1v.setAmndem(namndem);
		if(pca!=999)
			initiald1v.setPca(pca);
		if(ppasyn!=999)
			initiald1v.setPpasyn(ppasyn);
		if(ppasynt!=999)
			initiald1v.setPpasynt(ppasynt);
		if(ftdsyn!=999)
			initiald1v.setFtdsyn(ftdsyn);
		if(lbdsyn!=999)
			initiald1v.setLbdsyn(lbdsyn);
		if(namndem!=999)
			initiald1v.setNamndem(namndem);
		if(mciamem!=999)
			initiald1v.setMciamem(mciamem);
		if(mciaplus!=999)
			initiald1v.setMciaplus(mciaplus);
		if(mciaplan!=999)
			initiald1v.setMciaplan(mciaplan);
		if(mciapatt!=999)
			initiald1v.setMciapatt(mciapatt);
		if(mciapex!=999)
			initiald1v.setMciapex(mciapex);
		if(mciapvis!=999)
			initiald1v.setMciapvis(mciapvis);
		model.addAttribute("initiald13", new InitialD1());
		return "initiald13";
		
		
	}
	@RequestMapping(value="/initiald13.do", method=RequestMethod.POST)
	public String InitialVisitD13(Model model,
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
			initiald1v.setMcinon1(mcinon1);
		if(mcin1lan!=999)
			initiald1v.setMcin1lan(mcin1lan);
		if(mcin1att!=999)
			initiald1v.setMcin1att(mcin1att);
		if(mcin1ex!=999)
			initiald1v.setMcin1ex(mcin1ex);
		if(mcin1vis!=999)
			initiald1v.setMcin1vis(mcin1vis);
		if(mcinon2!=999)
			initiald1v.setMcinon2(mcinon2);
		if(mcin2lan!=999)
			initiald1v.setMcin2lan(mcin2lan);
		if(mcin2att!=999)
			initiald1v.setMcin2att(mcin2att);
		if(mcin2ex!=999)
			initiald1v.setMcin2ex(mcin2ex);
		if(mcin2vis!=999)
			initiald1v.setMcin2vis(mcin2vis);
		if(impnomci!=999)
			initiald1v.setImpnomci(impnomci);
		initiald1v.setAmylpet(amylpet);
		initiald1v.setAmylcsf(amylcsf);
		initiald1v.setFdgad(fdgad);
		initiald1v.setHippatr(hippatr);
		initiald1v.setTaupetad(taupetad);
		initiald1v.setCsftau(csftau);
		initiald1v.setFdgftld(fdgftld);
		initiald1v.setTpetftld(tpetftld);
		initiald1v.setMrftld(mrftld);
		initiald1v.setDatscan(datscan);
		initiald1v.setOthbiom(othbiom);
		if (!(othbiomx.equals("999")))
		{
			initiald1v.setOthbiomx(othbiomx);
			System.out.println("Worked because string was something else");
		}
		model.addAttribute("initiald14", new InitialD1());
		return "initiald14";
	}
	
	@RequestMapping(value="/initiald14.do", method=RequestMethod.POST)
	public String InitialVisitD14(Model model,
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
		initiald1v.setImaglinf(imaglinf);
		initiald1v.setImaglac(imaglac);
		initiald1v.setImagmach(imagmach);
		initiald1v.setImagmich(imagmich);
		initiald1v.setImagmwwh(imagmwwh);
		initiald1v.setImagewmh(imagewmh);
		initiald1v.setAdmut(admut);
		initiald1v.setFtldmut(ftldmut);
		initiald1v.setOthmut(othmut);
		if(!(othmutx.equals("999")))
			initiald1v.setOthmutx(othmutx);
		if(alzdis!=999)
			initiald1v.setAlzdis(alzdis);
		if(lbdis!=999)
			initiald1v.setLbdis(lbdis);
		if(park!=999)
			initiald1v.setPark(park);
		if(msa!=999)
			initiald1v.setMsa(msa);
		if(psp!=999)
			initiald1v.setPsp(psp);
		if(cort!=999)
			initiald1v.setCort(cort);
		if(ftldmo!=999)
			initiald1v.setFtldmo(ftldmo);
		if(ftldnos!=999)
			initiald1v.setFtldnos(ftldnos);
		if(ftldsubt!=999)
			initiald1v.setFtldsubt(ftldsubt);
		if(!(ftldsubx.equals("999")))
			initiald1v.setFtldsubx(ftldsubx);
		if(alzdisif!=999)
			initiald1v.setAlzdisif(alzdisif);
		if(lbdif!=999)
			initiald1v.setLbdif(lbdif);
		if(msaif!=999)
			initiald1v.setMsaif(msaif);
		if(pspif!=999)
			initiald1v.setPspif(pspif);
		if(cortif!=999)
			initiald1v.setCortif(cortif);
		if(ftldmoif!=999)
			initiald1v.setFtldmoif(ftldmoif);
		if(ftldnoif!=999)
			initiald1v.setFtldnoif(ftldnoif);
		model.addAttribute("initiald15", new InitialD1());
		return "initiald15";
	}
	
	@RequestMapping(value="/initiald15.do", method=RequestMethod.POST)
	public String InitialVisitD15(Model model,@RequestParam(value="cvd",required=false, defaultValue="999") int cvd,@RequestParam(value="cvdif",required=false, defaultValue="999") int cvdif,
			@RequestParam(value="prevstk",required=false, defaultValue="999") int prevstk,@RequestParam(value="strokdec",required=false, defaultValue="999") int strokdec,
			@RequestParam(value="stkimag",required=false, defaultValue="999") int stkimag,@RequestParam(value="infnetw",required=false, defaultValue="999") int infnetw,
			@RequestParam(value="infwmh",required=false, defaultValue="999") int infwmh,@RequestParam(value="esstrem",required=false, defaultValue="999") int esstrem,
			@RequestParam(value="esstreif",required=false, defaultValue="999") int esstreif,@RequestParam(value="downs",required=false, defaultValue="999") int downs,
			@RequestParam(value="downsif",required=false, defaultValue="999") int downsif,@RequestParam(value="hunt",required=false, defaultValue="999") int hunt,
			@RequestParam(value="huntif",required=false, defaultValue="999") int huntif,@RequestParam(value="prion",required=false, defaultValue="999") int prion,
			@RequestParam(value="prionif",required=false, defaultValue="999") int prionif) 
	
	{	  		
		if(cvd!=999)	
			initiald1v.setCvd(cvd);
		if(cvdif!=999)
			initiald1v.setCvdif(cvdif);
		if(prevstk!=999)
			initiald1v.setPrevstk(prevstk);	
		if(strokdec!=999)
			initiald1v.setStrokdec(strokdec);	
		if(stkimag!=999)
			initiald1v.setStkimag(stkimag);	
		if(infnetw!=999)
			initiald1v.setInfnetw(infnetw);	
		if(infwmh!=999)
			initiald1v.setInfwmh(infwmh);	
		if(esstrem!=999)
			initiald1v.setEsstrem(esstrem);
		if(esstreif!=999)
			initiald1v.setEsstreif(esstreif);
		if(downs!=999)
			initiald1v.setDowns(downs);	
		if(downsif!=999)
			initiald1v.setDownsif(downsif);	
		if(hunt!=999)
			initiald1v.setHunt(hunt);
		if(huntif!=999)
			initiald1v.setHuntif(huntif);	
		if(prion!=999)
			initiald1v.setPrion(prion);
		if(prionif!=999)
			initiald1v.setPrionif(prionif);
		model.addAttribute("initiald16", new InitialD1());
		return "initiald16";

		
		/*followupD1service.add(initiald1v);
		return "D1"; */ //- Check out ? 
	}

	
	@RequestMapping(value="/initiald16.do", method=RequestMethod.POST)
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
			initiald1v.setBrnincte(brnincte);
		if(brninj!=999)
			initiald1v.setBrninj(brninj);
		if(brninjif!=999)
			initiald1v.setBrninjif(brninjif);	
		if(hyceph!=999)
			initiald1v.setHyceph(hyceph);	
		if(hycephif!=999)
			initiald1v.setHycephif(hycephif);	
		if(epilep!=999)
			initiald1v.setEpilep(epilep);
		if(epilepif!=999)
			initiald1v.setEpilepif(epilepif);	
		if(neopstat!=999)
			initiald1v.setNeopstat(neopstat);
		if(neop!=999)
			initiald1v.setNeop(neop);
		if(neopif!=999)
			initiald1v.setNeopif(neopif);	
		if(hiv!=999)
			initiald1v.setHiv(hiv);	
		if(hivif!=999)
			initiald1v.setHivif(hivif);
		if(othcog!=999)
			initiald1v.setOthcog(othcog);	
		if(othcogif!=999)
			initiald1v.setOthcogif(othcogif);
		if(deptreat!=999)
			initiald1v.setDeptreat(deptreat);
		if(dep!=999)
			initiald1v.setDep(dep);
		if(depif!=999)
			initiald1v.setDepif(depif);
		if(bipoldx!=999)
			initiald1v.setBipoldx(bipoldx);
		if(schizop!=999)
			initiald1v.setSchizop(schizop);
		if(schizoif!=999)
			initiald1v.setSchizoif(schizoif);
		if(anxiet!=999)
			initiald1v.setAnxiet(anxiet);
		if(anxietif!=999)
			initiald1v.setAnxietif(anxietif);
		if(delir!=999)
			initiald1v.setDelir(delir);
		if(delirif!=999)
			initiald1v.setDelirif(delirif);
		if(ptsddx!=999)
			initiald1v.setPtsddx(ptsddx);
		if(ptsddxif!=999)
			initiald1v.setPtsddxif(ptsddxif);
		if(othpsy!=999)
			initiald1v.setOthpsy(othpsy);
		if(othpsyif!=999)
			initiald1v.setOthpsyif(othpsyif);
		
		model.addAttribute("initiald17", new InitialD1());
		return "initiald17";
	}
	
	@RequestMapping(value="/initiald17.do", method=RequestMethod.POST)
	public String FollowUpVisitD17(Model model,@RequestParam(value="alcdem",required=false, defaultValue="999") int alcdem,@RequestParam(value="alcabuse",required=false, defaultValue="999") int alcabuse,
			@RequestParam(value="alcdemif",required=false, defaultValue="999") int alcdemif,@RequestParam(value="impsub",required=false, defaultValue="999") int impsub,
			@RequestParam(value="impsubif",required=false, defaultValue="999") int impsubif,@RequestParam(value="dysill",required=false, defaultValue="999") int dysill,
			@RequestParam(value="dysillif",required=false, defaultValue="999") int dysillif,@RequestParam(value="meds",required=false, defaultValue="999") int meds,@RequestParam(value="medsif",required=false, defaultValue="999") int medsif)
//				@RequestParam("cogpresent1") int cogpresent1,
//				@RequestParam("NOS1") int NOS1,@RequestParam("cogset1") int cogset1,
//				@RequestParam("cogpresent2") int cogpresent2,@RequestParam("NOS2") int NOS2,
//				@RequestParam("cogset2") int cogset2, 
//				@RequestParam("cogpresent3") int cogpresent3,@RequestParam("NOS3") int NOS3,
//				@RequestParam("cogset3") int cogset3) 
	
	{	  		
		if(alcdem!=999)
			initiald1v.setAlcdem(alcdem);
		if(alcabuse!=999)
			initiald1v.setAlcabuse(alcabuse);
		if(alcdemif!=999)
			initiald1v.setAlcdemif(alcdemif);	
		if(impsub!=999)
			initiald1v.setImpsub(impsub);	
		if(impsubif!=999)
			initiald1v.setImpsubif(impsubif);
		if(dysill!=999)
			initiald1v.setDysill(dysill);
		if(dysillif!=999)
			initiald1v.setDysillif(dysillif);
		if(meds!=999)
			initiald1v.setMeds(meds);
		if(medsif!=999)
			initiald1v.setMedsif(medsif);
	
		initialD1service.add(initiald1v);
		return "D1";
	}
}
