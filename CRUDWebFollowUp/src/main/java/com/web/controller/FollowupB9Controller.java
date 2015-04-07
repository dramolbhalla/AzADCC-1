package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.FollowupB8;
import com.web.model.FollowupB9;
import com.web.service.FollowupB9Service;

@Controller
public class FollowupB9Controller {
	@Autowired
	private FollowupB9Service followupB9service;
	FollowupB9 followupb9v = new FollowupB9();
	
	@RequestMapping("/FollowupB9")
	public String loadFollowupB9(Model model)
	{		
		    model.addAttribute("followupb9", new FollowupB9()); 
			return "followupb9";
	}
	
	@RequestMapping("/FollowupB92")
	public String loadFollowupB92(Model model) {
			return "followupb92";
	}
	@RequestMapping(value="/followupb9.do", method=RequestMethod.POST)
	public String FollowUpVisitB9(Model model,@RequestParam("decsub") int decsub,@RequestParam("decin") int decin,
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
		followupb9v.setDecsub(decsub);
		followupb9v.setDecin(decin);
		followupb9v.setDecclcog(decclcog);
		followupb9v.setCogmem(cogmem);
		followupb9v.setCogori(cogori);
		followupb9v.setCoglang(coglang);
		followupb9v.setCogjudg(cogjudg);
		followupb9v.setCogvis(cogvis);
		followupb9v.setCogattn(cogattn);
		followupb9v.setCogflago(cogflago);
		followupb9v.setCogfluc(cogfluc);
		followupb9v.setCogothr(cogothr);
		followupb9v.setCogothrx(cogothrx);
		model.addAttribute("followupb92", new FollowupB9()); 
		return "followupb92";
	}
	
	@RequestMapping(value="/followupb92.do", method=RequestMethod.POST)
	public String FollowUpVisitB92(Model model,@RequestParam("cogfpred") int cogfpred,@RequestParam("cogfprex") String cogfprex,
			@RequestParam("cogmodex") String cogmodex,@RequestParam("cogmode") int cogmode,
			@RequestParam("decage") int decage,@RequestParam("decclbe") int decclbe,@RequestParam("beapathy") int beapathy,
			@RequestParam("bedep") int bedep,@RequestParam("bevhall") int bevhall,@RequestParam("bevwell") int bevwell,
			@RequestParam("bevhago") int bevhago,@RequestParam("beahall") int beahall,@RequestParam("bedel") int bedel,
			@RequestParam("bedisin") int bedisin,@RequestParam("beirrit") int beirrit
			) 
	
	{
		
		followupb9v.setCogfpred(cogfpred);
		followupb9v.setCogfprex(cogfprex);
		followupb9v.setCogmode(cogmode);
		followupb9v.setCogmodex(cogmodex);
		followupb9v.setDecage(decage);
		followupb9v.setDecclbe(decclbe);
		followupb9v.setBeapathy(beapathy);
		followupb9v.setBedep(bedep);
		followupb9v.setBevhall(bevhall);
		followupb9v.setBevwell(bevwell);
		followupb9v.setBevhago(bevhago);
		followupb9v.setBeahall(beahall);
		followupb9v.setBedel(bedel);
		followupb9v.setBedisin(bedisin);
		followupb9v.setBeirrit(beirrit);
		model.addAttribute("followupb93", new FollowupB9()); 
		return "followupb93";
		
		
	}
	@RequestMapping(value="/followupb93.do", method=RequestMethod.POST)
	public String FollowUpVisitB93(Model model,@RequestParam("beagit") int beagit,@RequestParam("beperch") int beperch,
			@RequestParam("berem") int berem,@RequestParam("beremago") int beremago,@RequestParam("beanx") int beanx,
			@RequestParam("beothr") int beothr,
			@RequestParam("beothrx") String beothrx,
			@RequestParam("befpred") int befpred,
			@RequestParam("befpredx") String befpredx,
			@RequestParam("bemode") int bemode,
			@RequestParam("bemodex") String bemodex,@RequestParam("beage") int beage,@RequestParam("decclmot") int decclmot,@RequestParam("mogait") int mogait,
			@RequestParam("mofalls") int mofalls,@RequestParam("motrem") int motrem,@RequestParam("moslow") int moslow) 
	
	{	  		
		followupb9v.setBeagit(beagit);
		followupb9v.setBeperch(beperch);
		followupb9v.setBerem(berem);
		followupb9v.setBeremago(beremago);
		followupb9v.setBeanx(beanx);
		followupb9v.setBeothr(beothr);
		followupb9v.setBeothrx(beothrx);
		followupb9v.setBefpred(befpred);
		followupb9v.setBefpredx(befpredx);
		followupb9v.setBemode(bemode);
		followupb9v.setBemodex(bemodex);
		followupb9v.setBeage(beage);
		followupb9v.setDecclmot(decclmot);
		followupb9v.setMogait(mogait);
		followupb9v.setMofalls(mofalls);
		followupb9v.setMotrem(motrem);
		followupb9v.setMoslow(moslow);
		model.addAttribute("followupb94", new FollowupB9()); 
		return "followupb94";
	}
	
	@RequestMapping(value="/followupb94.do", method=RequestMethod.POST)
	public String FollowUpVisitB94(Model model,
			@RequestParam("mofrst") int mofrst,
			@RequestParam("momode") int momode,@RequestParam("momodex") String momodex,
			@RequestParam("momopark") int momopark,@RequestParam("parkage") int parkage,
			@RequestParam("momoals") int momoals,@RequestParam("alsage") int alsage,
			@RequestParam("moage") int moage,@RequestParam("course") int course,
			@RequestParam("frstchg") int frstchg) 
	
	{	  		
		followupb9v.setMofrst(mofrst);
		followupb9v.setMomode(momode);
		followupb9v.setMomodex(momodex);
		followupb9v.setMomopark(momopark);
		followupb9v.setParkage(parkage);
		followupb9v.setMomoals(momoals);
		followupb9v.setAlsage(alsage);
		followupb9v.setMoage(moage);
		followupb9v.setCourse(course);
		followupb9v.setFrstchg(frstchg);
		model.addAttribute("followupb95", new FollowupB9()); 
		return "followupb95";
	}
	
	@RequestMapping(value="/followupb95.do", method=RequestMethod.POST)
	public String FollowUpVisitB95(Model model,@RequestParam("lbdeval") int lbdeval,@RequestParam("ftldeval") int ftldeval) 
	
	{	  		
		followupb9v.setLbdeval(lbdeval);
		followupb9v.setFtldeval(ftldeval);	
		followupB9service.add(followupb9v);
		return "B9";
	}

}