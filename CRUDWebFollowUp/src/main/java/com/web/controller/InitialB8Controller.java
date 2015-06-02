package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.InitialB8;
import com.web.service.InitialB8Service;

@Controller
public class InitialB8Controller {
	@Autowired
	private InitialB8Service initialB8service;
	InitialB8 initialb8v = new InitialB8();
	
	@RequestMapping("/InitialB8")
	public String loadInitialB8(Model model)
	{		
		    model.addAttribute("initialb8", new InitialB8()); 
			return "initialb8";
	}
	
	@RequestMapping("/InitialB82")
	public String loadInitialB82(Model model) {
			return "initialb82";
	}
	@RequestMapping(value="/initialb8.do", method=RequestMethod.POST)
	public String FollowUpVisitB8(Model model,@RequestParam("normexam") int normexam,@RequestParam("parksign") int parksign,
			@RequestParam("resttrl") int resttrl,@RequestParam("resttrr") int resttrr , 
			@RequestParam("slowingl") int slowingl,
			@RequestParam("slowingr") int slowingr,
			@RequestParam("rigidl") int rigidl,@RequestParam("rigidr") int rigidr) 
	
	{	  		
		initialb8v.setNormexam(normexam);
		initialb8v.setParksign(parksign);
		initialb8v.setResttrl(resttrl);
		initialb8v.setResttrr(resttrr);
		initialb8v.setSlowingl(slowingl);
		initialb8v.setSlowingr(slowingr);
		initialb8v.setRigidl(rigidl);
		initialb8v.setRigidr(rigidr);
		model.addAttribute("initialb82", new InitialB8()); 
		return "initialb82";
	}
	
	@RequestMapping(value="/initialb82.do", method=RequestMethod.POST)
	public String FollowUpVisitB82(Model model,@RequestParam("cvdsigns") int cvdsigns,@RequestParam("cortdef") int cortdef,
			@RequestParam("sivdfind") int sivdfind,@RequestParam("cvdmotl") int cvdmotl , 
			@RequestParam("cvdmotr") int cvdmotr,
			@RequestParam("cortvisl") int cortvisl,
			@RequestParam("cortvisr") int cortvisr,@RequestParam("somatl") int somatl,@RequestParam("somatr") int somatr,
			@RequestParam("postcort") int postcort,@RequestParam("pspcbs") int pspcbs,@RequestParam("eyepsp") int eyepsp,
			@RequestParam("dyspsp") int dyspsp,@RequestParam("axialpsp") int axialpsp,@RequestParam("gaitpsp") int gaitpsp,
			@RequestParam("apraxsp") int apraxsp,@RequestParam("apraxl") int apraxl,
			@RequestParam("apraxr") int apraxr,@RequestParam("cortsenl") int cortsenl,@RequestParam("cortsenr") int cortsenr,
			@RequestParam("ataxl") int ataxl,@RequestParam("ataxr") int ataxr,@RequestParam("alienlml") int alienlml,
			@RequestParam("alienlmr") int alienlmr,@RequestParam("dystonl") int dystonl,@RequestParam("dystonr") int dystonr,
			@RequestParam("myocllt") int myocllt,@RequestParam("myoclrt") int myoclrt
			) 
	
	{
		
		initialb8v.setCvdsigns(cvdsigns);
		initialb8v.setCortdef(cortdef);
		initialb8v.setSivdfind(sivdfind);
		initialb8v.setCvdmotl(cvdmotl);
		initialb8v.setCvdmotr(cvdmotr);
		initialb8v.setCortvisl(cortvisl);
		initialb8v.setCortvisr(cortvisr);
		initialb8v.setSomatl(somatl);
		initialb8v.setSomatr(somatr);
		initialb8v.setPostcort(postcort);
		initialb8v.setPspcbs(pspcbs);
		initialb8v.setEyepsp(eyepsp);
		initialb8v.setDyspsp(dyspsp);
		initialb8v.setAxialpsp(axialpsp);
		initialb8v.setGaitpsp(gaitpsp);
		initialb8v.setApraxsp(apraxsp);
		initialb8v.setApraxl(apraxl);
		initialb8v.setApraxr(apraxr);
		initialb8v.setCortsenl(cortsenl);
		initialb8v.setCortsenr(cortsenr);
		initialb8v.setAtaxl(ataxl);
		initialb8v.setAtaxr(ataxr);
		initialb8v.setAlienlml(alienlml);
		initialb8v.setAlienlmr(alienlmr);
		initialb8v.setDystonl(dystonl);
		initialb8v.setDystonr(dystonr);
		initialb8v.setMyocllt(myocllt);
		initialb8v.setMyoclrt(myoclrt);
		model.addAttribute("initialb83", new InitialB8()); 
		return "initialb83";
		
		
	}
	@RequestMapping(value="/initialb83.do", method=RequestMethod.POST)
	public String FollowUpVisitB83(Model model,@RequestParam("othneur") int othneur,@RequestParam("alsfind") int alsfind,
			@RequestParam("gaitnph") int gaitnph,@RequestParam("othneurx") String othneurx ) 
	
	{	  		
		initialb8v.setOthneurx(othneurx);
		initialb8v.setGaitnph(gaitnph);
		initialb8v.setAlsfind(alsfind);
		initialb8v.setOthneur(othneur);
		initialB8service.add(initialb8v);
		return "B8";
	}
}