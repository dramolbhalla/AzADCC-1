package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.InitialB5;
import com.web.service.InitialB5Service;

@Controller
public class InitialB5Controller {
	@Autowired
	private InitialB5Service initialB5service;
	InitialB5 initialb5v = new InitialB5();
	
	@RequestMapping("/InitialB5")
	public String loadInitialB5(Model model)
	{
		    model.addAttribute("initialb5", new InitialB5()); 
			return "initialb5";
	}
	
	@RequestMapping("/InitialB52")
	public String loadInitialB52(Model model) {
			return "initialb52";
	}
	@RequestMapping(value="/initialb5.do", method=RequestMethod.POST)
	public String InitialVisitB5(Model model,@RequestParam("npiqinf") int npiqinf,@RequestParam("npiqinfx") String npiqinfx,
			@RequestParam("del") int del,@RequestParam("delsev") int delsev , 
			@RequestParam("hall") int hall,
			@RequestParam("hallsev") int hallsev,
			@RequestParam("agit") int agit,@RequestParam("agitsev") int agitsev,@RequestParam("depd") int depd,
			@RequestParam("depdsev") int depdsev) 
	
	{
		System.out.println("Coming here inside syntax error");
		initialb5v.setNpiqinf(npiqinf);
		//initialb5v.setNpiqinfx(npiqinfx);
		initialb5v.setDel(del);
		initialb5v.setDelsev(delsev);
		initialb5v.setHall(hall);
		initialb5v.setHallsev(hallsev);
		initialb5v.setAgit(agit);
		initialb5v.setAgitsev(agitsev);
		initialb5v.setDepd(depd);
		initialb5v.setDepdsev(depdsev);
		model.addAttribute("initialb52", new InitialB5()); 
		return "initialb52";
	}
	
	@RequestMapping(value="/initialb52.do", method=RequestMethod.POST)
	public String InitialVisitB52(Model model,@RequestParam("anx") int anx,@RequestParam("elat") int elat,
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
		initialb5v.setAnx(anx);
		initialb5v.setElat(elat);
		initialb5v.setElatsev(elatsev);
		initialb5v.setAnxsev(anxsev);
		initialb5v.setApa(apa);
		initialb5v.setApasev(apasev);
		initialb5v.setDisn(disn);
		initialb5v.setDisnsev(disnsev);
		initialb5v.setIrr(irr);
		initialb5v.setIrrsev(irrsev);
		initialb5v.setMot(mot);
		initialb5v.setMotsev(motsev);
		initialb5v.setNite(nite);
		initialb5v.setNitesev(nitesev);
		initialb5v.setApp(app);
		initialb5v.setAppsev(appsev);
		initialB5service.add(initialb5v);
		return "B5";
	}
}