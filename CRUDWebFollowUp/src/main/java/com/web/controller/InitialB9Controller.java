package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.InitialB9;
import com.web.service.InitialB9Service;

@Controller
public class InitialB9Controller {
	@Autowired
	private InitialB9Service initialB9service;
	InitialB9 initialb9v = new InitialB9();
	
	@RequestMapping("/InitialB9")
	public String loadInitialB9(Model model)
	{		
		    model.addAttribute("initialb9", new InitialB9()); 
			return "initialb9";
	}
	
	@RequestMapping("/InitialB92")
	public String loadInitialB92(Model model) {
			return "initialb92";
	}
	@RequestMapping(value="/initialb9.do", method=RequestMethod.POST)
	public String InitialVisitB9(Model model,@RequestParam("decsub") int decsub,@RequestParam("decin") int decin,
			@RequestParam("decclcog") int decclcog,@RequestParam("cogmem") int cogmem , 
			@RequestParam("cogori") int cogori,
			@RequestParam("coglang") int coglang,
			@RequestParam("cogjudg") int cogjudg,@RequestParam("cogvis") int cogvis,
			@RequestParam("cogattn") int cogattn,
			@RequestParam("cogflago") int cogflago,
			@RequestParam("cogfluc") int cogfluc,
			@RequestParam("cogothrx") String cogothrx ,
			@RequestParam("cogothr") int cogothr)
	{	  		
		initialb9v.setDecsub(decsub);
		initialb9v.setDecin(decin);
		initialb9v.setDecclcog(decclcog);
		initialb9v.setCogmem(cogmem);
		initialb9v.setCogori(cogori);
		initialb9v.setCoglang(coglang);
		initialb9v.setCogjudg(cogjudg);
		initialb9v.setCogvis(cogvis);
		initialb9v.setCogattn(cogattn);
		initialb9v.setCogflago(cogflago);
		initialb9v.setCogfluc(cogfluc);
		initialb9v.setCogothr(cogothr);
		initialb9v.setCogothrx(cogothrx);
		model.addAttribute("initialb92", new InitialB9()); 
		return "initialb92";
	}
	
	@RequestMapping(value="/initialb92.do", method=RequestMethod.POST)
	public String InitialVisitB92(Model model,@RequestParam("cogfpred") int cogfpred,@RequestParam("cogfprex") String cogfprex,
			@RequestParam("cogmodex") String cogmodex,@RequestParam("cogmode") int cogmode,
			@RequestParam("decage") int decage,@RequestParam("decclbe") int decclbe,@RequestParam("beapathy") int beapathy,
			@RequestParam("bedep") int bedep,@RequestParam("bevhall") int bevhall,@RequestParam("bevwell") int bevwell,
			@RequestParam("bevhago") int bevhago,@RequestParam("beahall") int beahall,@RequestParam("bedel") int bedel,
			@RequestParam("bedisin") int bedisin,@RequestParam("beirrit") int beirrit
			) 
	
	{
		
		initialb9v.setCogfpred(cogfpred);
		initialb9v.setCogfprex(cogfprex);
		initialb9v.setCogmode(cogmode);
		initialb9v.setCogmodex(cogmodex);
		initialb9v.setDecage(decage);
		initialb9v.setDecclbe(decclbe);
		initialb9v.setBeapathy(beapathy);
		initialb9v.setBedep(bedep);
		initialb9v.setBevhall(bevhall);
		initialb9v.setBevwell(bevwell);
		initialb9v.setBevhago(bevhago);
		initialb9v.setBeahall(beahall);
		initialb9v.setBedel(bedel);
		initialb9v.setBedisin(bedisin);
		initialb9v.setBeirrit(beirrit);
		model.addAttribute("initialb93", new InitialB9()); 
		return "initialb93";
		
		
	}
	@RequestMapping(value="/initialb93.do", method=RequestMethod.POST)
	public String InitialVisitB93(Model model,@RequestParam("beagit") int beagit,@RequestParam("beperch") int beperch,
			@RequestParam("berem") int berem,@RequestParam("beremago") int beremago,@RequestParam("beanx") int beanx,
			@RequestParam("beothr") int beothr,
			@RequestParam("beothrx") String beothrx,
			@RequestParam("befpred") int befpred,
			@RequestParam("befpredx") String befpredx,
			@RequestParam("bemode") int bemode,
			@RequestParam("bemodex") String bemodex,@RequestParam("beage") int beage,@RequestParam("decclmot") int decclmot,@RequestParam("mogait") int mogait,
			@RequestParam("mofalls") int mofalls,@RequestParam("motrem") int motrem,@RequestParam("moslow") int moslow) 
	
	{	  		
		initialb9v.setBeagit(beagit);
		initialb9v.setBeperch(beperch);
		initialb9v.setBerem(berem);
		initialb9v.setBeremago(beremago);
		initialb9v.setBeanx(beanx);
		initialb9v.setBeothr(beothr);
		initialb9v.setBeothrx(beothrx);
		initialb9v.setBefpred(befpred);
		initialb9v.setBefpredx(befpredx);
		initialb9v.setBemode(bemode);
		initialb9v.setBemodex(bemodex);
		initialb9v.setBeage(beage);
		initialb9v.setDecclmot(decclmot);
		initialb9v.setMogait(mogait);
		initialb9v.setMofalls(mofalls);
		initialb9v.setMotrem(motrem);
		initialb9v.setMoslow(moslow);
		model.addAttribute("initialb94", new InitialB9()); 
		return "initialb94";
	}
	
	@RequestMapping(value="/initialb94.do", method=RequestMethod.POST)
	public String InitialVisitB94(Model model,
			@RequestParam("mofrst") int mofrst,
			@RequestParam("momode") int momode,@RequestParam("momodex") String momodex,
			@RequestParam("momopark") int momopark,@RequestParam("parkage") int parkage,
			@RequestParam("momoals") int momoals,@RequestParam("alsage") int alsage,
			@RequestParam("moage") int moage,@RequestParam("course") int course,
			@RequestParam("frstchg") int frstchg) 
	
	{	  		
		initialb9v.setMofrst(mofrst);
		initialb9v.setMomode(momode);
		initialb9v.setMomodex(momodex);
		initialb9v.setMomopark(momopark);
		initialb9v.setParkage(parkage);
		initialb9v.setMomoals(momoals);
		initialb9v.setAlsage(alsage);
		initialb9v.setMoage(moage);
		initialb9v.setCourse(course);
		initialb9v.setFrstchg(frstchg);
		model.addAttribute("initialb95", new InitialB9()); 
		return "initialb95";
	}
	
	@RequestMapping(value="/initialb95.do", method=RequestMethod.POST)
	public String InitialVisitB95(Model model,@RequestParam("lbdeval") int lbdeval,@RequestParam("ftldeval") int ftldeval) 
	
	{	  		
		initialb9v.setLbdeval(lbdeval);
		initialb9v.setFtldeval(ftldeval);	
		initialB9service.add(initialb9v);
		return "B9";
	}

}