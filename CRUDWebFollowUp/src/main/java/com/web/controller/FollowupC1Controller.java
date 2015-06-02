package com.web.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.FollowupB9;
import com.web.model.FollowupC1;
import com.web.service.FollowupC1Service;

@Controller
public class FollowupC1Controller {
	@Autowired
	private FollowupC1Service followupC1service;
	FollowupC1 followupc1v = new FollowupC1();
	
	@RequestMapping("/FollowupC1")
	public String loadFollowupC1(Model model)
	{		
		model.addAttribute("followupc1", new FollowupC1()); 
			return "followupc1";
	}
	
	@RequestMapping("/FollowupC12")
	public String loadFollowupC12(Model model) {
			return "followupc12";
	}
	@RequestMapping(value="/followupc1.do", method=RequestMethod.POST)
	public String FollowUpVisitC1(Model model,@RequestParam("mmsecomp") int mmsecomp,@RequestParam("mmseloc") int mmseloc,
			@RequestParam("mmselan") int mmselan,@RequestParam("mmsevis") int mmsevis , 
			@RequestParam("mmsehear") int mmsehear
		)
	{	  		
		followupc1v.setMmsecomp(mmsecomp);
		followupc1v.setMmseloc(mmseloc);
		followupc1v.setMmselan(mmselan);
		followupc1v.setMmsevis(mmsevis);
		followupc1v.setMmsehear(mmsehear);
		model.addAttribute("followupc12", new FollowupC1()); 
		return "followupc12";
	}
	
	@RequestMapping(value="/followupc12.do", method=RequestMethod.POST)
	public String FollowUpVisitC12(Model model,@RequestParam("mmseorda") int mmseorda,@RequestParam("mmseorlo") int mmseorlo,
			@RequestParam("pentagon") int pentagon,@RequestParam("mmse") int mmse,
			@RequestParam("npsycloc") int npsycloc,@RequestParam("npsylan") int npsylan,@RequestParam("logimo") int logimo,
			@RequestParam("logiprev") int logiprev,@RequestParam("logimem") int logimem,@RequestParam("udsbentc") int udsbentc,
			@RequestParam("digiflen") int digiflen,@RequestParam("digib") int digib,@RequestParam("digiblen") int digiblen,
			@RequestParam("animals") int animals,@RequestParam("veg") int veg
			) 
	
	{
		
		followupc1v.setMmseorda(mmseorda);
		followupc1v.setMmseorlo(mmseorlo);
		followupc1v.setPentagon(pentagon);
		followupc1v.setMmse(mmse);
		followupc1v.setNpsycloc(npsycloc);
		followupc1v.setNpsylan(npsylan);
		followupc1v.setLogimo(logimo);
		followupc1v.setLogiprev(logiprev);
		followupc1v.setLogimem(logimem);
		followupc1v.setUdsbentc(udsbentc);
		followupc1v.setDigiflen(digiflen);
		followupc1v.setDigib(digib);
		followupc1v.setDigiblen(digiblen);
		followupc1v.setAnimals(animals);
		followupc1v.setVeg(veg);
		model.addAttribute("followupc13", new FollowupC1()); 
		return "followupc13";
		
		
	}
	@RequestMapping(value="/followupc13.do", method=RequestMethod.POST)
	public String FollowUpVisitC13(Model model,@RequestParam("traila") int traila,@RequestParam("trailarr") int trailarr,
			@RequestParam("trailali") int trailali,@RequestParam("trailb") int trailb,@RequestParam("trailbrr") int trailbrr,
			@RequestParam("trailbli") int trailbli,
			@RequestParam("memunits") int memunits,
			@RequestParam("memtime") int memtime,
			@RequestParam("udsbentd") int udsbentd,
			@RequestParam("udsbenrs") int udsbenrs,
			@RequestParam("boston") int boston,@RequestParam("udsverfc") int udsverfc,@RequestParam("udsverfn") int udsverfn,@RequestParam("udsvernf") int udsvernf,
			@RequestParam("udsverlc") int udsverlc,@RequestParam("udsverln") int udsverln,@RequestParam("udsvertn") int udsvertn, 
			@RequestParam("udsverte") int udsverte, @RequestParam("udsverti") int udsverti) 
	
	{	  		
		followupc1v.setTraila(traila);
		followupc1v.setTrailarr(trailarr);
		followupc1v.setTrailali(trailali);
		followupc1v.setTrailb(trailb);
		followupc1v.setTrailbrr(trailbrr);
		followupc1v.setTrailbli(trailbli);
		followupc1v.setMemunits(memunits);
		followupc1v.setMemtime(memtime);
		followupc1v.setUdsbentd(udsbentd);
		followupc1v.setUdsbenrs(udsbenrs);
		followupc1v.setBoston(boston);
		followupc1v.setUdsverfc(udsverfc);
		followupc1v.setUdsverfn(udsverfn);
		followupc1v.setUdsvernf(udsvernf);
		followupc1v.setUdsverlc(udsverlc);
		followupc1v.setUdsverln(udsverln);
		followupc1v.setUdsvertn(udsvertn);
		followupc1v.setUdsverte(udsverte);
		followupc1v.setUdsverti(udsverti);
		model.addAttribute("followupc14", new FollowupC1()); 
		return "followupc14";
	}
	
	@RequestMapping(value="/followupc14.do", method=RequestMethod.POST)
	public String FollowUpVisitC14(Model model,
			@RequestParam("cogstat") int cogstat
			) 
	
	{	  		
		followupc1v.setCogstat(cogstat);
		followupC1service.add(followupc1v);
		return "C1"; //return to homepage
	}
	

}