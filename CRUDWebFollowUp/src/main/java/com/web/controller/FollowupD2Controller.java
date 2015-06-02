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

import com.web.model.FollowupB9;
import com.web.model.FollowupD2;
import com.web.service.FollowupD2Service;

@Controller
public class FollowupD2Controller {
	@Autowired
	private FollowupD2Service followupD2service;
	FollowupD2 followupd2v = new FollowupD2();
	
	@RequestMapping("/FollowupD2")
	public String loadFollowupD2(Model model)
	{		
		model.addAttribute("followupd2", new FollowupD2()); 
			return "followupd2";
	}
	
	@RequestMapping("/FollowupD22")
	public String loadFollowupD22(Model model) {
			return "followupd22";
	}
	@RequestMapping(value="/followupd2.do", method=RequestMethod.POST)
	public String FollowUpVisitD2(Model model,@RequestParam("cancer") int cancer,
			@RequestParam("cancsite") int cancsite,@RequestParam("diabet") int diabet , 
			@RequestParam("myoinf") int myoinf,
			@RequestParam("conghrt") int conghrt,
			@RequestParam("afibrill") int afibrill,@RequestParam("hypert") int hypert,
			@RequestParam("angina") int angina,@RequestParam("hypchol") int hypchol,
			@RequestParam("vb12def") int vb12def,@RequestParam("thydis") int thydis) 
	
	{	  		
		followupd2v.setCancer(cancer);
		followupd2v.setCancsite(cancsite);
		followupd2v.setDiabet(diabet);
		followupd2v.setMyoinf(myoinf);
		followupd2v.setConghrt(conghrt);
		followupd2v.setAfibrill(afibrill);
		followupd2v.setHypert(hypert);
		followupd2v.setAngina(angina);
		followupd2v.setHypchol(hypchol);
		followupd2v.setVb12def(vb12def);
		followupd2v.setThydis(thydis);
		model.addAttribute("followupd22", new FollowupD2());
		return "followupd22";
	}
	
	@RequestMapping(value="/followupd22.do", method=RequestMethod.POST)
	public String FollowUpVisitD22(Model model,@RequestParam("arth") int arth,@RequestParam("artype") int artype,
			@RequestParam("artypex") String artypex,
			@RequestParam("artupex") int artupex,@RequestParam("artloex") int artloex,
			@RequestParam("artspin") int artspin,@RequestParam("artunkn") int artunkn,
			@RequestParam("urineinc") int urineinc,@RequestParam("bowlic") int bowlic,
			@RequestParam("sleepap") int sleepap,@RequestParam("remdis") int remdis,
			@RequestParam("hyposom") int hyposom,
			@RequestParam("sleepoth") int sleepoth,
			@RequestParam("sleeptx") int sleeptx,
			@RequestParam("angiocp") int angiocp,
			@RequestParam("angiopci") int angiopci,@RequestParam("pacemake") int pacemake,@RequestParam("hvalve") int hvalve,
			@RequestParam("antienc") int antienc,@RequestParam("antiencx") String antiencx,@RequestParam("othcond") int othcond,@RequestParam("othcondx") String othcondx
			) 
	{
		
		followupd2v.setArth(arth);
		followupd2v.setArtype(artype);
		followupd2v.setArtypex(artypex);
		followupd2v.setArtupex(artupex);
		followupd2v.setArtloex(artloex);
		followupd2v.setArtspin(artspin);
		followupd2v.setArtunkn(artunkn);
		followupd2v.setUrineinc(urineinc);
		followupd2v.setBowlic(bowlic);
		followupd2v.setSleepap(sleepap);
		followupd2v.setRemdis(remdis);
		followupd2v.setHyposom(hyposom);
		followupd2v.setSleepoth(sleepoth);
		followupd2v.setSleeptx(sleeptx);
		followupd2v.setAngiocp(angiocp);
		followupd2v.setAngiopci(angiopci);
		followupd2v.setPacemake(pacemake);
		followupd2v.setHvalve(hvalve);
		followupd2v.setAntienc(antienc);
		followupd2v.setAntiencx(antiencx);
		followupd2v.setOthcond(othcond);
		followupd2v.setOthcondx(othcondx);
		followupD2service.add(followupd2v);
		return "D2";
	}

}

