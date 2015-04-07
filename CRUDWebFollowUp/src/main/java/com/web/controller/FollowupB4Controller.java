package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.FollowupB4;
import com.web.service.FollowupB4Service;

@Controller
public class FollowupB4Controller {
	@Autowired
	private FollowupB4Service followupB4service;
	FollowupB4 followupb4v = new FollowupB4();
	
	@RequestMapping("/FollowupB4")
	public String loadFollowupB4(Model model)
	{		
			return "followupb4";
	}
	
	@RequestMapping("/FollowupB42")
	public String loadFollowupB42(Model model) {
			return "followupb42";
	}
	@RequestMapping(value="/followupb4.do", method=RequestMethod.POST)
	public String FollowUpVisitB4(Model model,@RequestParam("MemoryLeft") float memory,
			@RequestParam("OLeft") float orient,@RequestParam("JLeft") float judgment , 
			@RequestParam("CLeft") float commun,
			@RequestParam("HLeft") float homehobb,
			@RequestParam("perscare") float perscare,@RequestParam("CDR1") float cdrsum,
			@RequestParam("GCDR") float cdrglob) 
	
	{	  		
		followupb4v.setMemory(memory);
		followupb4v.setOrient(orient);
		followupb4v.setJudgment(judgment);
		followupb4v.setCommun(commun);
		followupb4v.setHomehobb(homehobb);
		followupb4v.setPerscare(perscare);
		followupb4v.setCdrsum(cdrsum);
		followupb4v.setCdrglob(cdrglob);
		return "followupb42";
	}
	
	@RequestMapping(value="/followupb42.do", method=RequestMethod.POST)
	public String FollowUpVisitB42(Model model,@RequestParam("PLeft") float comport,@RequestParam("LLeft") float cdrlang
			) 
	
	{
		System.out.println("Coming here outside if" + (comport));
		followupb4v.setComport(comport);
		followupb4v.setCdrlang(cdrlang);
		followupB4service.add(followupb4v);
		return "B4";
	}

}
