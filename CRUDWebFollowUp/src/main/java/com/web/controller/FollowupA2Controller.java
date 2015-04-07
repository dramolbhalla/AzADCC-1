package com.web.controller;

import java.util.Map;

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

import com.web.model.FollowupA2;
import com.web.service.FollowupA2Service;

@Controller
public class FollowupA2Controller {
	@Autowired
	private FollowupA2Service followupA2service;
	FollowupA2 followupa2v = new FollowupA2();
	
	@RequestMapping("/FollowupA2")
	public String loadFollowupA2(Model model)
	{		
			return "followupa2";
	}
	
	@RequestMapping("/FollowupA22")
	public String loadFollowupA22(Model model) {
			return "followupa22";
	}
	@RequestMapping(value="/followupa2.do", method=RequestMethod.POST)
	public String FollowUpVisitA2(Model model,@RequestParam("DD") int inbirmo,
			@RequestParam("YY") int inbiryr,@RequestParam("a2sex") int insex , 
			@RequestParam("inhisp") int hispanic,
			@RequestParam("newinf") int newinf,
			@RequestParam("inhispor") int inhispor,@RequestParam("inhispox") String inhispox,
			@RequestParam("inrace") int inrace,@RequestParam("inracex") String inracex,
			@RequestParam("inrasec") int inrasec,@RequestParam("inrasecx") String inrasecx) 
	
	{	  		
		followupa2v.setInbirmo(inbirmo);
		followupa2v.setInbiryr(inbiryr);
		followupa2v.setInsex(insex);
		followupa2v.setNewinf(newinf);
		followupa2v.setInhisp(hispanic);
		followupa2v.setInhispor(inhispor);
		followupa2v.setInhispox(inhispox);
		followupa2v.setInrace(inrace);
		followupa2v.setInracex(inracex);
		followupa2v.setInrasec(inrasec);
		followupa2v.setInrasecx(inrasecx);
		return "followupa22";
	}
	
	@RequestMapping(value="/followupa22.do", method=RequestMethod.POST)
	public String FollowUpVisitA22(Model model,@RequestParam("inrater") int inrater,@RequestParam("inraterx") String inraterx,
			@RequestParam("ineduc") int ineduc,
			@RequestParam("inrelto") int inrelto,@RequestParam("inknown") int inknown,
			@RequestParam("live") int inlivwth,@RequestParam("visit") int invisits,
			@RequestParam("phone") int incalls,@RequestParam("reliable") int inrely) 
	
	{
		System.out.println("Coming here outside if" + (inrelto));
		followupa2v.setInrater(inrater);
		followupa2v.setInraterx(inraterx);
		followupa2v.setIneduc(ineduc);
		followupa2v.setInrelto(inrelto);
		followupa2v.setInknown(inknown);
		followupa2v.setInlivwth(inlivwth);
		followupa2v.setInvisits(invisits);
		followupa2v.setIncalls(incalls);
		followupa2v.setInrely(inrely);
		followupA2service.add(followupa2v);
		return "A2";
	}

}
