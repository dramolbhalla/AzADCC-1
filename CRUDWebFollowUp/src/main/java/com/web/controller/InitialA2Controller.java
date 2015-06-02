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

import com.web.model.InitialA2;
import com.web.service.InitialA2Service;

@Controller
public class InitialA2Controller {
	@Autowired
	private InitialA2Service initialA2service;
	InitialA2 initiala2v = new InitialA2();
	
	@RequestMapping("/InitialA2")
	public String loadInitialA2(Model model)
	{		
		    model.addAttribute("initiala2", new InitialA2()); 
			return "initiala2";
	}
	
	@RequestMapping("/InitialA22")
	public String loadInitialA22(Model model) {
			return "initiala22";
	}
	@RequestMapping(value="/initiala2.do", method=RequestMethod.POST)
	public String InitialVisitA2(Model model,@RequestParam("inbirmo") int inbirmo,
			@RequestParam("inbiryr") int inbiryr,@RequestParam("insex") int insex , 
			@RequestParam("inhisp") int inhisp,
			@RequestParam("inhispor") int inhispor,@RequestParam("inhispox") String inhispox,
			@RequestParam("inrace") int inrace,@RequestParam("inracex") String inracex,
			@RequestParam("inrasec") int inrasec,@RequestParam("inrasecx") String inrasecx) 
	
	{	  		
		initiala2v.setInbirmo(inbirmo);
		initiala2v.setInbiryr(inbiryr);
		initiala2v.setInsex(insex);
		initiala2v.setInhisp(inhisp);
		initiala2v.setInhispor(inhispor);
		initiala2v.setInhispox(inhispox);
		initiala2v.setInrace(inrace);
		initiala2v.setInracex(inracex);
		initiala2v.setInrasec(inrasec);
		initiala2v.setInrasecx(inrasecx);
		model.addAttribute("initiala22", new InitialA2()); 
		return "initiala22";
	}
	
	@RequestMapping(value="/initiala22.do", method=RequestMethod.POST)
	public String InitialVisitA22(Model model,@RequestParam("inrater") int inrater,@RequestParam("inraterx") String inraterx,
			@RequestParam("ineduc") int ineduc,
			@RequestParam("inrelto") int inrelto,@RequestParam("inknown") int inknown,
			@RequestParam("inlivwth") int inlivwth,@RequestParam("invisits") int invisits,
			@RequestParam("incalls") int incalls,@RequestParam("inrely") int inrely) 
	
	{
		System.out.println("Coming here outside if" + (inrelto));
		initiala2v.setInrater(inrater);
		initiala2v.setInraterx(inraterx);
		initiala2v.setIneduc(ineduc);
		initiala2v.setInrelto(inrelto);
		initiala2v.setInknown(inknown);
		initiala2v.setInlivwth(inlivwth);
		initiala2v.setInvisits(invisits);
		initiala2v.setIncalls(incalls);
		initiala2v.setInrely(inrely);
		initialA2service.add(initiala2v);
		return "A2";
	}

}
