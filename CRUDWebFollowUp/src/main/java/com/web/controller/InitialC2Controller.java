package com.web.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.InitialC2;
import com.web.service.InitialC2Service;

@Controller
public class InitialC2Controller {
	@Autowired
	private InitialC2Service initialC2service;
	InitialC2 initialc2v = new InitialC2();
	
	@RequestMapping("/InitialC2")
	public String loadInitialC2(Model model)
	{		
		model.addAttribute("initialc2", new InitialC2());	
		return "initialc2";
	}
	
	@RequestMapping("/InitialC22")
	public String loadInitialC22(Model model) {
			return "initialc22";
	}
	@RequestMapping(value="/initialc2.do", method=RequestMethod.POST)
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
		initialc2v.setMocacomp(mocacomp);
		initialc2v.setMocaloc(mocaloc);
		initialc2v.setMocalan(mocalan);
		initialc2v.setMocavis(mocavis);
		initialc2v.setMocahear(mocahear);
		
		initialc2v.setMocatots(mocatots);
		initialc2v.setMocatrai(mocatrai);
		initialc2v.setMocacube(mocacube);
		initialc2v.setMocacloc(mocacloc);
		initialc2v.setMocaclon(mocaclon);
		initialc2v.setMocacloh(mocacloh);
		initialc2v.setMocanami(mocanami);
		initialc2v.setMocaregi(mocaregi);
		initialc2v.setMocadigi(mocadigi);
		initialc2v.setMocalett(mocalett);	
		model.addAttribute("initialc22", new InitialC2());	
		return "initialc22";
	}
	
	@RequestMapping(value="/initialc22.do", method=RequestMethod.POST)
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
		
		initialc2v.setMocaser7(mocaser7);
		initialc2v.setMocarepe(mocarepe);
		initialc2v.setMocaflue(mocaflue);
		initialc2v.setMocaabst(mocaabst);
		initialc2v.setMocarecn(mocarecn);
		initialc2v.setMocarecc(mocarecc);
		initialc2v.setMocarecr(mocarecr);
		initialc2v.setMocaordt(mocaordt);
		initialc2v.setMocaormo(mocaormo);
		initialc2v.setMocaoryr(mocaoryr);
		initialc2v.setMocaordy(mocaordy);
		initialc2v.setMocaorpl(mocaorpl);
		initialc2v.setMocaorct(mocaorct);
		initialc2v.setNpsycloc(npsycloc);
		initialc2v.setNpsylan(npsylan);
		
		initialc2v.setCraftvrs(craftvrs);
		initialc2v.setCrafturs(crafturs);
		initialc2v.setUdsbentc(udsbentc);
		initialc2v.setDigforct(digforct);
		initialc2v.setDigforsl(digforsl);



		model.addAttribute("initialc23", new InitialC2());	
		return "initialc23";
		
		
	}
	@RequestMapping(value="/initialc23.do", method=RequestMethod.POST)
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
		initialc2v.setTraila(traila);
		initialc2v.setTrailarr(trailarr);
		initialc2v.setTrailali(trailali);
		initialc2v.setTrailb(trailb);
		initialc2v.setTrailbrr(trailbrr);
		initialc2v.setTrailbli(trailbli);
		initialc2v.setDigbacct(digbacct);
		initialc2v.setDigbacls(digbacls);
		initialc2v.setUdsbentd(udsbentd);
		initialc2v.setUdsbenrs(udsbenrs);
		initialc2v.setAnimals(animals);
		initialc2v.setVeg(veg);
		initialc2v.setCraftdvr(craftdvr);
		initialc2v.setCraftdre(craftdre);
		initialc2v.setCraftdti(craftdti);
		initialc2v.setCraftcue(craftcue);
		model.addAttribute("initialc24", new InitialC2());	
		return "initialc24";
	}
	
	@RequestMapping(value="/initialc24.do", method=RequestMethod.POST)
	public String FollowUpVisitC24(Model model,
			@RequestParam("cogstat") int cogstat
			) 
	
	{	  		
		initialc2v.setCogstat(cogstat);
		initialC2service.add(initialc2v);
		return "C2"; //return to homepage
	}
	

}