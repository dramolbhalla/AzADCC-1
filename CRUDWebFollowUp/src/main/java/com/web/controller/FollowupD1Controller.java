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
			@RequestParam("demented") int demented)
	{	  		
		followupd1v.setDxmethod(dxmethod);
		followupd1v.setNormcog(normcog);
		followupd1v.setDemented(demented);
		model.addAttribute("followupd12", new FollowupD1());
		return "followupd12";
	}
	
	@RequestMapping(value="/followupd12.do", method=RequestMethod.POST)
	public String FollowUpVisitD12(Model model,@RequestParam("amndem") int amndem,@RequestParam("pca") int pca,
			@RequestParam("ppasyn") int ppasyn,@RequestParam("ppasynt") int ppasynt,
			@RequestParam("ftdsyn") int ftdsyn,@RequestParam("lbdsyn") int lbdsyn,@RequestParam("namndem") int namndem,
			@RequestParam("mciamem") int mciamem,@RequestParam("mciaplus") int mciaplus,@RequestParam("mciaplan") int mciaplan,
			@RequestParam("mciapatt") int mciapatt,@RequestParam("mciapex") int mciapex,@RequestParam("mciapvis") int mciapvis
			) 
	
	{
		
		followupd1v.setAmndem(namndem);
		followupd1v.setPca(pca);
		followupd1v.setPpasyn(ppasyn);
		followupd1v.setPpasynt(ppasynt);
		followupd1v.setFtdsyn(ftdsyn);
		followupd1v.setLbdsyn(lbdsyn);
		followupd1v.setNamndem(namndem);
		followupd1v.setMciamem(mciamem);
		followupd1v.setMciaplus(mciaplus);
		followupd1v.setMciaplan(mciaplan);
		followupd1v.setMciapatt(mciapatt);
		followupd1v.setMciapex(mciapex);
		followupd1v.setMciapvis(mciapvis);
		model.addAttribute("followupd13", new FollowupD1());
		return "followupd13";
		
		
	}
	@RequestMapping(value="/followupd13.do", method=RequestMethod.POST)
	public String FollowUpVisitD13(Model model,
			@RequestParam("mcinon1") int mcinon1,
			@RequestParam("mcin1lan") int mcin1lan, @RequestParam("mcin1att") int mcin1att,@RequestParam("mcin1ex") int mcin1ex,@RequestParam("mcin1vis") int mcin1vis,
			@RequestParam("mcinon2") int mcinon2,
			@RequestParam("mcin2lan") int mcin2lan, @RequestParam("mcin2att") int mcin2att,@RequestParam("mcin2ex") int mcin2ex,@RequestParam("mcin2vis") int mcin2vis,
			@RequestParam("impnomci") int impnomci,
			@RequestParam("amylpet") int amylpet,
			@RequestParam("amylcsf") int amylcsf,
			@RequestParam("fdgad") int fdgad,@RequestParam("hippatr") int hippatr,@RequestParam("taupetad") int taupetad,@RequestParam("csftau") int csftau,
			@RequestParam("fdgftld") int fdgftld,@RequestParam("tpetftld") int tpetftld,@RequestParam("mrftld") int mrftld,@RequestParam("datscan") int datscan,
			@RequestParam("othbiom") int othbiom,@RequestParam("othbiomx") String othbiomx) 
	
	{	  		
		followupd1v.setMcinon1(mcinon1);
		followupd1v.setMcin1lan(mcin1lan);
		followupd1v.setMcin1att(mcin1att);
		followupd1v.setMcin1ex(mcin1ex);
		followupd1v.setMcin1vis(mcin1vis);
		followupd1v.setMcinon2(mcinon2);
		followupd1v.setMcin2lan(mcin2lan);
		followupd1v.setMcin2att(mcin2att);
		followupd1v.setMcin2ex(mcin2ex);
		followupd1v.setMcin2vis(mcin2vis);
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
		followupd1v.setOthbiomx(othbiomx);
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
			@RequestParam("othmutx") String othmutx,
			@RequestParam("alzdis") int alzdis,@RequestParam("lbdis") int lbdis,@RequestParam("park") int park,
			@RequestParam("msa") int msa,@RequestParam("psp") int psp,@RequestParam("cort") int cort,
			@RequestParam("ftldmo") int ftldmo,@RequestParam("ftldnos") int ftldnos,@RequestParam("ftldsubt") int ftldsubt,
			@RequestParam("ftldsubx") String ftldsubx, @RequestParam("alzdisif") int alzdisif,@RequestParam("lbdif") int lbdif,
			@RequestParam("msaif") int msaif,@RequestParam("pspif") int pspif,@RequestParam("cortif") int cortif,@RequestParam("ftldmoif") int ftldmoif,
			@RequestParam("ftldnoif") int ftldnoif) 
	
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
		followupd1v.setOthmutx(othmutx);
		followupd1v.setAlzdis(alzdis);
		followupd1v.setLbdis(lbdis);
		followupd1v.setPark(park);
		followupd1v.setMsa(msa);
		followupd1v.setPsp(psp);
		followupd1v.setCort(cort);
		
		
		followupd1v.setFtldmo(ftldmo);
		followupd1v.setFtldnos(ftldnos);
		followupd1v.setFtldsubt(ftldsubt);
		followupd1v.setFtldsubx(ftldsubx);
		followupd1v.setAlzdisif(alzdisif);
		followupd1v.setLbdif(lbdif);
		followupd1v.setMsaif(msaif);
		followupd1v.setPspif(pspif);
		followupd1v.setCortif(cortif);
		followupd1v.setFtldmoif(ftldmoif);
		followupd1v.setFtldnoif(ftldnoif);
		model.addAttribute("followupd15", new FollowupD1());
		return "followupd15";
	}
	
	@RequestMapping(value="/followupd15.do", method=RequestMethod.POST)
	public String FollowUpVisitD15(Model model,@RequestParam("cvd") int cvd,@RequestParam("cvdif") int cvdif,
			@RequestParam("prevstk") int prevstk,@RequestParam("strokdec") int strokdec,
			@RequestParam("stkimag") int stkimag,@RequestParam("infnetw") int infnetw,
			@RequestParam("infwmh") int infwmh,@RequestParam("esstrem") int esstrem,
			@RequestParam("esstreif") int esstreif,@RequestParam("downs") int downs,
			@RequestParam("downsif") int downsif,@RequestParam("hunt") int hunt,
			@RequestParam("huntif") int huntif,@RequestParam("prion") int prion,
			@RequestParam("prionif") int prionif) 
	
	{	  		
		followupd1v.setCvd(cvd);
		followupd1v.setCvdif(cvdif);
		followupd1v.setPrevstk(prevstk);	
		followupd1v.setStrokdec(strokdec);	
		followupd1v.setStkimag(stkimag);	
		followupd1v.setInfnetw(infnetw);	
		followupd1v.setInfwmh(infwmh);	
		followupd1v.setEsstrem(esstrem);
		followupd1v.setEsstreif(esstreif);
		followupd1v.setDowns(downs);	
		followupd1v.setDownsif(downsif);	
		followupd1v.setHunt(hunt);
		followupd1v.setHuntif(huntif);	
		followupd1v.setPrion(prion);
		followupd1v.setPrionif(prionif);
		model.addAttribute("followupd16", new FollowupD1());
		return "followupd16";

		
		/*followupD1service.add(followupd1v);
		return "D1"; */ //- Check out ? 
	}

	
	@RequestMapping(value="/followupd16.do", method=RequestMethod.POST)
	public String FollowUpVisitD16(Model model,@RequestParam("brnincte") int brnincte,@RequestParam("brninj") int brninj,
			@RequestParam("brninjif") int brninjif,@RequestParam("hyceph") int hyceph,
			@RequestParam("hycephif") int hycephif,@RequestParam("epilep") int epilep,
			@RequestParam("epilepif") int epilepif,@RequestParam("neopstat") int neopstat,
			@RequestParam("neop") int neop,@RequestParam("neopif") int neopif,
			@RequestParam("hiv") int hiv,@RequestParam("hivif") int hivif,
			@RequestParam("othcog") int othcog,@RequestParam("othcogif") int othcogif,
			@RequestParam("deptreat") int deptreat, 
			@RequestParam("dep") int dep,@RequestParam("depif") int depif,
			@RequestParam("bipoldx") int bipoldx,@RequestParam("bipoldif") int bipoldif,
			@RequestParam("schizop") int schizop,@RequestParam("schizoif") int schizoif,
			@RequestParam("anxiet") int anxiet,@RequestParam("anxietif") int anxietif,
			@RequestParam("delir") int delir,@RequestParam("delirif") int delirif,
			
			@RequestParam("ptsddx") int ptsddx,@RequestParam("ptsddxif") int ptsddxif,
			@RequestParam("othpsy") int othpsy,@RequestParam("othpsyif") int othpsyif
			) 
	
	{	  		
		followupd1v.setBrnincte(brnincte);
		followupd1v.setBrninj(brninj);
		followupd1v.setBrninjif(brninjif);	
		followupd1v.setHyceph(hyceph);	
		followupd1v.setHycephif(hycephif);	
		followupd1v.setEpilep(epilep);
		followupd1v.setEpilepif(epilepif);	
		followupd1v.setNeopstat(neopstat);
		followupd1v.setNeop(neop);
		followupd1v.setNeopif(neopif);	
		followupd1v.setHiv(hiv);	
		followupd1v.setHivif(hivif);
		followupd1v.setOthcog(othcog);	
		followupd1v.setOthcogif(othcogif);
		followupd1v.setDeptreat(deptreat);
		followupd1v.setDep(dep);
		followupd1v.setDepif(depif);
		followupd1v.setBipoldx(bipoldx);
		followupd1v.setSchizop(schizop);
		followupd1v.setSchizoif(schizoif);
		followupd1v.setAnxiet(anxiet);
		followupd1v.setAnxietif(anxietif);
		followupd1v.setDelir(delir);
		followupd1v.setDelirif(delirif);
		
		followupd1v.setPtsddx(ptsddx);
		followupd1v.setPtsddxif(ptsddxif);
		followupd1v.setOthpsy(othpsy);
		followupd1v.setOthpsyif(othpsyif);
		
		model.addAttribute("followupd17", new FollowupD1());
		return "followupd17";
	}
	
	@RequestMapping(value="/followupd17.do", method=RequestMethod.POST)
	public String FollowUpVisitD17(Model model,@RequestParam("alcdem") int alcdem,@RequestParam("alcabuse") int alcabuse,
			@RequestParam("alcdemif") int alcdemif,@RequestParam("cogother") int cogother,
			@RequestParam("cogotherset") int cogotherset,@RequestParam("systemic") int systemic,
			@RequestParam("systemicset") int systemicset,@RequestParam("cogmed") int cogmed,
			@RequestParam("cogmedset") int cogmedset,@RequestParam("cogpresent1") int cogpresent1,
			@RequestParam("NOS1") int NOS1,@RequestParam("cogset1") int cogset1,
			@RequestParam("cogpresent2") int cogpresent2,@RequestParam("NOS2") int NOS2,
			@RequestParam("cogset2") int cogset2, 
			@RequestParam("cogpresent3") int cogpresent3,@RequestParam("NOS3") int NOS3,
			@RequestParam("cogset3") int cogset3) 
	
	{	  		
		followupd1v.setAlcdem(alcdem);
		followupd1v.setAlcabuse(alcabuse);
		followupd1v.setAlcdemif(alcdemif);	
		followupd1v.setImpsub(cogother);	
		followupd1v.setImpsubif(cogotherset);
		followupd1v.setDysill(systemic);
		followupd1v.setDysillif(systemicset);
		followupd1v.setMeds(cogmed);
		followupd1v.setMedsif(cogmedset);
		
		followupD1service.add(followupd1v);
		return "D1";
	}
	
	
	
	
}
