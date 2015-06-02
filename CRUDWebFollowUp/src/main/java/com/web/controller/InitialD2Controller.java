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

import com.web.model.InitialD2;
import com.web.service.InitialD2Service;

@Controller
public class InitialD2Controller {
	@Autowired
	private InitialD2Service initialD2service;
	InitialD2 initiald2v = new InitialD2();
	
	@RequestMapping("/InitialD2")
	public String loadInitialD2(Model model)
	{		
		model.addAttribute("initiald2", new InitialD2()); 
			return "initiald2";
	}
	
	@RequestMapping("/InitialD22")
	public String loadInitialD22(Model model) {
			return "initiald22";
	}
	@RequestMapping(value="/initiald2.do", method=RequestMethod.POST)
	public String FollowUpVisitD2(Model model,@RequestParam("cancer") int cancer,
			@RequestParam(value = "cancsite",required=false, defaultValue="999") int cancsite,@RequestParam("diabet") int diabet , 
			@RequestParam("myoinf") int myoinf,
			@RequestParam("conghrt") int conghrt,
			@RequestParam("afibrill") int afibrill,@RequestParam("hypert") int hypert,
			@RequestParam("angina") int angina,@RequestParam("hypchol") int hypchol,
			@RequestParam("vb12def") int vb12def,@RequestParam("thydis") int thydis) 
	
	{	  		
		initiald2v.setCancer(cancer);
		initiald2v.setCancsite(cancsite);
		initiald2v.setDiabet(diabet);
		initiald2v.setMyoinf(myoinf);
		initiald2v.setConghrt(conghrt);
		initiald2v.setAfibrill(afibrill);
		initiald2v.setHypert(hypert);
		initiald2v.setAngina(angina);
		initiald2v.setHypchol(hypchol);
		initiald2v.setVb12def(vb12def);
		initiald2v.setThydis(thydis);
		model.addAttribute("initiald22", new InitialD2());
		return "initiald22";
	}
	
	@RequestMapping(value="/initiald22.do", method=RequestMethod.POST)
	public String FollowUpVisitD22(Model model,@RequestParam("arth") int arth,@RequestParam("artype") int artype,
			@RequestParam(value="artypex" ,required=false, defaultValue="default") String artypex,
			@RequestParam(value = "artupex" ,required=false, defaultValue="default") int artupex,
			@RequestParam(value = "artloex" ,required=false, defaultValue="default") int artloex,
			@RequestParam(value = "artspin",required=false, defaultValue="default") int artspin,
			@RequestParam(value = "artunkn",required=false, defaultValue="default") int artunkn,
			@RequestParam("urineinc") int urineinc,@RequestParam("bowlic") int bowlic,
			@RequestParam("sleepap") int sleepap,@RequestParam("remdis") int remdis,
			@RequestParam("hyposom") int hyposom,
			@RequestParam(value = "sleepoth" ,required=false, defaultValue="999") int sleepoth,
			@RequestParam("sleeptx") int sleeptx,
			@RequestParam("angiocp") int angiocp,
			@RequestParam("angiopci") int angiopci,@RequestParam("pacemake") int pacemake,@RequestParam("hvalve") int hvalve,
			@RequestParam("antienc") int antienc,@RequestParam(value = "antiencx",required=false, defaultValue="default") String antiencx,@RequestParam("othcond") int othcond,@RequestParam(value ="othcondx", required=false, defaultValue="default") String othcondx
			) 
	{
		
		initiald2v.setArth(arth);
		initiald2v.setArtype(artype);
		initiald2v.setArtypex(artypex);
		initiald2v.setArtupex(artupex);
		initiald2v.setArtloex(artloex);
		initiald2v.setArtspin(artspin);
		initiald2v.setArtunkn(artunkn);
		initiald2v.setUrineinc(urineinc);
		initiald2v.setBowlic(bowlic);
		initiald2v.setSleepap(sleepap);
		initiald2v.setRemdis(remdis);
		initiald2v.setHyposom(hyposom);
		initiald2v.setSleepoth(sleepoth);
		initiald2v.setSleeptx(sleeptx);
		initiald2v.setAngiocp(angiocp);
		initiald2v.setAngiopci(angiopci);
		initiald2v.setPacemake(pacemake);
		initiald2v.setHvalve(hvalve);
		initiald2v.setAntienc(antienc);
		initiald2v.setAntiencx(antiencx);
		initiald2v.setOthcond(othcond);
		if(othcond ==1 && othcondx.equalsIgnoreCase("default"))
		initiald2v.setOthcondx(othcondx);
		initialD2service.add(initiald2v);
		return "D2";
	}

}

