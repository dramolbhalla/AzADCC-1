package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.FollowupB5;
import com.web.model.FollowupB8;
import com.web.service.FollowupB8Service;

@Controller
public class FollowupB8Controller {
	@Autowired
	private FollowupB8Service followupB8service;
	FollowupB8 followupb8v = new FollowupB8();
	
	@RequestMapping("/FollowupB8")
	public String loadFollowupB8(Model model)
	{		
		    model.addAttribute("followupb8", new FollowupB8()); 
			return "followupb8";
	}
	
	@RequestMapping("/FollowupB82")
	public String loadFollowupB82(Model model) {
			return "followupb82";
	}
	@RequestMapping(value="/followupb8.do", method=RequestMethod.POST)
	public String FollowUpVisitB8(Model model,@RequestParam("normexam") int normexam,@RequestParam("parksign") int parksign,
			@RequestParam("resttrl") int resttrl,@RequestParam("resttrr") int resttrr , 
			@RequestParam("slowingl") int slowingl,
			@RequestParam("slowingr") int slowingr,
			@RequestParam("rigidl") int rigidl,@RequestParam("rigidr") int rigidr) 
	
	{	  		
		followupb8v.setNormexam(normexam);
		followupb8v.setParksign(parksign);
		followupb8v.setResttrl(resttrl);
		followupb8v.setResttrr(resttrr);
		followupb8v.setSlowingl(slowingl);
		followupb8v.setSlowingr(slowingr);
		followupb8v.setRigidl(rigidl);
		followupb8v.setRigidr(rigidr);
		model.addAttribute("followupb82", new FollowupB8()); 
		return "followupb82";
	}
	
	@RequestMapping(value="/followupb82.do", method=RequestMethod.POST)
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
		
		followupb8v.setCvdsigns(cvdsigns);
		followupb8v.setCortdef(cortdef);
		followupb8v.setSivdfind(sivdfind);
		followupb8v.setCvdmotl(cvdmotl);
		followupb8v.setCvdmotr(cvdmotr);
		followupb8v.setCortvisl(cortvisl);
		followupb8v.setCortvisr(cortvisr);
		followupb8v.setSomatl(somatl);
		followupb8v.setSomatr(somatr);
		followupb8v.setPostcort(postcort);
		followupb8v.setPspcbs(pspcbs);
		followupb8v.setEyepsp(eyepsp);
		followupb8v.setDyspsp(dyspsp);
		followupb8v.setAxialpsp(axialpsp);
		followupb8v.setGaitpsp(gaitpsp);
		followupb8v.setApraxsp(apraxsp);
		followupb8v.setApraxl(apraxl);
		followupb8v.setApraxr(apraxr);
		followupb8v.setCortsenl(cortsenl);
		followupb8v.setCortsenr(cortsenr);
		followupb8v.setAtaxl(ataxl);
		followupb8v.setAtaxr(ataxr);
		followupb8v.setAlienlml(alienlml);
		followupb8v.setAlienlmr(alienlmr);
		followupb8v.setDystonl(dystonl);
		followupb8v.setDystonr(dystonr);
		followupb8v.setMyocllt(myocllt);
		followupb8v.setMyoclrt(myoclrt);
		model.addAttribute("followupb83", new FollowupB8()); 
		return "followupb83";
		
		
	}
	@RequestMapping(value="/followupb83.do", method=RequestMethod.POST)
	public String FollowUpVisitB83(Model model,@RequestParam("othneur") int othneur,@RequestParam("alsfind") int alsfind,
			@RequestParam("gaitnph") int gaitnph,@RequestParam("othneurx") String othneurx ) 
	
	{	  		
		followupb8v.setOthneurx(othneurx);
		followupb8v.setGaitnph(gaitnph);
		followupb8v.setAlsfind(alsfind);
		followupb8v.setOthneur(othneur);
		followupB8service.add(followupb8v);
		return "B8";
	}
}