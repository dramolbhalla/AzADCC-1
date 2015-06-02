package com.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.model.InitialA1;
import com.web.service.InitialA1Service;


@Controller
public class InitialA1Controller {
	@Autowired
	private InitialA1Service initialA1service;
	InitialA1 initiala1v = new InitialA1();
	
	@RequestMapping("/InitialA1")
	public String loadInitialA1(Model model)
	{		
		model.addAttribute("initiala1", new InitialA1()); 
		return "initiala1";
	}
	
	@RequestMapping("/InitialA11")
	public String loadInitialA11(Model model) {
			return "initiala11";
	}
	@RequestMapping(value="/initiala1.do", method=RequestMethod.POST)
	public String InitialVisitA1(Model model,@RequestParam("reason") int reason,
			@RequestParam("refersc") int refersc,@RequestParam("learned") int learned , 
			@RequestParam("prestat") int prestat,
			@RequestParam("prespart") int prespart,
			@RequestParam("sourcenw") int sourcenw) 
	
	{	  		
		initiala1v.setReason(reason);
		initiala1v.setRefersc(refersc);
		initiala1v.setLearned(learned);
		initiala1v.setPrestat(prestat);;
		initiala1v.setPrespart(prespart);
		initiala1v.setSourcenw(sourcenw);
		model.addAttribute("initiala12", new InitialA1()); 
		return "initiala12";
	}
	
	@RequestMapping(value="/initiala12.do", method=RequestMethod.POST)
	public String InitialVisitA12(Model model,@RequestParam("birthmo") int birthmo,@RequestParam("birthyr") int birthyr,
			@RequestParam("sex") int sex,
			@RequestParam("hispanic") int hispanic,@RequestParam("hispor") int hispor,
			@RequestParam("hisporx") String hisporx,@RequestParam("race") int race,
			@RequestParam("racex") String racex,@RequestParam("racesec") int racesec,
			@RequestParam("racesecx") String racesecx,@RequestParam("raceter") int raceter,
			@RequestParam("raceterx") String raceterx) 
	
	{
		
		initiala1v.setBirthmo(birthmo);
		initiala1v.setBirthyr(birthyr);
		initiala1v.setSex(sex);
		initiala1v.setHispanic(hispanic);
		initiala1v.setHispor(hispor);
		initiala1v.setHisporx(hisporx);
		initiala1v.setRace(race);
		initiala1v.setRacex(racex);
		initiala1v.setRacesec(racesec);
		initiala1v.setRacesecx(racesecx);
		initiala1v.setRaceter(raceter);
		initiala1v.setRaceterx(raceterx);
		model.addAttribute("initiala13", new InitialA1()); 
		return "initiala13";
	}
	
	@RequestMapping(value="/initiala13.do", method=RequestMethod.POST)
	public String InitialVisitA13(Model model,@RequestParam("primlang") int primlang,@RequestParam("primlanx") String primlanx,
			@RequestParam("educ") int educ,
			@RequestParam("maristat") int maristat,@RequestParam("livsitua") int livsitua,
			@RequestParam("independ") int independ,@RequestParam("residenc") int residenc,
			@RequestParam("zip") String zip,@RequestParam("handed") int handed) 
	
	{
		
		initiala1v.setPrimlang(primlang);
		initiala1v.setPrimlanx(primlanx);
		initiala1v.setEduc(educ);
		initiala1v.setMaristat(maristat);
		initiala1v.setLivsitua(livsitua);
		initiala1v.setIndepend(independ);
		initiala1v.setResidenc(residenc);
		initiala1v.setZip(zip);
		initiala1v.setHanded(handed);			
		initialA1service.add(initiala1v);
		return "A1";
	}

}
