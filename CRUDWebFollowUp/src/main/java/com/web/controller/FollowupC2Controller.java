package com.web.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.FollowupC1;
import com.web.model.FollowupC2;
import com.web.service.FollowupC2Service;

@Controller
public class FollowupC2Controller {
	@Autowired
	private FollowupC2Service followupC2service;
	FollowupC2 followupc2v = new FollowupC2();
	
	@RequestMapping("/FollowupC2")
	public String loadFollowupC2(Model model)
	{		
		model.addAttribute("followupc2", new FollowupC2());	
		return "followupc2";
	}
	
	@RequestMapping("/FollowupC22")
	public String loadFollowupC22(Model model) {
			return "followupc22";
	}
	@RequestMapping(value="/followupc2.do", method=RequestMethod.POST)
	public String FollowUpVisitC2(Model model,@RequestParam("mocacomp") int mocacomp,@RequestParam("mocaloc") int mocaloc,
			@RequestParam("mocalan") int mocalan,@RequestParam("mocavis") int mocavis , 
			@RequestParam("mocahear") int mocahear,
			@RequestParam("mocatots") int mocatots, @RequestParam("mocatrai") int mocatrai,
			@RequestParam("mocacube") int mocacube, @RequestParam("mocacloc") int mocacloc,
			@RequestParam("mocaclon") int mocaclon, @RequestParam("mocacloh") int mocacloh,
			@RequestParam("mocanami") int mocanami, @RequestParam("mocaregi") int mocaregi,
			@RequestParam("mocadigi") int mocadigi, @RequestParam("mocalett") int mocalett
		)
	{	  		
		followupc2v.setMocacomp(mocacomp);
		followupc2v.setMocaloc(mocaloc);
		followupc2v.setMocalan(mocalan);
		followupc2v.setMocavis(mocavis);
		followupc2v.setMocahear(mocahear);
		
		followupc2v.setMocatots(mocatots);
		followupc2v.setMocatrai(mocatrai);
		followupc2v.setMocacube(mocacube);
		followupc2v.setMocacloc(mocacloc);
		followupc2v.setMocaclon(mocaclon);
		followupc2v.setMocacloh(mocacloh);
		followupc2v.setMocanami(mocanami);
		followupc2v.setMocaregi(mocaregi);
		followupc2v.setMocadigi(mocadigi);
		followupc2v.setMocalett(mocalett);	
		model.addAttribute("followupc22", new FollowupC2());	
		return "followupc22";
	}
	
	@RequestMapping(value="/followupc22.do", method=RequestMethod.POST)
	public String FollowUpVisitC22(Model model,@RequestParam("mocaser7") int mocaser7,@RequestParam("mocarepe") int mocarepe,
			@RequestParam("mocaflue") int mocaflue,@RequestParam("mocaabst") int mocaabst,
			@RequestParam("mocarecn") int mocarecn,@RequestParam("mocarecc") int mocarecc,@RequestParam("mocarecr") int mocarecr,
			@RequestParam("mocaordt") int mocaordt,@RequestParam("mocaormo") int mocaormo,@RequestParam("mocaoryr") int mocaoryr,
			@RequestParam("mocaordy") int mocaordy,@RequestParam("mocaorpl") int mocaorpl,@RequestParam("mocaorct") int mocaorct,
			@RequestParam("npsycloc") int npsycloc,@RequestParam("npsylan") int npsylan,
			@RequestParam("craftvrs") int craftvrs,@RequestParam("crafturs") int crafturs,
			@RequestParam("udsbentc") int udsbentc,@RequestParam("digforct") int digforct,
			@RequestParam("digforsl") int digforsl
			) 
	
	{
		
		followupc2v.setMocaser7(mocaser7);
		followupc2v.setMocarepe(mocarepe);
		followupc2v.setMocaflue(mocaflue);
		followupc2v.setMocaabst(mocaabst);
		followupc2v.setMocarecn(mocarecn);
		followupc2v.setMocarecc(mocarecc);
		followupc2v.setMocarecr(mocarecr);
		followupc2v.setMocaordt(mocaordt);
		followupc2v.setMocaormo(mocaormo);
		followupc2v.setMocaoryr(mocaoryr);
		followupc2v.setMocaordy(mocaordy);
		followupc2v.setMocaorpl(mocaorpl);
		followupc2v.setMocaorct(mocaorct);
		followupc2v.setNpsycloc(npsycloc);
		followupc2v.setNpsylan(npsylan);
		
		followupc2v.setCraftvrs(craftvrs);
		followupc2v.setCrafturs(crafturs);
		followupc2v.setUdsbentc(udsbentc);
		followupc2v.setDigforct(digforct);
		followupc2v.setDigforsl(digforsl);



		model.addAttribute("followupc23", new FollowupC2());	
		return "followupc23";
		
		
	}
	@RequestMapping(value="/followupc23.do", method=RequestMethod.POST)
	public String FollowUpVisitC23(Model model,@RequestParam("digbacct") int digbacct,@RequestParam("digbacls") int digbacls,
			@RequestParam("animals") int animals,@RequestParam("veg") int veg,@RequestParam("traila") int traila,
			@RequestParam("trailarr") int trailarr,
			@RequestParam("trailali") int trailali,
			@RequestParam("trailb") int trailb,
			@RequestParam("trailbrr") int trailbrr,
			@RequestParam("trailbli") int trailbli,
			@RequestParam("craftdvr") int craftdvr,@RequestParam("craftdre") int craftdre,
			@RequestParam("craftdti") int craftdti,@RequestParam("craftcue") int craftcue,
			@RequestParam("udsbenrs") int udsbenrs,@RequestParam("udsbentd") int udsbentd) 
	
	{	  		
		followupc2v.setTraila(traila);
		followupc2v.setTrailarr(trailarr);
		followupc2v.setTrailali(trailali);
		followupc2v.setTrailb(trailb);
		followupc2v.setTrailbrr(trailbrr);
		followupc2v.setTrailbli(trailbli);
		followupc2v.setDigbacct(digbacct);
		followupc2v.setDigbacls(digbacls);
		followupc2v.setUdsbentd(udsbentd);
		followupc2v.setUdsbenrs(udsbenrs);
		followupc2v.setAnimals(animals);
		followupc2v.setVeg(veg);
		followupc2v.setCraftdvr(craftdvr);
		followupc2v.setCraftdre(craftdre);
		followupc2v.setCraftdti(craftdti);
		followupc2v.setCraftcue(craftcue);
		model.addAttribute("followupc24", new FollowupC2());	
		return "followupc24";
	}
	
	@RequestMapping(value="/followupc24.do", method=RequestMethod.POST)
	public String FollowUpVisitC24(Model model,
			@RequestParam("cogstat") int cogstat
			) 
	
	{	  		
		followupc2v.setCogstat(cogstat);
		followupC2service.add(followupc2v);
		return "C2"; //return to homepage
	}
	

}