package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.InitialB4;
import com.web.service.InitialB4Service;

@Controller
public class InitialB4Controller {
	@Autowired
	private InitialB4Service initialB4service;
	InitialB4 initialb4v = new InitialB4();
	
	@RequestMapping("/InitialB4")
	public String loadInitialB4(Model model)
	{		
			return "initialb4";
	}
	
	@RequestMapping("/InitialB42")
	public String loadInitialB42(Model model) {
			return "initialb42";
	}
	@RequestMapping(value="/initialb4.do", method=RequestMethod.POST)
	public String InitialVisitB4(Model model,@RequestParam("MemoryLeft") float memory,
			@RequestParam("OLeft") float orient,@RequestParam("JLeft") float judgment , 
			@RequestParam("CLeft") float commun,
			@RequestParam("HLeft") float homehobb,
			@RequestParam("perscare") float perscare,@RequestParam("CDR1") float cdrsum,
			@RequestParam("GCDR") float cdrglob) 
	
	{	  		
		initialb4v.setMemory(memory);
		initialb4v.setOrient(orient);
		initialb4v.setJudgment(judgment);
		initialb4v.setCommun(commun);
		initialb4v.setHomehobb(homehobb);
		initialb4v.setPerscare(perscare);
		initialb4v.setCdrsum(cdrsum);
		initialb4v.setCdrglob(cdrglob);
		return "initialb42";
	}
	
	@RequestMapping(value="/initialb42.do", method=RequestMethod.POST)
	public String InitialVisitB42(Model model,@RequestParam("PLeft") float comport,@RequestParam("LLeft") float cdrlang
			) 
	
	{
		System.out.println("Coming here outside if" + (comport));
		initialb4v.setComport(comport);
		initialb4v.setCdrlang(cdrlang);
		initialB4service.add(initialb4v);
		return "B4";
	}

}
