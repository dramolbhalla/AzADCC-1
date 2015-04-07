package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.FollowupB5;
import com.web.service.FollowupB5Service;

@Controller
public class FollowupB5Controller {
	@Autowired
	private FollowupB5Service followupB5service;
	FollowupB5 followupb5v = new FollowupB5();
	
	@RequestMapping("/FollowupB5")
	public String loadFollowupB5(Model model)
	{
		    model.addAttribute("followupb5", new FollowupB5()); 
			return "followupb5";
	}
	
	@RequestMapping("/FollowupB52")
	public String loadFollowupB52(Model model) {
			return "followupb52";
	}
	@RequestMapping(value="/followupb5.do", method=RequestMethod.POST)
	public String FollowUpVisitB5(Model model,@RequestParam("npiqinf") int npiqinf,@RequestParam("npiqinfx") String npiqinfx,
			@RequestParam("del") int del,@RequestParam("delsev") int delsev , 
			@RequestParam("hall") int hall,
			@RequestParam("hallsev") int hallsev,
			@RequestParam("agit") int agit,@RequestParam("agitsev") int agitsev,@RequestParam("depd") int depd,
			@RequestParam("depdsev") int depdsev) 
	
	{
		System.out.println("Coming here inside syntax error");
		followupb5v.setNpiqinf(npiqinf);
		//followupb5v.setNpiqinfx(npiqinfx);
		followupb5v.setDel(del);
		followupb5v.setDelsev(delsev);
		followupb5v.setHall(hall);
		followupb5v.setHallsev(hallsev);
		followupb5v.setAgit(agit);
		followupb5v.setAgitsev(agitsev);
		followupb5v.setDepd(depd);
		followupb5v.setDepdsev(depdsev);
		model.addAttribute("followupb52", new FollowupB5()); 
		return "followupb52";
	}
	
	@RequestMapping(value="/followupb52.do", method=RequestMethod.POST)
	public String FollowUpVisitB52(Model model,@RequestParam("anx") int anx,@RequestParam("elat") int elat,
			@RequestParam("apa") int apa,@RequestParam("disn") int disn , 
			@RequestParam("irr") int irr,
			@RequestParam("mot") int mot,
			@RequestParam("nite") int nite,@RequestParam("app") int app,@RequestParam("anxsev") int anxsev,
			@RequestParam("elatsev") int elatsev,@RequestParam("apasev") int apasev,@RequestParam("disnsev") int disnsev,
			@RequestParam("irrsev") int irrsev,@RequestParam("motsev") int motsev,@RequestParam("nitesev") int nitesev,
			@RequestParam("appsev") int appsev
			) 
	
	{
		System.out.println("Coming here inside syntax error 222");
		followupb5v.setAnx(anx);
		followupb5v.setElat(elat);
		followupb5v.setElatsev(elatsev);
		followupb5v.setAnxsev(anxsev);
		followupb5v.setApa(apa);
		followupb5v.setApasev(apasev);
		followupb5v.setDisn(disn);
		followupb5v.setDisnsev(disnsev);
		followupb5v.setIrr(irr);
		followupb5v.setIrrsev(irrsev);
		followupb5v.setMot(mot);
		followupb5v.setMotsev(motsev);
		followupb5v.setNite(nite);
		followupb5v.setNitesev(nitesev);
		followupb5v.setApp(app);
		followupb5v.setAppsev(appsev);
		followupB5service.add(followupb5v);
		return "B5";
	}
}